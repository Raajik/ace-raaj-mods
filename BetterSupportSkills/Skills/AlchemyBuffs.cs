using System.Collections.Concurrent;
using System.Diagnostics;
using System.Timers;
using ACE.Common;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.Entity;
using ACE.Server.WorldObjects;
using Timer = System.Timers.Timer;

namespace BetterSupportSkills.Skills;

[HarmonyPatchCategory(nameof(Features.AlchemySkill))]
internal static class AlchemyBuffs
{
    [Conditional("DEBUG")]
    private static void DebugLog(string msg)
    {
        ModManager.Log($"[BSS Alchemy] {msg}", ModManager.LogLevel.Info);
    }

    public static bool PrefixPlayerEnterWorld(Player __instance)
    {
        return true;
    }

    public static ConcurrentDictionary<uint, AlchemyState> PlayerAlchemyState = new();

    public class AlchemyState
    {
        public uint? SpellDID { get; set; }
        public PropertyAttribute2nd? BoosterEnum { get; set; }
        public int BoostValue { get; set; }
        public Timer? EchoTimer { get; set; }
        public int EchoesRemaining { get; set; }
    }

    public static void PostfixFoodApplyConsumable(Food __instance, Player player)
    {
        DebugLog($"PostfixFoodApplyConsumable called: {player.Name} used {__instance.Name}");
        
        var settings = PatchClass.Settings;
        if (settings?.EnableAlchemy != true)
            return;

        var alchemySettings = settings.Alchemy;
        if (alchemySettings == null)
            return;

        var skill = player.GetCreatureSkill(Skill.Alchemy);
        if (skill.AdvancementClass < SkillAdvancementClass.Trained)
            return;

        DebugLog($"Potion consumed by {player.Name}: SpellDID={__instance.SpellDID}, Booster={__instance.BoosterEnum}, BoostValue={__instance.BoostValue}");

        uint? spellId = __instance.SpellDID;
        var booster = __instance.BoosterEnum;
        int boostVal = __instance.BoostValue;

        var state = new AlchemyState
        {
            SpellDID = spellId,
            BoosterEnum = booster,
            BoostValue = boostVal
        };

        var id = player.Guid.Full;
        PlayerAlchemyState[id] = state;

        double interval = skill.AdvancementClass == SkillAdvancementClass.Specialized
            ? alchemySettings.EchoIntervalSpecialized
            : alchemySettings.EchoIntervalTrained;

        int maxEchoes = (int)(alchemySettings.EchoDuration / interval);
        state.EchoesRemaining = maxEchoes;

        state.EchoTimer = new Timer(interval * 1000);
        state.EchoTimer.Elapsed += (_, e) => OnEchoTimer(e, player, state);
        state.EchoTimer.AutoReset = true;
        state.EchoTimer.Start();

        var skillWord = skill.AdvancementClass == SkillAdvancementClass.Specialized ? "specialized" : "trained";
        player.SendMessage($"Your {skillWord} Alchemy will echo this potion's effect every {(int)interval} seconds for {alchemySettings.EchoDuration} seconds!");
    }

    private static void OnEchoTimer(ElapsedEventArgs e, Player player, AlchemyState state)
    {
        if (player == null || player.IsDead || state.EchoesRemaining <= 0)
        {
            state.EchoTimer?.Stop();
            state.EchoTimer?.Dispose();
            return;
        }

        if (state.EchoesRemaining <= 0)
        {
            state.EchoTimer?.Stop();
            state.EchoTimer?.Dispose();
            return;
        }

        DebugLog($"Echoing potion effect for {player.Name}, echoes left: {state.EchoesRemaining}");

        if (state.BoosterEnum != PropertyAttribute2nd.Undef && state.BoosterEnum != null)
        {
            ApplyBoostEcho(player, state.BoosterEnum.Value, state.BoostValue);
        }

        if (state.SpellDID != null)
        {
            ApplySpellEcho(player, (int)state.SpellDID.Value);
        }

        state.EchoesRemaining--;

        if (state.EchoesRemaining <= 0)
        {
            state.EchoTimer?.Stop();
            state.EchoTimer?.Dispose();
            var id = player.Guid.Full;
            PlayerAlchemyState.TryRemove(id, out _);
        }
    }

