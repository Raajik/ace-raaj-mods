namespace CommonGoals;

// FakeIID stored on each personal Corpse to identify its sole permitted looter.
// Range 13001 — no collision with Loremaster (11xxx) or WorldEvents (12xxx).
internal static class CGProps
{
    internal const FakeDataId PersonalCorpseOwner = (FakeDataId)13001;
}

internal static class PersonalLoot
{
    // Postfix on Creature.Die — at this point the shared corpse has already been created
    // and filled by GenerateTreasure. We spin up additional per-player corpses here.
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.Die),
        new Type[] { typeof(DamageHistoryInfo), typeof(DamageHistoryInfo) })]
    public static void PostDie(Creature __instance, DamageHistoryInfo lastDamager, DamageHistoryInfo topDamager)
    {
        var cfg = PatchClass.Settings;
        if (cfg is null || !cfg.Enable) return;
        if (__instance.CurrentLandblock is null) return;
        if (__instance.DamageHistory?.TotalDamage is null) return;

        float totalHealth = __instance.DamageHistory.TotalHealth;
        if (totalHealth <= 0) return;

        // Collect qualifying players (have tier, dealt enough damage, are online).
        var candidates = new List<(Player player, float damageFraction)>();
        foreach (var kvp in __instance.DamageHistory.TotalDamage)
        {
            if (kvp.Value.TotalDamage <= 0) continue;

            var attacker = kvp.Value.TryGetAttacker();
            Player? p = attacker as Player;
            if (p is null && kvp.Value.PetOwner != null)
                p = kvp.Value.TryGetPetOwner();
            if (p is null) continue;

            var tier = p.GetProperty((FakeInt)11050) ?? 0;
            if (tier < cfg.RequiredAchievementTier) continue;

            float frac = kvp.Value.TotalDamage / totalHealth;
            if (frac < (float)cfg.MinDamagePercent) continue;

            candidates.Add((p, frac));
        }

        if (candidates.Count == 0) return;

        // Sort by damage descending; the top damager already has the shared corpse — skip them.
        candidates.Sort((a, b) => b.damageFraction.CompareTo(a.damageFraction));

        // Identify who owns the shared corpse (top damager or last damager — ACE uses topDamager).
        Player? sharedOwner = null;
        if (topDamager is not null)
        {
            sharedOwner = topDamager.TryGetAttacker() as Player
                ?? topDamager.TryGetPetOwner();
        }

        var lootConfig = LootConfigStore.GetLoadedOrDefault();
        int spawned = 0;

        foreach (var (player, _) in candidates)
        {
            if (spawned >= cfg.MaxPersonalCorpsesPerKill) break;
            if (player.Guid == sharedOwner?.Guid) continue; // top damager has shared corpse

            var corpse = SpawnPersonalCorpse(__instance, player, cfg, lootConfig);
            if (corpse is null) continue;

            spawned++;

            if (cfg.NotifyOnPersonalLoot)
                player.SendMessage($"[CommonGoals] Personal loot spawned nearby — {corpse.Name}.", ChatMessageType.System);
        }
    }

    static Corpse? SpawnPersonalCorpse(Creature source, Player owner, Settings cfg, LootConfig? lootConfig)
    {
        try
        {
            var corpse = WorldObjectFactory.CreateNewWorldObject("corpse") as Corpse;
            if (corpse is null) return null;

            // Visual / physics identity from the source creature.
            corpse.SetupTableId = source.SetupTableId;
            corpse.MotionTableId = source.MotionTableId;
            corpse.SoundTableId = source.SoundTableId;
            corpse.PhysicsTableId = source.PhysicsTableId;
            corpse.Scale = source.ObjScale ?? 1f;
            corpse.Name = $"{source.Name}'s Remains";

            // Place at creature's last known position.
            if (source.Location is null) return null;
            corpse.Location = new Position(source.Location);

            // Lifetime and permissions.
            corpse.TimeToRot = cfg.PersonalCorpseLifetimeSeconds;
            corpse.SetProperty(PropertyBool.NoCorpse, false);

            // Tag the owner so only they (or admin) can loot it.
            corpse.SetProperty((PropertyDataId)(int)CGProps.PersonalCorpseOwner, owner.Guid.Full);

            // Generate loot via SharedLoot LootRoller.
            int tier = cfg.LootTierOverride > 0 ? cfg.LootTierOverride : ResolveLootTier(source);
            if (lootConfig is not null)
            {
                for (int attempt = 0; attempt < 3; attempt++)
                {
                    var item = LootRoller.TryCreateRandomItem(lootConfig, tier);
                    if (item is not null)
                        corpse.TryAddToInventory(item);
                }
            }

            LandblockManager.AddObject(corpse);
            return corpse;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[CommonGoals] SpawnPersonalCorpse failed: {ex.Message}", ModManager.LogLevel.Warn);
            return null;
        }
    }

    static int ResolveLootTier(Creature source)
    {
        // Use the creature's TreasureType as a tier proxy (clamped 1–8).
        var tt = source.TreasureType ?? 0;
        if (tt <= 0) return 1;
        return Math.Clamp(tt / 100, 1, 8); // rough mapping; tune per shard
    }
}

// Gate corpse access: only the tagged owner can open / loot the personal corpse.
internal static class PersonalCorpseAccess
{
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Corpse), nameof(Corpse.CheckUseRequirements), typeof(WorldObject))]
    public static bool PreCheckUseRequirements(Corpse __instance, WorldObject activator, ref ActivationResult __result)
    {
        var ownerGuid = __instance.GetProperty((PropertyDataId)(int)CGProps.PersonalCorpseOwner);
        if (ownerGuid is null) return true; // not a personal corpse — vanilla behaviour

        if (activator is not Player p)
        {
            __result = new ActivationResult(false);
            return false;
        }

        if (p.Guid.Full == ownerGuid.Value) return true; // owner — allow

        p.SendMessage("[CommonGoals] That loot belongs to someone else.", ChatMessageType.System);
        __result = new ActivationResult(false);
        return false;
    }
}
