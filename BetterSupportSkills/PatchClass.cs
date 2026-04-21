using HarmonyLib;
using ACE.Server.Entity;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills;

public class PatchClass(ACE.Shared.Mods.BasicMod mod, string settingsName = "Settings.json") : ACE.Shared.Mods.BasicPatch<Settings>(mod, settingsName)
{
    static bool _commandCategoriesRegistered;
    private const bool EnableDebug = false; // Set to true to debug startup

    private static void DebugLog(string msg)
    {
        if (EnableDebug)
            ModManager.Log($"[BSS] {msg}", ModManager.LogLevel.Info);
    }

    public override async Task OnStartSuccess()
    {
        await base.OnStartSuccess();
    }

    public override void Start()
    {
        base.Start();
        
        // Load settings directly from file to ensure we get latest values
        try
        {
            var asm = typeof(PatchClass).Assembly;
            var location = asm.Location;
            string? settingsPath = null;
            
            if (!string.IsNullOrWhiteSpace(location))
            {
                settingsPath = Path.Combine(Path.GetDirectoryName(location) ?? "", "Settings.json");
            }
            
            // Fallback to ModManager.ModPath
            if (string.IsNullOrEmpty(location) || !File.Exists(settingsPath))
            {
                var name = asm.GetName().Name ?? "BetterSupportSkills";
                settingsPath = Path.Combine(ModManager.ModPath, name, "Settings.json");
            }
            
            if (settingsPath != null && File.Exists(settingsPath))
            {
                var json = File.ReadAllText(settingsPath);
                Settings = System.Text.Json.JsonSerializer.Deserialize<Settings>(json, new System.Text.Json.JsonSerializerOptions { ReadCommentHandling = System.Text.Json.JsonCommentHandling.Skip }) ?? new Settings();
            }
            else
            {
                Settings = new Settings();
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS] Failed to load settings: {ex.Message}", ModManager.LogLevel.Error);
            Settings = new Settings();
        }
        
        ModManager.Log($"[BSS] Start() - EnableTrophyDrops={Settings.EnableTrophyDrops}, EnableAssessCreature={Settings.EnableAssessCreature}", ModManager.LogLevel.Info);
        RegisterEnabledPatchCategories();
        HealingSkillReplenish.RefreshHealerHook(ModC.Harmony, Settings.EnableHealing);
        TryApplyPlayerEnterWorldPatch();
        TryApplyLootPatch();
        TryApplyFoodPatch();
        TryApplyDamageEventPatch();
        TryApplyDirtyFightingPatch();

        if (Settings.EnableManaConversion)
        {
            ModManager.Log("[BetterSupportSkills] ManaConversion enabled, checking for spell cleave patch...", ModManager.LogLevel.Info);
            try
            {
                var method = AccessTools.Method(typeof(WorldObject), "HandleCastSpell", new Type[] {
                    typeof(Spell), typeof(WorldObject), typeof(WorldObject), typeof(WorldObject), typeof(bool), typeof(bool), typeof(bool) });
                if (method != null)
                    ModManager.Log($"[BetterSupportSkills] HandleCastSpell found: {method}", ModManager.LogLevel.Info);
                else
                    ModManager.Log("[BetterSupportSkills] HandleCastSpell NOT FOUND", ModManager.LogLevel.Error);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[BetterSupportSkills] HandleCastSpell lookup failed: {ex}", ModManager.LogLevel.Error);
            }
        }
    }

    public override async Task OnWorldOpen()
    {
        ModManager.Log("[BSS] OnWorldOpen called", ModManager.LogLevel.Info);
        // Settings already loaded in Start() from file - just log current state
        ModManager.Log($"[BSS] OnWorldOpen - Settings: EnableShield={Settings?.EnableShield}, EnableTrophyDrops={Settings?.EnableTrophyDrops}, EnableAssessCreature={Settings?.EnableAssessCreature}", ModManager.LogLevel.Info);
    }

