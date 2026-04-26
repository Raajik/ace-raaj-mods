using System.Diagnostics;
using System.Linq;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.Network;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

[HarmonyPatchCategory(nameof(Features.ShieldSkill))]
internal static class ShieldThorns
{
    [Conditional("DEBUG")]
    private static void DebugLog(string msg)
    {
        ModManager.Log($"[BSS ShieldThorns] {msg}", ModManager.LogLevel.Debug);
    }

    public static void PostfixCalculateDamage(DamageEvent __result, Creature attacker, Creature defender, WorldObject damageSource)
    {
        DebugLog("PostfixCalculateDamage CALLED");
        
        if (__result == null)
            return;

        var settings = PatchClass.Settings;
        if (settings == null || settings.EnableShield != true)
            return;

        if (defender == null || attacker == null)
            return;

        DebugLog($"DamageEvent: attacker={attacker!.Name}, defender={defender!.Name}, Weapon={__result.Weapon?.GetType().Name}, isSpellProjectile={__result.Weapon is SpellProjectile}, CombatType={__result.CombatType}");

        // Handle pet defenders (Druid pet thorns)
        if (defender is CombatPet pet)
        {
            bool isEvadePet = __result.Evaded;
            bool isBlockPet = __result.ShieldMod < 1.0f && __result.ShieldMod >= 0.0f;
            DruidPetThorns.TryApplyPetThorns(pet, attacker, isEvadePet, isBlockPet);
            return;
        }

        if (defender is not Player playerDefender)
            return;

        var profile = PlayerProfileStore.GetOrCreate(playerDefender.Guid.Full);
        if (!profile.ThornsEnabled)
            return;

        var shieldSkill = playerDefender.GetCreatureSkill(Skill.Shield);
        if (shieldSkill.AdvancementClass < SkillAdvancementClass.Trained)
            return;

        var dfSkill = playerDefender.GetCreatureSkill(Skill.DirtyFighting);
        if (dfSkill.AdvancementClass < SkillAdvancementClass.Trained)
            return;

        var shield = playerDefender.GetEquippedShield();
        
        DebugLog($"Shield check: hasShield={shield != null}");

        if (shield is not null)
        {
            bool hasMagicAbsorbing = shield.GetAbsorbMagicDamage() is not null;
            
            DebugLog($"Magic shield check: hasMagicAbsorbing={hasMagicAbsorbing}");
            
            if (!hasMagicAbsorbing)
            {
                double magicReduction = 0.10;
        if (shieldSkill.AdvancementClass == SkillAdvancementClass.Specialized)
            magicReduction = 0.20;

                bool isSpellProjectile = __result.Weapon is SpellProjectile;
                
                DebugLog($"Magic reduction check: isSpellProjectile={isSpellProjectile}, Damage={__result.Damage}, DamageType={__result.DamageType}");
                
                if (isSpellProjectile && __result.Damage > 0)
                {
                    var damageNegated = (int)(__result.DamageBeforeMitigation * magicReduction);
                    __result.Damage *= (float)(1.0 - magicReduction);
                    __result.DamageMitigated += __result.DamageBeforeMitigation * (float)magicReduction;
                    
                    var skillWord = shieldSkill.AdvancementClass == SkillAdvancementClass.Specialized ? "specialized" : "trained";
                    playerDefender.SendMessage($"({damageNegated} damage negated by {skillWord} Shield skill)");
                }
            }
        }

        bool isEvade = __result.Evaded;
        bool isBlock = __result.ShieldMod < 1.0f && __result.ShieldMod >= 0.0f;

        bool isCrusader = SummoningClasses.GetPlayerClass(playerDefender) == "Crusader";
        var crusaderSettings = PatchClass.Settings?.CombatClasses?.Crusader;
        bool thornsOnAllHits = isCrusader && (crusaderSettings?.ThornsOnAllHits ?? false);

        if (!isEvade && !isBlock && !thornsOnAllHits)
            return;

        double basePercent = 0.025;
        if (shieldSkill.AdvancementClass == SkillAdvancementClass.Specialized)
            basePercent = 0.05;

        double shieldSkillValue = shieldSkill.Current;

        if (shieldSkillValue <= 0)
            return;

        double thornsDamage = shieldSkillValue * basePercent;

        if (isCrusader && crusaderSettings != null && crusaderSettings.ThornsMultiplier > 1.0)
        {
            thornsDamage *= crusaderSettings.ThornsMultiplier;
        }

        ApplyThornsDamage(playerDefender, attacker, thornsDamage, isEvade, isBlock, thornsOnAllHits);
    }

