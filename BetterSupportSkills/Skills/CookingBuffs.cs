using System.Collections.Concurrent;
using System.Diagnostics;
using ACE.Entity;
using ACE.Server.Entity;
using ACE.Server.Network;
using ACE.Server.Command;

namespace BetterSupportSkills.Skills;

[HarmonyPatchCategory(nameof(Features.CookingSkill))]
internal static class CookingBuffs
{
    public static bool CustomSpellsLoaded { get; private set; }

    [Conditional("DEBUG")]
    private static void DebugLog(string msg)
    {
        ModManager.Log($"[BSS Cooking] {msg}", ModManager.LogLevel.Debug);
    }

    private static readonly int[] LegendarySpells = { 90000001, 90000002, 90000003 };
    private static readonly int[] ProdigalSpells = { 90000001, 90000002, 90000003 };
    private static readonly int[] SatiatedSpells = { 90000004, 90000005, 90000006 };

    private static bool CheckCustomSpells()
    {
        if (CustomSpellsLoaded) return true;

        try
        {
            var allAssemblies = System.AppDomain.CurrentDomain.GetAssemblies();
            var awAssembly = allAssemblies.FirstOrDefault(a => a.FullName?.StartsWith("CustomSpells") == true);
            var awType = awAssembly?.GetType("CustomSpells.PatchClass");
            CustomSpellsLoaded = awType != null;
            return CustomSpellsLoaded;
        }
        catch (Exception ex)
        {
            DebugLog("CustomSpells check failed: " + ex.Message);
            CustomSpellsLoaded = false;
            return false;
        }
    }

    public static void OnPlayerLogin(Player player)
    {
        if (player == null)
            return;

        var settings = PatchClass.Settings;
        if (settings?.EnableCooking != true)
            return;

        // Auto-strip old cooking spell enchantments if legacy mode is disabled
        if (!settings.Cooking.CookingUseLegacySpellBuffs)
        {
            StripLegacyCookingEnchantments(player);
        }
    }

    public static void OnPlayerWorldOpen(Player player) { }

    private static void StripLegacyCookingEnchantments(Player player)
    {
        var stripped = 0;

        // Legacy spell IDs from Settings
        var legacySpellIds = new List<int>
        {
            PatchClass.Settings.Cooking.LegendaryHealthSpell,
            PatchClass.Settings.Cooking.LegendaryStaminaSpell,
            PatchClass.Settings.Cooking.LegendaryManaSpell,
            PatchClass.Settings.Cooking.ProdigalHealthSpell,
            PatchClass.Settings.Cooking.ProdigalStaminaSpell,
            PatchClass.Settings.Cooking.ProdigalManaSpell
        };

        // CustomSpells IDs (if loaded)
        if (CheckCustomSpells())
        {
            legacySpellIds.AddRange(LegendarySpells);
            legacySpellIds.AddRange(ProdigalSpells);
            legacySpellIds.AddRange(SatiatedSpells);
        }

        // Remove duplicates
        var uniqueIds = legacySpellIds.Distinct().ToList();

        foreach (var spellId in uniqueIds)
        {
            var enchantment = player.EnchantmentManager.GetEnchantment((uint)spellId, player.Guid.Full);
            if (enchantment != null)
            {
                player.EnchantmentManager.Dispel(enchantment);
                stripped++;
            }
        }

        if (stripped > 0)
        {
            DebugLog($"Stripped {stripped} legacy cooking enchantments from {player.Name}");
            player.SendMessage($"Legacy cooking buffs removed. Natural regeneration from Cooking skill is now active.", ChatMessageType.Broadcast);
        }
    }

    public static bool PrefixPlayerEnterWorld(Player __instance)
    {
        OnPlayerLogin(__instance);
        return true;
    }

    // -- Food Consumption Trigger (Harmony postfix applied manually from PatchClass.TryApplyCookingPatches; no attributes — avoids double patch with RegisterPatchCategories.)

    public static void PostApplyConsumable(Player player)
    {
        if (player == null)
            return;

        var settings = PatchClass.Settings;
        if (settings?.EnableCooking != true)
            return;

        var cooking = player.GetCreatureSkill(Skill.Cooking);
        if (cooking.AdvancementClass < SkillAdvancementClass.Trained)
            return;

        CheckCustomSpells();

        bool specialized = cooking.AdvancementClass == SkillAdvancementClass.Specialized;

        if (settings.Cooking.CookingUseLegacySpellBuffs)
        {
            List<int> spells = CustomSpellsLoaded
                ? (specialized ? new List<int>(SatiatedSpells) : new List<int>(LegendarySpells))
                : new List<int> { settings.Cooking.ProdigalHealthSpell, settings.Cooking.ProdigalStaminaSpell, settings.Cooking.ProdigalManaSpell };

            foreach (var spellId in spells)
            {
                var spell = new Spell(spellId);
                if (!spell.NotFound)
                    player.TryCastSpell(spell, player);
            }

            var buffType = CustomSpellsLoaded && specialized ? "Satiated" : (specialized ? "Prodigal" : "Legendary");
            player.SendMessage($"The nourishing meal grants you {buffType} regeneration!");
        }
        else
            player.SendMessage("The nourishing meal reinforces your natural regeneration.");
    }

    // -- Manual /buff Command -------------------------------------------

    [CommandHandler("buff", AccessLevel.Player, CommandHandlerFlag.None)]
    public static void HandleBuff(Session session, params string[] parameters)
    {
        var player = session.Player;
        if (player == null)
            return;

        var skill = player.GetCreatureSkill(Skill.Cooking);
        if (skill.AdvancementClass < SkillAdvancementClass.Trained)
        {
            player.SendMessage("You need the Cooking skill to use this command.");
            return;
        }

        ApplyBuffs(player);
    }

    private static void ApplyBuffs(Player player)
    {
        CheckCustomSpells();

        var settings = PatchClass.Settings;
        if (settings?.EnableCooking != true)
            return;

        if (!settings.Cooking.CookingUseLegacySpellBuffs)
        {
            player.SendMessage("Cooking regeneration auras are disabled. Natural regen from Cooking is always active while trained. Set CookingUseLegacySpellBuffs true in Settings.json to restore spell buffs.");
            return;
        }

        var specialized = player.GetCreatureSkill(Skill.Cooking).AdvancementClass == SkillAdvancementClass.Specialized;

        var spells = CustomSpellsLoaded
            ? (specialized ? new List<int>(SatiatedSpells) : new List<int>(LegendarySpells))
            : new List<int> { settings.Cooking.ProdigalHealthSpell, settings.Cooking.ProdigalStaminaSpell, settings.Cooking.ProdigalManaSpell };

        foreach (var spellId in spells)
        {
            var spell = new Spell(spellId);
            if (!spell.NotFound)
                player.TryCastSpell(spell, player);
        }

        var buffType = CustomSpellsLoaded && specialized ? "Satiated" : (specialized ? "Prodigal" : "Legendary");
        player.SendMessage($"Applied {buffType} regeneration buffs!");
    }
}
