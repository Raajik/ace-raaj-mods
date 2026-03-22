namespace Swarmed;

public partial class PatchClass
{
    const int SwarmedReinforcementXpBonusPropertyId = 40110;
    const int SwarmedPlayerXpBonusPropertyId = 40111;

    static void RecordCallForHelpDebug(in CallForHelpSnapshot snapshot, int spawnsCreated = 0) =>
        CallForHelpDebug.Record(snapshot, spawnsCreated);

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.Die), new Type[] { typeof(DamageHistoryInfo), typeof(DamageHistoryInfo) })]
    public static void PostDieCallForHelp(DamageHistoryInfo lastDamager, DamageHistoryInfo topDamager, Creature __instance)
    {
        if (__instance == null)
            return;

        Settings? settings = CurrentSettings;
        if (settings == null)
            return;

        var reinforcementBonusProp = (PropertyFloat)SwarmedReinforcementXpBonusPropertyId;
        var playerBonusProp = (PropertyFloat)SwarmedPlayerXpBonusPropertyId;

        double? reinforcementBonus = __instance.GetProperty(reinforcementBonusProp);

        Player? killerPlayer = null;
        if (lastDamager != null && lastDamager.IsPlayer)
            killerPlayer = lastDamager.TryGetPetOwnerOrAttacker() as Player;

        if (reinforcementBonus.HasValue && killerPlayer != null)
        {
            double bonusValue = reinforcementBonus.Value;
            if (bonusValue > 0)
            {
                killerPlayer.SetProperty(playerBonusProp, bonusValue);
            }

            return;
        }

        if (__instance is Swarmed.Creatures.CreatureEx)
        {
            RecordCallForHelpDebug(new CallForHelpSnapshot
            {
                UtcTime = DateTime.UtcNow,
                Outcome = "skipped_creatureex",
                CreatureName = __instance.Name,
                WeenieClassId = __instance.WeenieClassId,
                IsDungeon = __instance.CurrentLandblock?.IsDungeon ?? false,
                PathLabel = (__instance.CurrentLandblock?.IsDungeon ?? false) ? "dungeon" : "landscape",
                PathEnabled = false,
                Chance = 0,
            });
            return;
        }

        bool isDungeon = __instance.CurrentLandblock?.IsDungeon ?? false;
        bool landscape = !isDungeon;

        bool enabled = landscape ? settings.LandscapeEnabled : settings.DungeonEnabled;
        float baseChance = landscape ? settings.LandscapeChance : settings.DungeonChance;
        Landblock? deathLb = __instance.CurrentLandblock;
        float chance = settings.ReinforcementChanceScalesWithLandblockPlayers && deathLb != null
            ? OnlinePlayerDensity.EffectiveReinforcementChanceLandblock(
                baseChance,
                settings,
                OnlinePlayerDensity.LandblockPlayerCount(deathLb))
            : OnlinePlayerDensity.EffectiveReinforcementChance(baseChance, settings);
        int spawnMin = landscape ? settings.LandscapeSpawnMin : settings.DungeonSpawnMin;
        int spawnMax = landscape ? settings.LandscapeSpawnMax : settings.DungeonSpawnMax;

        string pathLabel = landscape ? "landscape" : "dungeon";

        if (!enabled || chance <= 0)
        {
            RecordCallForHelpDebug(new CallForHelpSnapshot
            {
                UtcTime = DateTime.UtcNow,
                Outcome = !enabled ? "path_disabled" : "chance_zero",
                CreatureName = __instance.Name,
                WeenieClassId = __instance.WeenieClassId,
                IsDungeon = isDungeon,
                PathLabel = pathLabel,
                PathEnabled = enabled,
                Chance = chance,
                SpawnMin = spawnMin,
                SpawnMax = spawnMax,
            });
            return;
        }

        double roll = ThreadSafeRandom.Next(0f, 1f);
        bool rollPass = roll <= chance;
        if (!rollPass)
        {
            RecordCallForHelpDebug(new CallForHelpSnapshot
            {
                UtcTime = DateTime.UtcNow,
                Outcome = "roll_fail",
                CreatureName = __instance.Name,
                WeenieClassId = __instance.WeenieClassId,
                IsDungeon = isDungeon,
                PathLabel = pathLabel,
                PathEnabled = enabled,
                Chance = chance,
                RollValue = roll,
                RollSucceeded = false,
                SpawnMin = spawnMin,
                SpawnMax = spawnMax,
            });
            return;
        }

        if (lastDamager == null || !lastDamager.IsPlayer || lastDamager.TryGetPetOwnerOrAttacker() is not Player)
        {
            RecordCallForHelpDebug(new CallForHelpSnapshot
            {
                UtcTime = DateTime.UtcNow,
                Outcome = "no_player_killer",
                CreatureName = __instance.Name,
                WeenieClassId = __instance.WeenieClassId,
                IsDungeon = isDungeon,
                PathLabel = pathLabel,
                PathEnabled = enabled,
                Chance = chance,
                RollValue = roll,
                RollSucceeded = true,
                SpawnMin = spawnMin,
                SpawnMax = spawnMax,
            });
            return;
        }

        if (__instance.CurrentLandblock == null)
        {
            RecordCallForHelpDebug(new CallForHelpSnapshot
            {
                UtcTime = DateTime.UtcNow,
                Outcome = "no_landblock",
                CreatureName = __instance.Name,
                WeenieClassId = __instance.WeenieClassId,
                IsDungeon = isDungeon,
                PathLabel = pathLabel,
                PathEnabled = enabled,
                Chance = chance,
                RollValue = roll,
                RollSucceeded = true,
                SpawnMin = spawnMin,
                SpawnMax = spawnMax,
            });
            return;
        }

        uint wcid = __instance.WeenieClassId;
        string creatureName = __instance.Name ?? "creature";
        var deathLocation = __instance.Location;
        uint originalMaxHealth = __instance.Health?.MaxValue ?? 1;

        int maxCallerHealth = settings.MaxCallerHealth;
        if (maxCallerHealth > 0 && originalMaxHealth > maxCallerHealth)
        {
            RecordCallForHelpDebug(new CallForHelpSnapshot
            {
                UtcTime = DateTime.UtcNow,
                Outcome = "caller_health_cap",
                CreatureName = creatureName,
                WeenieClassId = wcid,
                IsDungeon = isDungeon,
                PathLabel = pathLabel,
                PathEnabled = enabled,
                Chance = chance,
                RollValue = roll,
                RollSucceeded = true,
                SpawnMin = spawnMin,
                SpawnMax = spawnMax,
            });
            return;
        }

        float originalScale = __instance.ObjScale ?? 1f;

        Weenie? weenie = DatabaseManager.World.GetCachedWeenie(wcid);
        if (weenie == null)
        {
            RecordCallForHelpDebug(new CallForHelpSnapshot
            {
                UtcTime = DateTime.UtcNow,
                Outcome = "weenie_missing",
                CreatureName = creatureName,
                WeenieClassId = wcid,
                IsDungeon = isDungeon,
                PathLabel = pathLabel,
                PathEnabled = enabled,
                Chance = chance,
                RollValue = roll,
                RollSucceeded = true,
                SpawnMin = spawnMin,
                SpawnMax = spawnMax,
            });
            return;
        }

        if (settings.CallForHelpMessages == null || settings.CallForHelpMessages.Count == 0)
        {
            RecordCallForHelpDebug(new CallForHelpSnapshot
            {
                UtcTime = DateTime.UtcNow,
                Outcome = "no_messages_configured",
                CreatureName = creatureName,
                WeenieClassId = wcid,
                IsDungeon = isDungeon,
                PathLabel = pathLabel,
                PathEnabled = enabled,
                Chance = chance,
                RollValue = roll,
                RollSucceeded = true,
                SpawnMin = spawnMin,
                SpawnMax = spawnMax,
            });
            return;
        }

        if (spawnMin > spawnMax)
            (spawnMin, spawnMax) = (spawnMax, spawnMin);

        string messageFormat = settings.CallForHelpMessages[ThreadSafeRandom.Next(0, settings.CallForHelpMessages.Count)];
        string message;
        try
        {
            message = string.Format(messageFormat, creatureName);
        }
        catch (FormatException)
        {
            ModManager.Log("Swarmed: CallForHelpMessages entry has invalid format string; using fallback.");
            message = $"Call for help: {creatureName}";
        }

        __instance.EnqueueBroadcast(new GameMessageSystemChat(message, ChatMessageType.Combat), WorldObject.LocalBroadcastRange, ChatMessageType.Combat);

        int count = Math.Clamp(ThreadSafeRandom.Next(spawnMin, spawnMax + 1), spawnMin, spawnMax);
        float healthMin = Math.Clamp(settings.ReinforcementHealthMin, 0.01f, 1f);
        float healthMax = Math.Clamp(settings.ReinforcementHealthMax, 0.01f, 1f);
        if (healthMin > healthMax)
            (healthMin, healthMax) = (healthMax, healthMin);
        float scaleMin = Math.Clamp(settings.ReinforcementScaleMin, 0.01f, 1f);
        float scaleMax = Math.Clamp(settings.ReinforcementScaleMax, 0.01f, 1f);
        if (scaleMin > scaleMax)
            (scaleMin, scaleMax) = (scaleMax, scaleMin);

        float xpBonusMin = Math.Clamp(settings.ReinforcementXpBonusMin, 0f, 10f);
        float xpBonusMax = Math.Clamp(settings.ReinforcementXpBonusMax, 0f, 10f);
        if (xpBonusMin > xpBonusMax)
            (xpBonusMin, xpBonusMax) = (xpBonusMax, xpBonusMin);

        int created = 0;
        for (int i = 0; i < count; i++)
        {
            ObjectGuid guid = GuidManager.NewDynamicGuid();
            WorldObject? wo = WorldObjectFactory.CreateWorldObject(weenie, guid);
            if (wo is not Creature creature)
            {
                GuidManager.RecycleDynamicGuid(guid);
                continue;
            }

            creature.Location = new Position(deathLocation);
            float healthMult = (float)ThreadSafeRandom.Next(healthMin, healthMax);
            uint newMaxHealth = (uint)Math.Max(1, originalMaxHealth * healthMult);
            creature.Health.Ranks = newMaxHealth;
            creature.Health.Current = newMaxHealth;
            float scaleMult = (float)ThreadSafeRandom.Next(scaleMin, scaleMax);
            creature.ObjScale = originalScale * scaleMult;

            if (xpBonusMax > 0f)
            {
                float bonus = (float)ThreadSafeRandom.Next(xpBonusMin, xpBonusMax);
                if (bonus > 0f)
                    creature.SetProperty(reinforcementBonusProp, bonus);
            }

            LandblockManager.AddObject(creature);
            created++;
        }

        RecordCallForHelpDebug(new CallForHelpSnapshot
        {
            UtcTime = DateTime.UtcNow,
            Outcome = created > 0 ? "spawned" : "spawn_failed",
            CreatureName = creatureName,
            WeenieClassId = wcid,
            IsDungeon = isDungeon,
            PathLabel = pathLabel,
            PathEnabled = enabled,
            Chance = chance,
            RollValue = roll,
            RollSucceeded = true,
            SpawnMin = spawnMin,
            SpawnMax = spawnMax,
            SpawnsCreated = created,
        }, created);
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.GrantXP), new Type[] { typeof(long), typeof(XpType), typeof(ShareType) })]
    public static void PreGrantXPKillBonus(ref long amount, XpType xpType, ShareType shareType, Player __instance)
    {
        if (xpType != XpType.Kill)
            return;

        var playerBonusProp = (PropertyFloat)SwarmedPlayerXpBonusPropertyId;
        double? bonus = __instance.GetProperty(playerBonusProp);
        if (!bonus.HasValue || bonus.Value <= 0)
            return;

        long extra = (long)(amount * bonus.Value);
        if (extra <= 0)
        {
            __instance.RemoveProperty(playerBonusProp);
            return;
        }

        amount += extra;
        __instance.RemoveProperty(playerBonusProp);
    }
}