    private static void ApplyThornsDamage(Player defender, Creature attacker, double damageAmount, bool isEvade, bool isBlock, bool onAllHits = false)
    {
        if (attacker == null || attacker.IsDead)
            return;

        var damageType = DamageType.Bludgeon;

        if (damageAmount <= 0)
            return;

        var damageSource = defender;

        try
        {
            var totalDamage = attacker.TakeDamage(damageSource, damageType, (float)damageAmount);

            // Green burst visual on defender
            defender.PlayAnimation(PlayScript.EnchantUpGreen);

            string msg;
            if (onAllHits && !isEvade && !isBlock)
                msg = $"Your crusader's wrath reflects {totalDamage} damage!";
            else
                msg = isEvade
                    ? $"Your shield thorns reflect {totalDamage} damage from the evaded attack!"
                    : $"Your shield thorns reflect {totalDamage} damage from the blocked attack!";

            defender.SendMessage(msg);

            DebugLog($"Shield thorns dealt {totalDamage} to {attacker.Name} (evade:{isEvade}, block:{isBlock}, allHits:{onAllHits}, amount:{damageAmount})");
        }
        catch (Exception ex)
        {
            DebugLog($"Failed to apply shield thorns damage: {ex.Message}");
        }
    }

    public static void PostfixSpellProjectileCalculateDamage(SpellProjectile __instance, WorldObject source, Creature target, ref bool criticalHit, ref bool critDefended, ref bool overpower, ref float? __result)
    {
        if (__result == null || __result <= 0)
            return;

        if (target is not Player playerDefender)
            return;

        var settings = PatchClass.Settings;
        if (settings == null || settings.EnableShield != true)
            return;

        var shieldSkill = playerDefender.GetCreatureSkill(Skill.Shield);
        if (shieldSkill.AdvancementClass < SkillAdvancementClass.Trained)
            return;

        var shield = playerDefender.GetEquippedShield();
        if (shield == null)
            return;

        bool hasMagicAbsorbing = shield.GetAbsorbMagicDamage() != null;
        if (hasMagicAbsorbing)
            return;

        double magicReduction = 0.10;
        if (shieldSkill.AdvancementClass == SkillAdvancementClass.Specialized)
            magicReduction = 0.20;

        float damageValue = __result ?? 0;
        float damageNegated = damageValue * (float)magicReduction;
        
        __result = damageValue - damageNegated;
        
        var skillWord = shieldSkill.AdvancementClass == SkillAdvancementClass.Specialized ? "specialized" : "trained";
        playerDefender.SendMessage($"({(int)damageNegated} damage negated by {skillWord} Shield skill)");
    }

    [CommandHandler("thorns", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, 0,
        "Toggle shield thorns reflection damage on or off.",
        "Usage: /thorns")]
    public static void HandleThorns(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player)
            return;

        var profile = PlayerProfileStore.GetOrCreate(player.Guid.Full);
        profile.ThornsEnabled = !profile.ThornsEnabled;
        PlayerProfileStore.Save(player.Guid.Full, profile);

        string state = profile.ThornsEnabled ? "ON" : "OFF";
        player.SendMessage($"Shield thorns: {state}", ChatMessageType.System);
    }
}