    private static void ApplyBoostEcho(Player player, PropertyAttribute2nd booster, int boostValue)
    {
        var settings = PatchClass.Settings;
        var showMessages = settings?.Alchemy?.ShowEchoMessages ?? true;
        
        var vital = player.GetCreatureVital(booster);
        if (vital == null)
            return;

        var ratingMod = boostValue > 0 ? player.GetHealingRatingMod() : 1.0f;
        var actualBoost = (int)Math.Round(boostValue * ratingMod);
        var vitalChange = (uint)Math.Abs(player.UpdateVitalDelta(vital, actualBoost));

        if (showMessages)
            player.SendMessage($"The potion effect echoed {vitalChange} points of your {booster}.");
    }

    private static void ApplySpellEcho(Player player, int spellDID)
    {
        var settings = PatchClass.Settings;
        var showMessages = settings?.Alchemy?.ShowEchoMessages ?? true;
        
        var spell = new Spell(spellDID);
        if (spell.NotFound)
            return;

        player.TryCastSpell(spell, player, null, tryResist: false);
        
        if (showMessages)
            player.SendMessage($"The potion's magical effect echoes!");
    }

    public static void OnPlayerLogout(Player player)
    {
        var id = player.Guid.Full;
        if (PlayerAlchemyState.TryGetValue(id, out var state))
        {
            state.EchoTimer?.Stop();
            state.EchoTimer?.Dispose();
            PlayerAlchemyState.TryRemove(id, out _);
        }
    }

    public static void PostfixGenerateTreasure(Creature __instance, DamageHistoryInfo killer, Corpse corpse, List<WorldObject> __result)
    {
        if (__result == null)
            return;

        var settings = PatchClass.Settings;
        if (settings?.EnableAlchemy != true)
            return;

        var alchemySettings = settings.Alchemy;
        if (alchemySettings == null)
            return;

        var player = killer?.TryGetPetOwnerOrAttacker() as Player;
        if (player == null)
            return;

        var skill = player.GetCreatureSkill(Skill.Alchemy);
        if (skill.AdvancementClass < SkillAdvancementClass.Trained)
            return;

        var rng = ThreadSafeRandom.Next(0.0f, 1.0f);
        if (rng >= alchemySettings.PotionDropChance)
            return;

        if (__instance?.Biota?.PropertiesCreateList == null)
            return;

        var foodItems = __instance.Biota.PropertiesCreateList
            .Where(i => i.WeenieClassId != 0 && 
                       (((DestinationType)i.DestinationType & DestinationType.Treasure) != 0 || 
                        ((DestinationType)i.DestinationType & DestinationType.Contain) != 0) &&
                        ((DestinationType)i.DestinationType & DestinationType.Wield) == 0)
            .ToList();

        if (!foodItems.Any())
            return;

        int extraRolls = skill.AdvancementClass == SkillAdvancementClass.Specialized
            ? alchemySettings.ExtraPotionRollsSpecialized
            : alchemySettings.ExtraPotionRollsTrained;

        if (extraRolls <= 0)
            return;

        DebugLog($"Alchemy bonus potion: {player.Name} gets {extraRolls} extra rolls");

        var bonusNames = new List<string>();

        for (int i = 0; i < extraRolls; i++)
        {
            var selected = ACE.Server.WorldObjects.Creature.CreateListSelect(foodItems);
            foreach (var item in selected)
            {
                var bonus = WorldObjectFactory.CreateNewWorldObject(item);
                if (bonus != null)
                {
                    bonusNames.Add(bonus.Name);
                    if (corpse != null)
                        corpse.TryAddToInventory(bonus);
                    else
                        __instance.TryAddToInventory(bonus);
                }
            }
        }

        if (bonusNames.Any())
            player.SendMessage($"Your Alchemy knowledge reveals bonus: {string.Join(", ", bonusNames)}!");
        else
            player.SendMessage($"Your Alchemy knowledge reveals bonus loot! ({extraRolls} extra item(s))");
    }
}