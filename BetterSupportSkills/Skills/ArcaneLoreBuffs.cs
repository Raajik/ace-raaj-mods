using System.Diagnostics;
using System.Collections.Concurrent;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.Entity.Actions;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

[HarmonyPatchCategory(nameof(Features.ArcaneLoreSkill))]
internal static class ArcaneLoreBuffs
{
    [ThreadStatic]
    static bool _isInArcaneLoreEcho;

    [ThreadStatic]
    static int _echoChainDepth;

    // Adaptation state: playerGuid -> (damageType -> (expiry, reductionPercent))
    static readonly ConcurrentDictionary<uint, ConcurrentDictionary<DamageType, (DateTime Expiry, float Reduction)>> _adaptations = new();

    [Conditional("DEBUG")]
    private static void DebugLog(string msg)
    {
        ModManager.Log($"[BSS ArcaneLore] {msg}", ModManager.LogLevel.Debug);
    }

    public static void OnPlayerLogin(Player player) { }
    public static void OnPlayerWorldOpen(Player player) { }

    public static bool PrefixPlayerEnterWorld(Player __instance)
    {
        return true;
    }

    /// <summary>
    /// Returns true if the Life Magic spell is allowed to echo.
    /// Whitelist: Hecatomb, Drain, Harm, Heal, Revitalize, Infuse.
    /// </summary>
    static bool IsLifeMagicEchoAllowed(Spell spell)
    {
        if (spell.School != MagicSchool.LifeMagic)
            return true; // non-Life = allow (handled by other filters)

        var name = spell.Name ?? "";
        if (name.Contains("Hecatomb", StringComparison.OrdinalIgnoreCase)) return true;
        if (name.Contains("Drain", StringComparison.OrdinalIgnoreCase)) return true;
        if (name.Contains("Harm", StringComparison.OrdinalIgnoreCase)) return true;
        if (name.Contains("Heal", StringComparison.OrdinalIgnoreCase)) return true;
        if (name.Contains("Revitalize", StringComparison.OrdinalIgnoreCase)) return true;
        if (name.Contains("Infuse", StringComparison.OrdinalIgnoreCase)) return true;

        return false; // skip all other Life Magic (regen, self-buffs, etc.)
    }

