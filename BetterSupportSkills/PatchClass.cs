using HarmonyLib;
using System.Reflection;
using ACE.Database.Models.World;
using ACE.Server.Entity;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills;

public class PatchClass(ACE.Shared.Mods.BasicMod mod, string settingsName = "Settings.json") : ACE.Shared.Mods.BasicPatch<Settings>(mod, settingsName)
{
    static bool _commandCategoriesRegistered;
    static CancellationTokenSource? _lockpickRegenCts;
    [System.Diagnostics.Conditional("DEBUG")]
    private static void DebugLog(string msg)
    {
        ModManager.Log($"[BSS] {msg}", ModManager.LogLevel.Info);
    }

    public override async Task OnStartSuccess()
    {
        await base.OnStartSuccess();
    }

    public override void Start()
    {
        ModManager.Log("[BSS] Start() called, about to call base.Start()...", ModManager.LogLevel.Info);
        
        try
        {
            base.Start();
            ModManager.Log("[BSS] base.Start() completed successfully", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS] base.Start() FAILED: {ex}", ModManager.LogLevel.Error);
            throw;
        }
        
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
        
        var modDir = Path.GetDirectoryName(typeof(PatchClass).Assembly.Location) ?? "";
        PlayerProfileStore.Initialize(modDir);
        Skills.QuestTurnInTracker.Load();

        ModManager.Log($"[BSS] Start() - EnableTrophyDrops={Settings.EnableTrophyDrops}, EnableAssessCreature={Settings.EnableAssessCreature}", ModManager.LogLevel.Info);
        
        try
        {
            ModManager.Log("[BSS] RegisterEnabledPatchCategories...", ModManager.LogLevel.Info);
            RegisterEnabledPatchCategories();
            ModManager.Log("[BSS] RegisterEnabledPatchCategories done", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS] RegisterEnabledPatchCategories FAILED: {ex}", ModManager.LogLevel.Error);
            throw;
        }
        
        RecuperationHoT.RefreshHealerHook(ModC.Harmony, Settings.EnableHealing);
        TryApplyPlayerEnterWorldPatch();
        TryApplyLootPatch();
        TryApplyQuestTurnInCapPatch();
        TryApplyFoodPatch();
        TryApplyDamageEventPatch();
        ModManager.Log("[BSS] About to call TryApplyCookingPatches...", ModManager.LogLevel.Info);
        TryApplyCookingPatches();
        ModManager.Log("[BSS] TryApplyCookingPatches returned", ModManager.LogLevel.Info);
        TryApplyDirtyFightingPatch();
        TryApplyLockpickPatches();
        TryApplyChaosTinkerPatch();
        TryApplySummoningClassesPatch();
        TryApplyCombatClassesPatch();
        TryApplyLoyaltyXpPatch();
        // TryApplyUnenchantablePatch(); // TODO: re-add once we know what property to remove
        Skills.AchievementUnlockedApi.Initialize();

        if (Settings.EnableManaConversion)
        {
            ModManager.Log("[BetterSupportSkills] ManaConversion enabled, checking for spell cleave patch...", ModManager.LogLevel.Info);
            try
            {
                var method = AccessTools.Method(typeof(WorldObject), "HandleCastSpell", new Type[] {
                    typeof(ACE.Server.Entity.Spell), typeof(WorldObject), typeof(WorldObject), typeof(WorldObject), typeof(bool), typeof(bool), typeof(bool) });
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
        
        if ((Settings?.EnableAssessCreature == true) || (Settings?.EnableShield == true) || (Settings?.EnableDualWield == true) || (Settings?.EnableMissileDefense == true) || (Settings?.EnableArcaneLore == true))
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
                    ModC.Harmony?.Patch(calculateDamage, null, new HarmonyMethod(assessCreaturePostfix));
                }

                if (Settings.EnableShield)
                {
                    var shieldPostfix = AccessTools.Method(typeof(Skills.ShieldThorns), "PostfixCalculateDamage");
                    ModC.Harmony?.Patch(calculateDamage, null, new HarmonyMethod(shieldPostfix));
                }

                if (Settings.EnableDualWield)
                {
                    var dualWieldPostfix = AccessTools.Method(typeof(Skills.DualWieldBuffs), "PostfixCalculateDamageDualWield");
                    ModC.Harmony?.Patch(calculateDamage, null, new HarmonyMethod(dualWieldPostfix));
                }

                if (Settings.EnableMissileDefense || Settings.EnableArcaneLore)
                {
                    var mdPostfix = AccessTools.Method(typeof(Skills.MissileDefenseBuffs), "PostfixCalculateDamage");
                    ModC.Harmony?.Patch(calculateDamage, null, new HarmonyMethod(mdPostfix));
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

                    ModManager.Log("[BSS] SpellProjectile.CalculateDamage postfix applied", ModManager.LogLevel.Info);
                }
            }
            catch (Exception ex)
            {
                ModManager.Log($"[BSS] SpellProjectile patch failed: {ex}", ModManager.LogLevel.Error);
            }
        }

