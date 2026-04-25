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
        ModManager.Log($"[BSS Cooking] {msg}", ModManager.LogLevel.Info);
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

    public static void OnPlayerLogin(Player player) { }
    public static void OnPlayerWorldOpen(Player player) { }

    public static bool PrefixPlayerEnterWorld(Player __instance)
    {
        return true;
    }

    // -- Food Consumption Trigger ----------------------------------------

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Food), nameof(Food.ApplyConsumable))]
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
        player.SendMessage("Applied skill buffs!");
    }

    private static void ApplyBuffs(Player player)
    {
        CheckCustomSpells();

        var settings = PatchClass.Settings;
        if (settings?.EnableCooking != true)
            return;

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