    static bool DamageEventPatchApplied;

void TryApplyDamageEventPatch()
    {
        if (DamageEventPatchApplied) return;
        
        if ((Settings?.EnableAssessCreature == true) || (Settings?.EnableShield == true))
        {
            try
            {
                var calculateDamage = AccessTools.Method(typeof(DamageEvent), "CalculateDamage");
                if (calculateDamage == null)
                {
                    ModManager.Log("[BSS] DamageEvent.CalculateDamage method not found", ModManager.LogLevel.Error);
                    return;
                }

                if (Settings.EnableAssessCreature)
                {
                    var assessCreaturePostfix = AccessTools.Method(typeof(Skills.AssessCreatureBuffs), "PostfixCalculateDamage");
                    ModC.Harmony?.Patch(calculateDamage, null, new HarmonyMethod(assessCreaturePostfix), null);
                }

                if (Settings.EnableShield)
                {
                    var shieldPostfix = AccessTools.Method(typeof(Skills.ShieldThorns), "PostfixCalculateDamage");
                    ModC.Harmony?.Patch(calculateDamage, null, new HarmonyMethod(shieldPostfix), null);
                }

                DamageEventPatchApplied = true;
                ModManager.Log("[BSS] DamageEvent.CalculateDamage postfix applied", ModManager.LogLevel.Info);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[BSS] DamageEvent patch failed: {ex}", ModManager.LogLevel.Error);
            }
        }

        if (Settings?.EnableShield == true || Settings?.EnableArcaneLore == true)
        {
            try
            {
                var spellProjectileCalc = AccessTools.Method(typeof(SpellProjectile), "CalculateDamage");
                if (spellProjectileCalc == null)
                {
                    ModManager.Log("[BSS] SpellProjectile.CalculateDamage method not found", ModManager.LogLevel.Error);
                }
                else
                {
                    if (Settings.EnableShield)
                    {
                        var spellShieldPostfix = AccessTools.Method(typeof(Skills.ShieldThorns), "PostfixSpellProjectileCalculateDamage");
                        ModC.Harmony?.Patch(spellProjectileCalc, null, new HarmonyMethod(spellShieldPostfix), null);
                    }

                    if (Settings.EnableArcaneLore)
                    {
                        var arcaneLorePostfix = AccessTools.Method(typeof(Skills.ArcaneLoreBuffs), "PostfixSpellProjectileCalculateDamage");
                        ModC.Harmony?.Patch(spellProjectileCalc, null, new HarmonyMethod(arcaneLorePostfix), null);
                    }

                    ModManager.Log("[BSS] SpellProjectile.CalculateDamage postfix applied", ModManager.LogLevel.Info);
                }
            }
            catch (Exception ex)
            {
                ModManager.Log($"[BSS] SpellProjectile patch failed: {ex}", ModManager.LogLevel.Error);
            }
        }
    }

    static bool LootPatchApplied;

    static bool DirtyFightingPatchApplied;

    void TryApplyDirtyFightingPatch()
    {
        ModManager.Log($"[BSS] TryApplyDirtyFightingPatch called - EnableDirtyFighting={Settings?.EnableDirtyFighting}", ModManager.LogLevel.Info);

        if (Settings?.EnableDirtyFighting == true)
        {
            try
            {
                var applyLow = AccessTools.Method(typeof(Creature), "FightDirty_ApplyLowAttack");
                var applyHigh = AccessTools.Method(typeof(Creature), "FightDirty_ApplyHighAttack");
                var applyMedium = AccessTools.Method(typeof(Creature), "FightDirty_ApplyMediumAttack");

                if (applyLow == null || applyHigh == null || applyMedium == null)
                {
                    ModManager.Log($"[BSS] DF methods not found - Low:{applyLow != null}, High:{applyHigh != null}, Medium:{applyMedium != null}", ModManager.LogLevel.Error);
                    return;
                }

                ModC.Harmony?.Patch(applyLow, null, new HarmonyMethod(typeof(Skills.DirtyFightingBuffs), "PostfixFightDirty_ApplyLowAttack"));
                ModC.Harmony?.Patch(applyHigh, null, new HarmonyMethod(typeof(Skills.DirtyFightingBuffs), "PostfixFightDirty_ApplyHighAttack"));
                ModC.Harmony?.Patch(applyMedium, null, new HarmonyMethod(typeof(Skills.DirtyFightingBuffs), "PostfixFightDirty_ApplyMediumAttack"));

                DirtyFightingPatchApplied = true;
            }
            catch (Exception ex)
            {
                ModManager.Log($"[BSS] DirtyFighting patch failed: {ex}", ModManager.LogLevel.Error);
            }
        }
    }