        // Arcane Lore echo patch on HandleCastSpell
        if (Settings?.EnableArcaneLore == true)
        {
            try
            {
                var handleCastSpell = AccessTools.Method(typeof(WorldObject), "HandleCastSpell", new Type[] {
                    typeof(ACE.Server.Entity.Spell), typeof(WorldObject), typeof(WorldObject), typeof(WorldObject), typeof(bool), typeof(bool), typeof(bool) });
                if (handleCastSpell != null)
                {
                    var alPostfix = AccessTools.Method(typeof(Skills.ArcaneLoreBuffs), "PostHandleCastSpellEcho");
                    if (alPostfix != null)
                    {
                        ModC.Harmony?.Patch(handleCastSpell, null, new HarmonyMethod(alPostfix));
                        ModManager.Log("[BSS] ArcaneLore HandleCastSpell postfix applied", ModManager.LogLevel.Info);
                    }
                }
            }
            catch (Exception ex)
            {
                ModManager.Log($"[BSS] ArcaneLore patch failed: {ex}", ModManager.LogLevel.Error);
            }
        }

    }

    void TryApplyCookingPatches()
    {
        ModManager.Log($"[BSS] TryApplyCookingPatches called - EnableCooking={Settings?.EnableCooking}", ModManager.LogLevel.Info);
        
        if (Settings?.EnableCooking != true)
        {
            ModManager.Log("[BSS] TryApplyCookingPatches: EnableCooking is false, skipping", ModManager.LogLevel.Info);
            return;
        }
        
        ModManager.Log("[BSS] TryApplyCookingPatches: EnableCooking=true, applying patches...", ModManager.LogLevel.Info);

        try
        {
            var applyConsumable = AccessTools.Method(typeof(Food), nameof(Food.ApplyConsumable));
            if (applyConsumable != null)
            {
                var cookingPostfix = AccessTools.Method(typeof(Skills.CookingBuffs), nameof(Skills.CookingBuffs.PostApplyConsumable));
                if (cookingPostfix != null)
                {
                    ModC.Harmony?.Patch(applyConsumable, null, new HarmonyMethod(cookingPostfix));
                    ModManager.Log("[BSS] Cooking Food.ApplyConsumable postfix applied", ModManager.LogLevel.Info);
                }
            }

            // Patch Creature.VitalHeartBeat(CreatureVital) to add percentage-based bonus after base regen
            try
            {
                var vitalHeartBeat = AccessTools.Method(typeof(Creature), nameof(Creature.VitalHeartBeat), new[] { typeof(CreatureVital) });
                ModManager.Log($"[BSS] Cooking: VitalHeartBeat method lookup result: {(vitalHeartBeat != null ? "FOUND" : "NULL")}", ModManager.LogLevel.Info);
                
                if (vitalHeartBeat != null)
                {
                    var regenPostfix = AccessTools.Method(typeof(Skills.CookingNaturalRegen), nameof(Skills.CookingNaturalRegen.PostVitalHeartBeat));
                    ModManager.Log($"[BSS] Cooking: PostVitalHeartBeat method lookup result: {(regenPostfix != null ? "FOUND" : "NULL")}", ModManager.LogLevel.Info);
                    
                    if (regenPostfix != null)
                    {
                        ModC.Harmony?.Patch(vitalHeartBeat, null, new HarmonyMethod(regenPostfix));
                        ModManager.Log("[BSS] Cooking Creature.VitalHeartBeat postfix applied (percentage-based regen)", ModManager.LogLevel.Info);
                    }
                    else
                        ModManager.Log("[BSS] Cooking: PostVitalHeartBeat method not found in CookingNaturalRegen", ModManager.LogLevel.Error);
                }
                else
                    ModManager.Log("[BSS] Cooking: VitalHeartBeat not found on Creature", ModManager.LogLevel.Error);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[BSS] Cooking VitalHeartBeat patch failed: {ex}", ModManager.LogLevel.Error);
            }

            // Patch Player.Heartbeat to dynamically adjust heartbeat interval for cooking users
            var playerHeartbeat = AccessTools.Method(typeof(Player), nameof(Player.Heartbeat), new[] { typeof(double) });
            if (playerHeartbeat != null)
            {
                var heartbeatPrefix = AccessTools.Method(typeof(Skills.CookingNaturalRegen), nameof(Skills.CookingNaturalRegen.PreHeartbeat));
                if (heartbeatPrefix != null)
                {
                    ModC.Harmony?.Patch(playerHeartbeat, new HarmonyMethod(heartbeatPrefix));
                    ModManager.Log("[BSS] Cooking Player.Heartbeat prefix applied (dynamic interval)", ModManager.LogLevel.Info);
                }
            }
            else
                ModManager.Log("[BSS] Cooking: Player.Heartbeat not found", ModManager.LogLevel.Error);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS] Cooking patches failed: {ex}", ModManager.LogLevel.Error);
        }
    }

    static bool LootPatchApplied;

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

                // Patch FightDirty for 100% application rate
                var fightDirty = AccessTools.Method(typeof(Creature), nameof(Creature.FightDirty));
                if (fightDirty != null)
                {
                    var fdPrefix = AccessTools.Method(typeof(Skills.DirtyFightingBuffs), "PrefixFightDirty");
                    if (fdPrefix != null)
                    {
                        ModC.Harmony?.Patch(fightDirty, new HarmonyMethod(fdPrefix));
                        ModManager.Log("[BSS] DirtyFighting FightDirty prefix applied", ModManager.LogLevel.Info);
                    }
                }
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

        if ((Settings?.EnableTrophyDrops == true) || (Settings?.EnableAlchemy == true) || (Settings?.EnableTinkeringLootGating == true))
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

                if (Settings.EnableTinkeringLootGating)
                {
                    var tinkeringPostfix = AccessTools.Method(typeof(Skills.TinkeringLootGating), "PostfixGenerateTreasure");
                    ModC.Harmony?.Patch(generateTreasure, null, new HarmonyMethod(tinkeringPostfix), null);
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

    static bool QuestTurnInCapPatchApplied;

    void TryApplyQuestTurnInCapPatch()
    {
        if (QuestTurnInCapPatchApplied) return;
        if (Settings?.QuestTrophyDrops?.Enabled != true) return;

        try
        {
            var giveObjectToNPC = AccessTools.Method(typeof(Player), "GiveObjectToNPC", new Type[] {
                typeof(WorldObject), typeof(WorldObject), typeof(Container), typeof(Container), typeof(bool), typeof(int) });
            if (giveObjectToNPC != null)
            {
                var prefix = AccessTools.Method(typeof(Skills.QuestTurnInCap), "PreGiveObjectToNPC");
                if (prefix != null)
                {
                    ModC.Harmony?.Patch(giveObjectToNPC, new HarmonyMethod(prefix));
                    ModManager.Log("[BSS] QuestTurnInCap GiveObjectToNPC prefix applied", ModManager.LogLevel.Info);
                }
            }

            var grantXp = AccessTools.Method(typeof(Player), nameof(Player.GrantXP), new Type[] { typeof(long), typeof(XpType), typeof(ShareType) });
            if (grantXp != null)
            {
                var xpPrefix = AccessTools.Method(typeof(Skills.QuestTurnInCap), "PreGrantXP");
                if (xpPrefix != null)
                {
                    ModC.Harmony?.Patch(grantXp, new HarmonyMethod(xpPrefix));
                    ModManager.Log("[BSS] QuestTurnInCap GrantXP prefix applied", ModManager.LogLevel.Info);
                }
            }

            QuestTurnInCapPatchApplied = true;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS] QuestTurnInCap patch failed: {ex.Message}", ModManager.LogLevel.Error);
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

    static bool SummoningClassesPatchApplied;

    void TryApplySummoningClassesPatch()
    {
        if (SummoningClassesPatchApplied) return;
        if (Settings?.EnableSummoningClasses != true) return;

        try
        {
            // Patch HandleCastSpell for summon trigger
            var handleCastSpell = AccessTools.Method(typeof(WorldObject), "HandleCastSpell", new Type[] {
                typeof(ACE.Server.Entity.Spell), typeof(WorldObject), typeof(WorldObject), typeof(WorldObject), typeof(bool), typeof(bool), typeof(bool) });
            if (handleCastSpell != null)
            {
                var postfix = AccessTools.Method(typeof(Skills.SummoningClasses), "PostHandleCastSpell");
                if (postfix != null)
                {
                    ModC.Harmony?.Patch(handleCastSpell, null, new HarmonyMethod(postfix));
                    ModManager.Log("[BSS] SummoningClasses HandleCastSpell postfix applied", ModManager.LogLevel.Info);
                }
            }
            else
            {
                ModManager.Log("[BSS] SummoningClasses HandleCastSpell method not found", ModManager.LogLevel.Error);
            }

            // Patch Player.LogOut_Final for cleanup
            var logout = AccessTools.Method(typeof(Player), nameof(Player.LogOut_Final));
            if (logout != null)
            {
                var logoutPrefix = AccessTools.Method(typeof(Skills.SummoningClasses), "PreLogOut_Final");
                if (logoutPrefix != null)
                    ModC.Harmony?.Patch(logout, new HarmonyMethod(logoutPrefix));
            }

            // Patch Player.Teleport for cleanup
            var teleport = AccessTools.Method(typeof(Player), nameof(Player.Teleport));
            if (teleport != null)
            {
                var teleportPostfix = AccessTools.Method(typeof(Skills.SummoningClasses), "PostTeleport");
                if (teleportPostfix != null)
                    ModC.Harmony?.Patch(teleport, null, new HarmonyMethod(teleportPostfix));
            }

            // Patch Pet.Init for 2× device summon for class players
            var petInit = AccessTools.Method(typeof(Pet), nameof(Pet.Init), new Type[] { typeof(Player), typeof(PetDevice) });
            if (petInit != null)
            {
                var petInitPostfix = AccessTools.Method(typeof(Skills.SummoningClasses), "PostPetInit");
                if (petInitPostfix != null)
                    ModC.Harmony?.Patch(petInit, null, new HarmonyMethod(petInitPostfix));
            }

            // Patch PetDevice.CheckUseRequirements to remove cooldown
            var checkUse = AccessTools.Method(typeof(PetDevice), nameof(PetDevice.CheckUseRequirements), new Type[] { typeof(WorldObject) });
            if (checkUse != null)
            {
                var checkUsePrefix = AccessTools.Method(typeof(Skills.SummoningClasses), "PreCheckUseRequirements");
                if (checkUsePrefix != null)
                    ModC.Harmony?.Patch(checkUse, new HarmonyMethod(checkUsePrefix));
            }

            // Patch Creature.TakeDamage for summon trigger + Artificer wisp procs
            var takeDamage = AccessTools.Method(typeof(Creature), nameof(Creature.TakeDamage), new Type[] { typeof(WorldObject), typeof(DamageType), typeof(float), typeof(bool) });
            if (takeDamage != null)
            {
                var summonTriggerPostfix = AccessTools.Method(typeof(Skills.SummoningClasses), "PostCreatureTakeDamage_SummonTrigger");
                if (summonTriggerPostfix != null)
                    ModC.Harmony?.Patch(takeDamage, null, new HarmonyMethod(summonTriggerPostfix));

                var takeDamagePostfix = AccessTools.Method(typeof(Skills.SummoningClasses), "PostCreatureTakeDamage");
                if (takeDamagePostfix != null)
                    ModC.Harmony?.Patch(takeDamage, null, new HarmonyMethod(takeDamagePostfix));
            }

            // Cache Artificer spells
            Skills.SummoningClasses.CacheArtificerSpells();

            SummoningClassesPatchApplied = true;
            ModManager.Log("[BSS] SummoningClasses patches applied", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS] SummoningClasses patch failed: {ex}", ModManager.LogLevel.Error);
        }
    }

    static bool CombatClassesPatchApplied;

    void TryApplyCombatClassesPatch()
    {
        if (CombatClassesPatchApplied) return;
        if (Settings?.EnableCombatClasses != true) return;

        ModManager.Log("[BSS] TryApplyCombatClassesPatch starting...", ModManager.LogLevel.Info);

        // Patch Player.DamageTarget for Rogue bleed, Berserker life steal, Crusader crit, and hybrid classes
        try
        {
            var damageTarget = AccessTools.Method(typeof(Player), nameof(Player.DamageTarget), new Type[] { typeof(Creature), typeof(WorldObject) });
            if (damageTarget == null)
            {
                ModManager.Log("[BSS] Player.DamageTarget method not found", ModManager.LogLevel.Error);
            }
            else
            {
                var postfix = AccessTools.Method(typeof(Skills.CombatClasses), "PostDamageTargetCombatEffects");
                if (postfix != null)
                {
                    ModC.Harmony?.Patch(damageTarget, null, new HarmonyMethod(postfix));
                    ModManager.Log("[BSS] CombatClasses DamageTarget postfix applied", ModManager.LogLevel.Info);
                }
                else
                    ModManager.Log("[BSS] CombatClasses.PostDamageTargetCombatEffects not found", ModManager.LogLevel.Error);

                var hybridPostfix = AccessTools.Method(typeof(Skills.HybridClasses), "PostDamageTargetHybridSpells");
                if (hybridPostfix != null)
                {
                    ModC.Harmony?.Patch(damageTarget, null, new HarmonyMethod(hybridPostfix));
                    ModManager.Log("[BSS] HybridClasses DamageTarget postfix applied", ModManager.LogLevel.Info);
                }
                else
                    ModManager.Log("[BSS] HybridClasses.PostDamageTargetHybridSpells not found", ModManager.LogLevel.Error);

                var healerPostfix = AccessTools.Method(typeof(Skills.HealerClass), "PostDamageTargetHealerSmite");
                if (healerPostfix != null)
                {
                    ModC.Harmony?.Patch(damageTarget, null, new HarmonyMethod(healerPostfix));
                    ModManager.Log("[BSS] HealerClass DamageTarget postfix applied", ModManager.LogLevel.Info);
                }
                else
                    ModManager.Log("[BSS] HealerClass.PostDamageTargetHealerSmite not found", ModManager.LogLevel.Error);
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS] DamageTarget patch failed: {ex}", ModManager.LogLevel.Error);
        }

        // Patch Creature.GetDamageResistRating for Crusader +10 DRR when shield equipped
        try
        {
            var getDamageResistRating = AccessTools.Method(typeof(Creature), nameof(Creature.GetDamageResistRating), new Type[] { typeof(CombatType?), typeof(bool) });
            if (getDamageResistRating == null)
            {
                ModManager.Log("[BSS] Creature.GetDamageResistRating method not found", ModManager.LogLevel.Error);
            }
            else
            {
                var resistPostfix = AccessTools.Method(typeof(Skills.CombatClasses), "PostfixGetDamageResistRating");
                if (resistPostfix != null)
                {
                    ModC.Harmony?.Patch(getDamageResistRating, null, new HarmonyMethod(resistPostfix));
                    ModManager.Log("[BSS] CombatClasses GetDamageResistRating postfix applied", ModManager.LogLevel.Info);
                }
                else
                    ModManager.Log("[BSS] CombatClasses.PostfixGetDamageResistRating not found", ModManager.LogLevel.Error);
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS] GetDamageResistRating patch failed: {ex}", ModManager.LogLevel.Error);
        }

        // Patch WorldObject.Heartbeat for Crusader passive heal and Death Knight aura
        try
        {
            var heartbeat = AccessTools.Method(typeof(WorldObject), nameof(WorldObject.Heartbeat), new Type[] { typeof(double) });
            if (heartbeat == null)
            {
                ModManager.Log("[BSS] WorldObject.Heartbeat method not found", ModManager.LogLevel.Error);
            }
            else
            {
                var hbPostfix = AccessTools.Method(typeof(Skills.CombatClasses), "PostHeartbeatCrusaderHeal");
                if (hbPostfix != null)
                {
                    ModC.Harmony?.Patch(heartbeat, null, new HarmonyMethod(hbPostfix));
                    ModManager.Log("[BSS] CombatClasses Heartbeat postfix applied", ModManager.LogLevel.Info);
                }
                else
                    ModManager.Log("[BSS] CombatClasses.PostHeartbeatCrusaderHeal not found", ModManager.LogLevel.Error);

                var auraPostfix = AccessTools.Method(typeof(Skills.HybridClasses), "PostHeartbeatAura");
                if (auraPostfix != null)
                {
                    ModC.Harmony?.Patch(heartbeat, null, new HarmonyMethod(auraPostfix));
                    ModManager.Log("[BSS] HybridClasses Heartbeat aura postfix applied", ModManager.LogLevel.Info);
                }
                else
                    ModManager.Log("[BSS] HybridClasses.PostHeartbeatAura not found", ModManager.LogLevel.Error);

                var healerAuraPostfix = AccessTools.Method(typeof(Skills.HealerAura), "PostHeartbeatHealerAura");
                if (healerAuraPostfix != null)
                {
                    ModC.Harmony?.Patch(heartbeat, null, new HarmonyMethod(healerAuraPostfix));
                    ModManager.Log("[BSS] HealerAura Heartbeat postfix applied", ModManager.LogLevel.Info);
                }
                else
                    ModManager.Log("[BSS] HealerAura.PostHeartbeatHealerAura not found", ModManager.LogLevel.Error);
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS] Heartbeat patch failed: {ex}", ModManager.LogLevel.Error);
        }

        // Patch Player.PlayerEnterWorld for cleanup
        try
        {
            var enterWorld = AccessTools.Method(typeof(Player), nameof(Player.PlayerEnterWorld));
            if (enterWorld == null)
            {
                ModManager.Log("[BSS] Player.PlayerEnterWorld method not found", ModManager.LogLevel.Error);
            }
            else
            {
                var ewPostfix = AccessTools.Method(typeof(Skills.CombatClasses), "PostEnterWorld");
                if (ewPostfix != null)
                    ModC.Harmony?.Patch(enterWorld, null, new HarmonyMethod(ewPostfix));
                else
                    ModManager.Log("[BSS] CombatClasses.PostEnterWorld not found", ModManager.LogLevel.Error);

                var hybridEwPostfix = AccessTools.Method(typeof(Skills.HybridClasses), "PostEnterWorldAura");
                if (hybridEwPostfix != null)
                    ModC.Harmony?.Patch(enterWorld, null, new HarmonyMethod(hybridEwPostfix));
                else
                    ModManager.Log("[BSS] HybridClasses.PostEnterWorldAura not found", ModManager.LogLevel.Error);

                var healerEwPostfix = AccessTools.Method(typeof(Skills.HealerAura), "PostEnterWorldHealerAura");
                if (healerEwPostfix != null)
                    ModC.Harmony?.Patch(enterWorld, null, new HarmonyMethod(healerEwPostfix));
                else
                    ModManager.Log("[BSS] HealerAura.PostEnterWorldHealerAura not found", ModManager.LogLevel.Error);
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS] PlayerEnterWorld patch failed: {ex}", ModManager.LogLevel.Error);
        }

        // Patch WorldObject.TryCastSpell for Bloodmage drain AoE
        try
        {
            var tryCastSpell = AccessTools.Method(typeof(WorldObject), nameof(WorldObject.TryCastSpell), new Type[] { typeof(ACE.Server.Entity.Spell), typeof(WorldObject), typeof(WorldObject), typeof(WorldObject), typeof(bool), typeof(bool), typeof(bool) });
            if (tryCastSpell == null)
            {
                ModManager.Log("[BSS] WorldObject.TryCastSpell method not found", ModManager.LogLevel.Error);
            }
            else
            {
                var drainAoEPostfix = AccessTools.Method(typeof(Skills.HybridClasses), "PostTryCastSpellDrainAoE");
                if (drainAoEPostfix != null)
                {
                    ModC.Harmony?.Patch(tryCastSpell, null, new HarmonyMethod(drainAoEPostfix));
                    ModManager.Log("[BSS] HybridClasses TryCastSpell drain AoE postfix applied", ModManager.LogLevel.Info);
                }
                else
                    ModManager.Log("[BSS] HybridClasses.PostTryCastSpellDrainAoE not found", ModManager.LogLevel.Error);
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS] TryCastSpell drain AoE patch failed: {ex}", ModManager.LogLevel.Error);
        }

        CombatClassesPatchApplied = true;
        ModManager.Log("[BSS] CombatClasses patch registration complete", ModManager.LogLevel.Info);
    }

    static bool LoyaltyXpPatchApplied;

    void TryApplyLoyaltyXpPatch()
    {
        if (LoyaltyXpPatchApplied) return;
        if (Settings?.EnableLoyalty != true) return;

        try
        {
            var grantLum = AccessTools.Method(typeof(Player), nameof(Player.GrantLuminance), new Type[] { typeof(long), typeof(XpType), typeof(ShareType) });
            if (grantLum != null)
            {
                var lumPrefix = AccessTools.Method(typeof(Skills.LoyaltyHealingAura), "PrefixGrantLuminance");
                if (lumPrefix != null)
                {
                    ModC.Harmony?.Patch(grantLum, new HarmonyMethod(lumPrefix));
                    ModManager.Log("[BSS] Loyalty GrantLuminance prefix applied", ModManager.LogLevel.Info);
                }
            }

            LoyaltyXpPatchApplied = true;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS] Loyalty XP patch failed: {ex}", ModManager.LogLevel.Error);
        }
    }

    static bool ChaosTinkerPatchApplied;

    void TryApplyChaosTinkerPatch()
    {
        if (ChaosTinkerPatchApplied) return;
        if (Settings?.EnableChaosTinkerAchievement != true) return;

        try
        {
            var handleRecipe = AccessTools.Method(typeof(RecipeManager), nameof(RecipeManager.HandleRecipe), new Type[] { typeof(Player), typeof(WorldObject), typeof(WorldObject), typeof(Recipe), typeof(double) });
            if (handleRecipe == null)
            {
                ModManager.Log("[BSS] RecipeManager.HandleRecipe method not found", ModManager.LogLevel.Error);
                return;
            }

            var prefix = AccessTools.Method(typeof(Skills.ChaosTinker), "PrefixHandleRecipe");
            var postfix = AccessTools.Method(typeof(Skills.ChaosTinker), "PostfixHandleRecipe");

            if (prefix != null)
                ModC.Harmony?.Patch(handleRecipe, new HarmonyMethod(prefix));
            if (postfix != null)
                ModC.Harmony?.Patch(handleRecipe, null, new HarmonyMethod(postfix));

            ChaosTinkerPatchApplied = true;
            ModManager.Log("[BSS] ChaosTinker patches applied (HandleRecipe prefix + postfix)", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS] ChaosTinker patch failed: {ex}", ModManager.LogLevel.Error);
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

        // Re-enable ALL features (broken Salvage patch fixed)
        
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
        if (Settings.EnableMagicWithoutManaConversion)
            enabledFeatures.Add(Features.MagicWithoutMcSkill);
        if (Settings.EnableMeleeLifeSpellProc)
            enabledFeatures.Add(Features.MeleeLifeSpellSkill);
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
        if (Settings.EnableTinkeringLootGating)
            enabledFeatures.Add(Features.TinkeringLootGating);
        // TODO: Re-enable SummoningClasses after fixing Creature.TakeDamage patch
        // if (Settings.EnableSummoningClasses)
        //     enabledFeatures.Add(Features.SummoningClasses);
        if (Settings.EnableDruidPetThorns)
            enabledFeatures.Add(Features.DruidPetThorns);
        if (Settings.EnableSalvage)
            enabledFeatures.Add(Features.SalvageSkill);
        // CombatClasses patches are applied manually in TryApplyCombatClassesPatch()
        // to avoid double-patching with declarative attributes.

        ModManager.Log($"[BSS] RegisterPatchCategories with {enabledFeatures.Count} features", ModManager.LogLevel.Info);
        ModC.RegisterPatchCategories(enabledFeatures.ToArray());
    }

    public override void Stop()
    {
        RecuperationHoT.RemoveHealerHookOnModStop(ModC.Harmony);
        _lockpickRegenCts?.Cancel();
        _lockpickRegenCts = null;
        _commandCategoriesRegistered = false;
        base.Stop();
    }

    [CommandHandler("cleave", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, -1,
        "Toggle skill-based cleaving on/off, or set your personal cleave range.",
        "Usage: /cleave  OR  /cleave range <meters>")]
    public static void HandleCleave(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player)
            return;

        uint guid = player.Guid.Full;

        var profile = PlayerProfileStore.GetOrCreate(guid);

        if (parameters.Length >= 2 && parameters[0].Equals("range", StringComparison.OrdinalIgnoreCase))
        {
            float serverMax = (float)(PatchClass.Settings?.Recklessness?.CleaveRangeMeters
                              ?? PatchClass.Settings?.ManaConversion.CleaveRange
                              ?? 15.0);
            if (!float.TryParse(parameters[1], out float requested) || requested < 0)
            {
                player.SendMessage($"Usage: /cleave range <0–{serverMax:F1}>", ChatMessageType.System);
                return;
            }
            float clamped = Math.Clamp(requested, 0f, serverMax);
            profile.CleaveRange = clamped;
            Skills.CleavePlayerState.Range[guid] = clamped;
            PlayerProfileStore.Save(guid, profile);
            player.SendMessage($"Cleave range set to {clamped:F1}m (server max: {serverMax:F1}m).", ChatMessageType.System);
            return;
        }

        bool nowDisabled = !profile.CleaveDisabled;
        profile.CleaveDisabled = nowDisabled;
        Skills.CleavePlayerState.Disabled[guid] = nowDisabled;
        PlayerProfileStore.Save(guid, profile);
        player.SendMessage(nowDisabled ? "Cleave: OFF" : "Cleave: ON", ChatMessageType.System);
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

        if (head == "summonmessages" || head == "summonmsg")
        {
            var profile = PlayerProfileStore.GetOrCreate(player.Guid.Full);
            bool newState = !profile.SummonMessagesEnabled;
            profile.SummonMessagesEnabled = newState;
            PlayerProfileStore.Save(player.Guid.Full, profile);
            player.SendMessage($"Summon messages: {(newState ? "ON" : "OFF")}", ChatMessageType.System);
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

    static bool LockpickPatchApplied;

    void TryApplyLockpickPatches()
    {
        if (Settings?.EnableLockpick != true) return;
        if (!LockpickPatchApplied)
        {
            try
            {
                var onUse = AccessTools.Method(typeof(WorldObject), "OnActivate", new[] { typeof(WorldObject) });
                if (onUse == null)
                {
                    ModManager.Log("[BSS] WorldObject.OnActivate method not found", ModManager.LogLevel.Error);
                }
                else
                {
                    var prefix = AccessTools.Method(typeof(Skills.LockpickDurability), "PreWorldObjectOnUse");
                    ModC.Harmony?.Patch(onUse, new HarmonyMethod(prefix));
                    LockpickPatchApplied = true;
                    ModManager.Log("[BSS] WorldObject.OnActivate lockpick prefix applied", ModManager.LogLevel.Info);
                }
            }
            catch (Exception ex)
            {
                ModManager.Log($"[BSS] Lockpick patch failed: {ex}", ModManager.LogLevel.Error);
            }
        }

        if (Settings.Lockpick?.LimitlessRegenEnabled == true)
            StartLockpickRegenTimer(Settings.Lockpick);
    }

    void StartLockpickRegenTimer(LockpickSettings lockpickSettings)
    {
        _lockpickRegenCts?.Cancel();
        var cts = new CancellationTokenSource();
        _lockpickRegenCts = cts;
        var checkIntervalMs = (int)Math.Min(lockpickSettings.LimitlessRegenIntervalSeconds * 1000 / 4, 60_000);
        _ = Task.Run(async () =>
        {
            while (!cts.Token.IsCancellationRequested)
            {
                try { await Task.Delay(checkIntervalMs, cts.Token); } catch (TaskCanceledException) { break; }
                try { Skills.LockpickDurability.TickRegen(lockpickSettings); }
                catch (Exception ex) { ModManager.Log($"[BSS] Lockpick regen tick error: {ex.Message}", ModManager.LogLevel.Warn); }
            }
        }, cts.Token);
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

            if (Settings?.EnableMagicWithoutManaConversion == true)
            {
                var mcNoPrefix = AccessTools.Method(typeof(Skills.MagicWithoutManaConversion), "PrefixPlayerEnterWorld");
                if (mcNoPrefix != null)
                    ModC.Harmony?.Patch(method, new HarmonyMethod(mcNoPrefix));
            }

            var profilePostfix = AccessTools.Method(typeof(PlayerProfileStore), "PostfixPlayerEnterWorld");
            if (profilePostfix != null)
                ModC.Harmony?.Patch(method, null, new HarmonyMethod(profilePostfix));

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

    // -- AutoLoot bridge ------------------------------------------------------

    static class AutoLootBridge
    {
        static MethodInfo? _setSalvageState;
        static bool _resolved;

        static void Resolve()
        {
            _resolved = true;
            foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
            {
                if (!string.Equals(asm.GetName().Name, "AutoLoot", StringComparison.Ordinal))
                    continue;
                var t = asm.GetType("AutoLoot.AutoLoot");
                if (t != null)
                {
                    _setSalvageState = t.GetMethod("SetSalvageState", BindingFlags.Public | BindingFlags.Static, null, new[] { typeof(Player), typeof(bool) }, null);
                }
                break;
            }
        }

        internal static void SetSalvageState(Player player, bool enabled)
        {
            if (!_resolved) Resolve();
            if (_setSalvageState == null) return;
            try { _setSalvageState.Invoke(null, new object?[] { player, enabled }); } catch { }
        }
    }

    [CommandHandler("autosalvage", AccessLevel.Player, CommandHandlerFlag.RequiresWorld)]
    public static void HandleAutoSalvage(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player)
            return;

        var currentlyEnabled = Skills.SalvageAutoDeposit.IsEnabled(player);
        var newState = !currentlyEnabled;

        if (parameters.Length > 0 && parameters[0].Trim().ToLowerInvariant() == "off")
            newState = false;

        Skills.SalvageAutoDeposit.SetEnabled(player, newState);
        AutoLootBridge.SetSalvageState(player, newState);

        player.SendMessage($"Auto-salvage: {(newState ? "ON" : "OFF")} (auto-loots salvage to bank)", ChatMessageType.System);
    }

    [CommandHandler("bssadmin", AccessLevel.Admin, CommandHandlerFlag.RequiresWorld)]
    public static void HandleBssAdmin(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player)
            return;

        if (parameters.Length == 0)
        {
            player.SendMessage("Usage: /bssadmin unlock | lock (toggle debug flag for auto-salvage testing)", ChatMessageType.System);
            return;
        }

        var arg = parameters[0].Trim().ToLowerInvariant();
        if (arg == "unlock")
        {
            player.SetProperty((ACE.Entity.Enum.Properties.PropertyInt)49999, 1);
            player.SendMessage("Debug unlock: ENABLED (auto-salvage tests as unlocked)", ChatMessageType.System);
        }
        else if (arg == "lock")
        {
            player.SetProperty((ACE.Entity.Enum.Properties.PropertyInt)49999, 0);
            player.SendMessage("Debug unlock: DISABLED", ChatMessageType.System);
        }
        else
        {
            player.SendMessage("Usage: /bssadmin unlock | lock", ChatMessageType.System);
        }
    }
}