    /// <summary>
    /// Casts a spell on target, snapshotting and restoring caster vitals for Hecatomb spells.
    /// </summary>
    static void TryCastSpellWithVitalSnapshot(Player player, Spell spell, Creature target)
    {
        var isHecatomb = spell.Name?.Contains("Hecatomb", StringComparison.OrdinalIgnoreCase) == true;

        uint? preHealth = null, preStamina = null, preMana = null;
        if (isHecatomb)
        {
            preHealth = player.Health.Current;
            preStamina = player.Stamina.Current;
            preMana = player.Mana.Current;
        }

        player.TryCastSpell(spell, target);

        if (isHecatomb && preHealth.HasValue)
        {
            player.UpdateVital(player.Health, preHealth.Value);
            player.UpdateVital(player.Stamina, preStamina!.Value);
            player.UpdateVital(player.Mana, preMana!.Value);
            DebugLog($"Hecatomb vital snapshot restored for {player.Name}");
        }
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(WorldObject), "HandleCastSpell", new Type[] {
        typeof(Spell), typeof(WorldObject), typeof(WorldObject), typeof(WorldObject), typeof(bool), typeof(bool), typeof(bool) })]
    public static void PostHandleCastSpellEcho(Spell spell, WorldObject target, WorldObject? itemCaster = null,
        WorldObject? weapon = null, bool isWeaponSpell = false, bool fromProc = false, bool equip = false, WorldObject? __instance = null)
    {
        if (_isInArcaneLoreEcho)
            return;

        _isInArcaneLoreEcho = true;
        try
        {
            if (BssAutoCaster.IsInAutoCast)
                return;

            if (__instance is not Player player)
                return;

            if (spell == null)
                return;

            var settings = PatchClass.Settings;
            if (settings?.EnableArcaneLore != true)
                return;

            // Skip self-targeted beneficial spells (buffs, recalls on self, etc.)
            if (spell.IsSelfTargeted && spell.IsBeneficial)
                return;

            // Skip portal/recall spells entirely
            if (spell.IsPortalSpell)
                return;

            // Only echo harmful spells
            if (!spell.IsHarmful)
                return;

            // Life Magic whitelist
            if (!IsLifeMagicEchoAllowed(spell))
                return;

            var skill = player.GetCreatureSkill(Skill.ArcaneLore);
            if (skill == null || skill.AdvancementClass < SkillAdvancementClass.Trained)
                return;

            var alSettings = settings.ArcaneLore;
            if (alSettings == null)
                return;

            if (target is not Creature creatureTarget)
                return;

            // Check chain depth
            if (_echoChainDepth >= alSettings.EchoMaxChain)
                return;

            // Roll for echo chance
            double echoChance = skill.Current * alSettings.EchoChancePercent;
            double roll = ThreadSafeRandom.Next(0.0f, 1.0f);
            DebugLog($"Echo roll for {player.Name}: skill={skill.Current}, chance={echoChance:P2}, roll={roll:F4}, chainDepth={_echoChainDepth}");

            if (roll > echoChance)
                return;

            _echoChainDepth++;
            try
            {
                // Spell echo — cast the same spell again on the target
                if (alSettings.EchoSpellCasts)
                {
                    if (!player.IsInvalidTarget(spell, creatureTarget))
                    {
                        var captureSpell = spell;
                        var captureTarget = creatureTarget;
                        WorldManager.EnqueueAction(new ActionEventDelegate(() =>
                            TryCastSpellWithVitalSnapshot(player, captureSpell, captureTarget)
                        ));
                        player.SendMessage("Your Arcane Lore echoes the spell!", ChatMessageType.Magic);
                        DebugLog($"Echoed spell {spell.Id} on {creatureTarget.Name} (chain #{_echoChainDepth})");
                    }
                }

                // Debuff echo — cast Imperil + Fester for creature enchantment debuffs
                if (alSettings.EchoDebuffSpells && spell.School == MagicSchool.CreatureEnchantment)
                {
                    if (alSettings.EchoImperilSpellId > 0)
                    {
                        var imperil = new Spell((SpellId)alSettings.EchoImperilSpellId);
                        if (!imperil.NotFound)
                        {
                            var captureImperil = imperil;
                            var captureTarget = creatureTarget;
                            WorldManager.EnqueueAction(new ActionEventDelegate(() =>
                                player.TryCastSpell(captureImperil, captureTarget)
                            ));
                            DebugLog($"Echoed Imperil {alSettings.EchoImperilSpellId} on {creatureTarget.Name}");
                        }
                    }

                    if (alSettings.EchoFesterSpellId > 0)
                    {
                        var fester = new Spell((SpellId)alSettings.EchoFesterSpellId);
                        if (!fester.NotFound)
                        {
                            var captureFester = fester;
                            var captureTarget = creatureTarget;
                            WorldManager.EnqueueAction(new ActionEventDelegate(() =>
                                player.TryCastSpell(captureFester, captureTarget)
                            ));
                            DebugLog($"Echoed Fester {alSettings.EchoFesterSpellId} on {creatureTarget.Name}");
                        }
                    }
                }

                // Smart vulnerability echo — cast matching elemental vulnerability for War/Void/Life harmful spells
                if (alSettings.EchoDebuffSpells && spell.DamageType != DamageType.Undef && spell.DamageType != DamageType.Health)
                {
                    if (DamageTypeToVulnerability.TryGetValue(spell.DamageType, out var vulnSpellId) && vulnSpellId > 0)
                    {
                        var vuln = new Spell((SpellId)vulnSpellId);
                        if (!vuln.NotFound)
                        {
                            var captureVuln = vuln;
                            var captureTarget = creatureTarget;
                            WorldManager.EnqueueAction(new ActionEventDelegate(() =>
                                player.TryCastSpell(captureVuln, captureTarget)
                            ));
                            DebugLog($"Echoed {spell.DamageType} Vulnerability {vulnSpellId} on {creatureTarget.Name}");
                        }
                    }
                }
            }
            finally
            {
                _echoChainDepth--;
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS ArcaneLore] PostHandleCastSpellEcho error: {ex.Message}", ModManager.LogLevel.Warn);
        }
        finally
        {
            _isInArcaneLoreEcho = false;
        }
    }

    // Smart vulnerability echo: map spell damage type to matching vulnerability spell.
    private static readonly Dictionary<DamageType, int> DamageTypeToVulnerability = new()
    {
        [DamageType.Acid] = 4473,       // Acid Vulnerability Other VIII
        [DamageType.Slash] = 4475,      // Blade Vulnerability Other VIII
        [DamageType.Bludgeon] = 4477,   // Bludgeon Vulnerability Other VIII
        [DamageType.Cold] = 4479,       // Cold Vulnerability Other VIII
        [DamageType.Fire] = 4481,       // Fire Vulnerability Other VIII
        [DamageType.Electric] = 4483,   // Lightning Vulnerability Other VIII
        [DamageType.Pierce] = 4485,     // Piercing Vulnerability Other VIII
    };

    /// <summary>
    /// Called from MissileDefenseBuffs.PostfixCalculateDamage when the player takes spell damage.
    /// Applies Arcane Lore Adaptation reduction to the damage event, and records/updates the adaptation buff.
    /// </summary>
    internal static void TryApplyAdaptationReduction(Player player, DamageEvent damageEvent, ArcaneLoreSettings alSettings)
    {
        if (damageEvent.Damage <= 0)
            return;

        var skill = player.GetCreatureSkill(Skill.ArcaneLore);
        if (skill == null || skill.AdvancementClass < SkillAdvancementClass.Trained)
            return;

        var damageType = damageEvent.DamageType;
        if (damageType == DamageType.Undef || damageType == DamageType.Health)
            return;

        uint guid = player.Guid.Full;
        var playerAdapts = _adaptations.GetOrAdd(guid, _ => new ConcurrentDictionary<DamageType, (DateTime, float)>());

        // Check for existing active adaptation
        bool hasActive = playerAdapts.TryGetValue(damageType, out var existing);
        bool isActive = hasActive && existing.Expiry > DateTime.UtcNow;

        float reductionPercent = 0f;

        if (isActive)
        {
            reductionPercent = existing.Reduction;
            // Refresh expiry
            playerAdapts[damageType] = (DateTime.UtcNow.AddSeconds(alSettings.AdaptationDurationSeconds), reductionPercent);
            DebugLog($"Adaptation refreshed for {player.Name} vs {damageType}: {reductionPercent:P1}");
        }
        else
        {
            // Calculate new reduction based on current skill
            reductionPercent = (float)(skill.Current * alSettings.AdaptationReductionPerSkill);
            reductionPercent = Math.Min(reductionPercent, (float)alSettings.AdaptationMaxReduction);

            if (reductionPercent > 0)
            {
                playerAdapts[damageType] = (DateTime.UtcNow.AddSeconds(alSettings.AdaptationDurationSeconds), reductionPercent);
                player.SendMessage($"Your Arcane Lore adapts to {damageType} damage! ({reductionPercent:P0} reduction)", ChatMessageType.Magic);
                DebugLog($"New adaptation for {player.Name} vs {damageType}: {reductionPercent:P1}");
            }
        }

        if (reductionPercent > 0 && damageEvent.Damage > 0)
        {
            int originalDamage = (int)damageEvent.Damage;
            damageEvent.Damage = (int)Math.Round(damageEvent.Damage * (1.0f - reductionPercent));
            if (damageEvent.Damage < 0) damageEvent.Damage = 0;
            DebugLog($"Adaptation reduced damage for {player.Name}: {originalDamage} -> {damageEvent.Damage} ({reductionPercent:P1} reduction)");
        }
    }
}