    void TryApplyLootPatch()
    {
        if (LootPatchApplied) return;
        
        ModManager.Log($"[BSS] TryApplyLootPatch called - EnableTrophyDrops={Settings?.EnableTrophyDrops}, EnableAlchemy={Settings?.EnableAlchemy}", ModManager.LogLevel.Info);

        if ((Settings?.EnableTrophyDrops == true) || (Settings?.EnableAlchemy == true))
        {
            try
            {
                var generateTreasure = AccessTools.Method(typeof(Creature), "GenerateTreasure", new Type[] { typeof(DamageHistoryInfo), typeof(Corpse) });
                if (generateTreasure == null)
                {
                    ModManager.Log("[BSS] Creature.GenerateTreasure method not found", ModManager.LogLevel.Error);
                    return;
                }

                if (Settings.EnableTrophyDrops)
                {
                    var trophyPostfix = AccessTools.Method(typeof(Skills.TrophyDropsBonus), "PostfixGenerateTreasure");
                    ModC.Harmony?.Patch(generateTreasure, null, new HarmonyMethod(trophyPostfix), null);
                }

                if (Settings.EnableAlchemy)
                {
                    var alchemyPostfix = AccessTools.Method(typeof(Skills.AlchemyBuffs), "PostfixGenerateTreasure");
                    ModC.Harmony?.Patch(generateTreasure, null, new HarmonyMethod(alchemyPostfix), null);
                }

                LootPatchApplied = true;
                ModManager.Log("[BSS] Creature.GenerateTreasure postfix applied", ModManager.LogLevel.Info);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[BSS] GenerateTreasure patch failed: {ex}", ModManager.LogLevel.Error);
            }
        }
    }

