namespace BetterSupportSkills.Skills;

// Loyalty trained+: passive heal per second to self and fellowship allies within range (spec = double trained rate).
[HarmonyPatchCategory(nameof(Features.LoyaltySkill))]
internal static class LoyaltyHealingAura
{
    static readonly ConcurrentDictionary<uint, double> LastAuraUnixByPlayer = new();

    [HarmonyPostfix]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.Heartbeat), new Type[] { typeof(double) })]
    public static void PostHeartbeat(double currentUnixTime, WorldObject __instance)
    {
        if (__instance is not Player player)
            return;

        if (PatchClass.Settings is not { EnableLoyalty: true } settings)
            return;

        if (!settings.Loyalty.EnableHealingAura)
            return;

        var loyalty = player.GetCreatureSkill(Skill.Loyalty);
        if (loyalty.AdvancementClass < SkillAdvancementClass.Trained)
            return;

        LoyaltySettings cfg = settings.Loyalty;
        double ratePerSecond = loyalty.AdvancementClass == SkillAdvancementClass.Specialized
            ? cfg.PercentMaxHealthPerSecondSpecialized
            : cfg.PercentMaxHealthPerSecondTrained;

        if (ratePerSecond <= 0 || cfg.AuraRange <= 0)
            return;

        uint pid = player.Guid.Full;
        double last = LastAuraUnixByPlayer.GetValueOrDefault(pid);
        if (last <= 0)
            last = currentUnixTime - 5.0;

        double dt = currentUnixTime - last;
        if (dt < 0.25)
            return;

        dt = Math.Clamp(dt, 0.25, 20.0);
        LastAuraUnixByPlayer[pid] = currentUnixTime;

        float range = (float)cfg.AuraRange;
        List<Player> recipients = CollectRecipients(player, range);

        foreach (Player recipient in recipients)
        {
            if (recipient.IsDead || recipient.Health is null)
                continue;

            uint maxHp = recipient.Health.MaxValue;
            if (maxHp == 0)
                continue;

            if (recipient.Health.Current >= recipient.Health.MaxValue)
                continue;

            double heal = maxHp * ratePerSecond * dt;
            if (heal < 0.5)
                continue;

            int healInt = (int)Math.Min(int.MaxValue, Math.Round(heal));
            if (healInt < 1)
                healInt = 1;

            recipient.UpdateVitalDelta(recipient.Health, healInt);
        }
    }

    static List<Player> CollectRecipients(Player source, float range)
    {
        var list = new List<Player> { source };

        if (source.Fellowship is null)
            return list;

        var members = source.Fellowship.GetFellowshipMembers();
        foreach (Player? fellow in members.Values)
        {
            if (fellow is null || fellow.IsDead || fellow.Guid == source.Guid)
                continue;

            if (fellow.Location is null || source.Location is null)
                continue;

            if (fellow.GetDistance(source) > range)
                continue;

            list.Add(fellow);
        }

        return list;
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.PlayerEnterWorld))]
    public static void PostEnterWorld(Player __instance)
    {
        LastAuraUnixByPlayer.TryRemove(__instance.Guid.Full, out _);
    }
}
