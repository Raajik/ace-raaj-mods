using System.Collections.Concurrent;
using ACE.Entity;
using ACE.Server.Entity;
using ACE.Server.Entity.Actions;
using ACE.Server.Network;
using ACE.Server.Command;

namespace BetterSupportSkills.Skills;

[HarmonyPatchCategory(nameof(Features.CookingSkill))]
internal static class CookingBuffs
{
    public static bool CustomSpellsLoaded { get; private set; }
    private const bool EnableDebug = false;

    private static void DebugLog(string msg)
    {
        if (EnableDebug)
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
            var awAssembly = allAssemblies.FirstOrDefault(a => a.FullName.StartsWith("CustomSpells"));
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

    static readonly ConcurrentDictionary<uint, double> LastCheck = new();
    const double CheckIntervalSeconds = 60.0;

    internal static void OnPlayerLogin(Player player) => TryApplyCookingBuffs(player);
    internal static void OnPlayerWorldOpen(Player player) => TryApplyCookingBuffs(player);

    public static bool PrefixPlayerEnterWorld(Player __instance)
    {
        TryApplyCookingBuffs(__instance);
        return true;
    }

    public static void TryApplyCookingBuffs(Player player)
    {
        CheckCustomSpells();
        
        var settings = PatchClass.Settings;
        if (settings?.EnableCooking != true)
            return;

        var cooking = player.GetCreatureSkill(Skill.Cooking);
        if (cooking.AdvancementClass < SkillAdvancementClass.Trained)
            return;

        bool specialized = cooking.AdvancementClass == SkillAdvancementClass.Specialized;

        List<int> spells = CustomSpellsLoaded
            ? (specialized ? new List<int>(SatiatedSpells) : new List<int>(LegendarySpells))
            : new List<int> { 3731, 3732, 3725 };

        player.EnchantmentManager.DispelAllEnchantments();

        foreach (var spellId in spells)
        {
            var spell = new Spell(spellId);
            player.TryCastSpell(spell, player);
        }

        var buffType = CustomSpellsLoaded && specialized ? "Satiated" : (specialized ? "Prodigal" : "Legendary");
        player.SendMessage($"Applied {buffType} regeneration buffs!");
    }

    public static void VerifyBuffs(Player player)
    {
        var settings = PatchClass.Settings;
        if (settings?.EnableCooking != true)
            return;

        var now = DateTimeOffset.UtcNow.ToUnixTimeSeconds();
        uint id = player.Guid.Full;

        if (!LastCheck.TryGetValue(id, out var lastCheck) || now - lastCheck >= CheckIntervalSeconds)
        {
            LastCheck[id] = now;
            TryApplyCookingBuffs(player);
        }
    }

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
        
        var specialized = player.GetCreatureSkill(Skill.Cooking).AdvancementClass == SkillAdvancementClass.Specialized;

        var spells = CustomSpellsLoaded
            ? (specialized ? new List<int>(SatiatedSpells) : new List<int>(LegendarySpells))
            : new List<int> { 3731, 3732, 3725 };

        player.EnchantmentManager.DispelAllEnchantments();

        foreach (var spellId in spells)
        {
            var spell = new Spell(spellId);
            player.TryCastSpell(spell, player);
        }

        var buffType = CustomSpellsLoaded && specialized ? "Satiated" : (specialized ? "Prodigal" : "Legendary");
        player.SendMessage($"Applied {buffType} regeneration buffs!");
    }
}