    void TryApplyFoodPatch()
    {
        if (Settings?.EnableAlchemy != true)
            return;

try
            {
                var applyConsumable = AccessTools.Method(typeof(Food), "ApplyConsumable", new Type[] { typeof(Player) });
                ModManager.Log($"[BSS] Food.ApplyConsumable method: {(applyConsumable != null ? "found" : "NOT FOUND")}", ModManager.LogLevel.Info);
                
                if (applyConsumable == null)
                {
                    ModManager.Log("[BSS] Food.ApplyConsumable method not found", ModManager.LogLevel.Error);
                    return;
                }

                var postfix = AccessTools.Method(typeof(Skills.AlchemyBuffs), "PostfixFoodApplyConsumable");
                ModC.Harmony?.Patch(applyConsumable, null, new HarmonyMethod(postfix), null);

                ModManager.Log("[BSS] Food.ApplyConsumable postfix applied for Alchemy", ModManager.LogLevel.Info);
            }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS] Food patch failed: {ex}", ModManager.LogLevel.Error);
        }
    }

    private void RegisterEnabledPatchCategories()
    {
        if (!_commandCategoriesRegistered)
        {
            ModC.RegisterCommands(Enum.GetValues<Features>().Cast<Features>().ToArray());
            _commandCategoriesRegistered = true;
        }

        var enabledFeatures = new List<Features>();

        if (Settings.EnableAlchemy)
            enabledFeatures.Add(Features.AlchemySkill);
        
        if (Settings.EnableAlchemy && Settings.Alchemy.ShowEchoMessages)
            enabledFeatures.Add(Features.AlchemyEchoMessages);
        
        if (Settings.EnableArcaneLore)
            enabledFeatures.Add(Features.ArcaneLoreSkill);
        if (Settings.EnableAssessCreature)
            enabledFeatures.Add(Features.AssessCreatureSkill);
        if (Settings.EnableCooking)
            enabledFeatures.Add(Features.CookingSkill);
        if (Settings.EnableDirtyFighting)
            enabledFeatures.Add(Features.DirtyFightingSkill);
        if (Settings.EnableDeception)
            enabledFeatures.Add(Features.DeceptionSkill);
        if (Settings.EnableDualWield)
            enabledFeatures.Add(Features.DualWieldSkill);
        if (Settings.EnableFletching)
            enabledFeatures.Add(Features.FletchingSkill);
        if (Settings.EnableHealing)
            enabledFeatures.Add(Features.HealingSkill);
        if (Settings.EnableLeadership)
            enabledFeatures.Add(Features.LeadershipSkill);
        if (Settings.EnableLockpick)
            enabledFeatures.Add(Features.LockpickSkill);
        if (Settings.EnableLoyalty)
            enabledFeatures.Add(Features.LoyaltySkill);
        if (Settings.EnableManaConversion)
            enabledFeatures.Add(Features.ManaConversionSkill);
        if (Settings.EnableMissileDefense)
            enabledFeatures.Add(Features.MissileDefenseSkill);
        if (Settings.EnableRecklessness)
            enabledFeatures.Add(Features.RecklessnessSkill);
        if (Settings.EnableShield)
            enabledFeatures.Add(Features.ShieldSkill);
        if (Settings.EnableSneakAttack)
            enabledFeatures.Add(Features.SneakAttackSkill);
        if (Settings.EnableTrophyDrops)
            enabledFeatures.Add(Features.TrophyDropsSkill);

        ModC.RegisterPatchCategories(enabledFeatures.ToArray());
    }

    public override void Stop()
    {
        HealingSkillReplenish.RemoveHealerHookOnModStop(ModC.Harmony);
        _commandCategoriesRegistered = false;
        base.Stop();
    }

    [CommandHandler("bss", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, -1,
        "BetterSupportSkills hub (e.g. list mod commands).", "Usage: /bss commands")]
    public static void HandleBss(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player)
            return;

        if (parameters.Length == 0)
        {
            player.SendMessage("Usage: /bss commands", ChatMessageType.System);
            return;
        }

        var head = parameters[0].Trim().ToLowerInvariant();
        
        if (head == "alchemyskill" || head == "alchemy")
        {
            var sub = parameters.Length > 1 ? parameters[1].Trim().ToLowerInvariant() : "";
            
            if (sub == "on" || sub == "enable" || sub == "true")
            {
                Settings.EnableAlchemy = true;
                player.SendMessage("AlchemySkill: ENABLED", ChatMessageType.System);
                SaveSettings();
            }
            else if (sub == "off" || sub == "disable" || sub == "false")
            {
                Settings.EnableAlchemy = false;
                player.SendMessage("AlchemySkill: DISABLED", ChatMessageType.System);
                SaveSettings();
            }
            else
            {
                player.SendMessage($"AlchemySkill: {(Settings.EnableAlchemy ? "ENABLED" : "DISABLED")} (use /bss alchemy on|off to toggle)", ChatMessageType.System);
            }
            return;
        }

        if (head == "alchemyecho")
        {
            var sub = parameters.Length > 1 ? parameters[1].Trim().ToLowerInvariant() : "";
            
            if (sub == "on" || sub == "enable" || sub == "true")
            {
                if (Settings.Alchemy == null) Settings.Alchemy = new();
                Settings.Alchemy.ShowEchoMessages = true;
                player.SendMessage("Alchemy echo messages: ON", ChatMessageType.System);
                SaveSettings();
            }
            else if (sub == "off" || sub == "disable" || sub == "false")
            {
                if (Settings.Alchemy == null) Settings.Alchemy = new();
                Settings.Alchemy.ShowEchoMessages = false;
                player.SendMessage("Alchemy echo messages: OFF", ChatMessageType.System);
                SaveSettings();
            }
            else
            {
                var current = Settings.Alchemy?.ShowEchoMessages ?? true;
                player.SendMessage($"Alchemy echo messages: {(current ? "ON" : "OFF")} (use /bss alchemy on|off to toggle)", ChatMessageType.System);
            }
            return;
        }

        if (head == "commands")
        {
            ModCommandsList.SendList(player, session);
            return;
        }
    }

    static void SaveSettings()
    {
        try
        {
            var asm = typeof(PatchClass).Assembly;
            string? settingsPath = null;
            
            if (!string.IsNullOrWhiteSpace(asm.Location))
            {
                settingsPath = Path.Combine(Path.GetDirectoryName(asm.Location) ?? "", "Settings.json");
            }
            
            if (string.IsNullOrEmpty(settingsPath) || !File.Exists(settingsPath))
            {
                var name = asm.GetName().Name ?? "BetterSupportSkills";
                settingsPath = Path.Combine(ModManager.ModPath, name, "Settings.json");
            }
            
            if (settingsPath != null && File.Exists(settingsPath))
            {
                var json = System.Text.Json.JsonSerializer.Serialize(Settings, new System.Text.Json.JsonSerializerOptions { WriteIndented = true, ReadCommentHandling = System.Text.Json.JsonCommentHandling.Skip });
                File.WriteAllText(settingsPath, json);
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS] Failed to save settings: {ex.Message}", ModManager.LogLevel.Error);
        }
    }

    static bool PlayerEnterWorldPatchApplied;

    void TryApplyPlayerEnterWorldPatch()
    {
        if (PlayerEnterWorldPatchApplied) return;
        
        try
        {
            var method = AccessTools.Method(typeof(Player), "PlayerEnterWorld");
            if (method == null)
            {
                ModManager.Log("[BSS] PlayerEnterWorld method not found", ModManager.LogLevel.Error);
                return;
            }

            var prefix = AccessTools.Method(typeof(CookingBuffs), "PrefixPlayerEnterWorld");
            ModC.Harmony?.Patch(method, new HarmonyMethod(prefix));
            PlayerEnterWorldPatchApplied = true;
            ModManager.Log("[BSS] PlayerEnterWorld patch applied", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS] PlayerEnterWorld patch failed: {ex}", ModManager.LogLevel.Error);
        }
    }
}

internal static class ModCommandsList
{
    public static void SendList(Player player, Session session)
    {
        if (player == null || session == null)
            return;

        var lines = new List<string>
        {
            "=== BetterSupportSkills Commands ===",
            "/bss commands - Show this help",
        };

        foreach (var line in lines)
            player.SendMessage(line, ChatMessageType.System);
    }
}