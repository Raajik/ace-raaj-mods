using System.Diagnostics;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

[HarmonyPatchCategory(nameof(Features.ArcaneLoreSkill))]
internal static class ArcaneLoreBuffs
{
    [ThreadStatic]
    static bool _isInArcaneLoreEcho;

    [Conditional("DEBUG")]
    private static void DebugLog(string msg)
    {
        ModManager.Log($"[BSS ArcaneLore] {msg}", ModManager.LogLevel.Debug);
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

            // Spell echo — cast the same spell again on the target
            if (alSettings.EchoSpellCasts)
            {
                if (!player.IsInvalidTarget(spell, creatureTarget))
                {
                    TryCastSpellWithVitalSnapshot(player, spell, creatureTarget);
                    player.SendMessage("Your Arcane Lore echoes the spell!");
                    DebugLog($"Echoed spell {spell.Id} on {creatureTarget.Name}");
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
                        player.TryCastSpell(imperil, creatureTarget);
                        DebugLog($"Echoed Imperil {alSettings.EchoImperilSpellId} on {creatureTarget.Name}");
                    }
                }

                if (alSettings.EchoFesterSpellId > 0)
                {
                    var fester = new Spell((SpellId)alSettings.EchoFesterSpellId);
                    if (!fester.NotFound)
                    {
                        player.TryCastSpell(fester, creatureTarget);
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
                        player.TryCastSpell(vuln, creatureTarget);
                        DebugLog($"Echoed {spell.DamageType} Vulnerability {vulnSpellId} on {creatureTarget.Name}");
                    }
                }
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
}
