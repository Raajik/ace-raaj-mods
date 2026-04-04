namespace Swarmed.Creatures;

[HarmonyPatchCategory(nameof(CreatureExType.AuraPulser))]
public class AuraPulser : CreatureEx
{
    public AuraPulser(Biota biota) : base(biota)
    {
    }

#if REALM
    public AuraPulser(Weenie weenie, ObjectGuid guid, AppliedRuleset ruleset) : base(weenie, guid, ruleset)
#else
    public AuraPulser(Weenie weenie, ObjectGuid guid) : base(weenie, guid)
#endif
    {
    }

    protected override void Initialize()
    {
        base.Initialize();

        Name = "Pulsing " + Name;

        var ap = PatchClass.CurrentSettings?.AuraPulser;
        float interval = ap?.PulseIntervalSeconds ?? 6f;
        HeartbeatInterval = Math.Clamp(interval, 2f, 60f);
        ReinitializeHeartbeats();
    }

    public override void Heartbeat(double currentUnixTime)
    {
        base.Heartbeat(currentUnixTime);

        var ap = PatchClass.CurrentSettings?.AuraPulser;
        float radius = Math.Clamp(ap?.PulseRadiusMeters ?? 10f, 1f, 40f);
        float frac = Math.Clamp(ap?.DamageFractionOfPulserMaxHealth ?? 0.04f, 0.001f, 0.5f);
        int maxTargets = Math.Clamp(ap?.MaxPulseTargets ?? 10, 1, 32);

        uint selfMax = Health?.MaxValue ?? 1;
        float pulseDamage = Math.Max(1f, selfMax * frac);

        WorldObject center = AttackTarget ?? this;
        int applied = 0;

        if (AttackTarget is Player splashPlayer)
        {
            foreach (Creature c in splashPlayer.GetSplashTargets(center, TargetExclusionFilter.OnlyCreature, radius))
            {
                if (applied >= maxTargets)
                    break;
                if (c == this || c.IsDead || !c.Attackable)
                    continue;

                c.TakeDamage(this, DamageType.Nether, pulseDamage, false);
                applied++;
            }

            foreach (Player pl in splashPlayer.GetSplashTargets(center, TargetExclusionFilter.OnlyPlayer, radius))
            {
                if (applied >= maxTargets)
                    break;
                if (!pl.Attackable || pl.IsDead)
                    continue;

                pl.TakeDamage(this, DamageType.Nether, pulseDamage, false);
                applied++;
            }

            return;
        }

        Landblock? lb = CurrentLandblock;
        ICollection<WorldObject>? raw = lb?.GetWorldObjectsForPhysicsHandling();
        if (raw is null)
            return;

        foreach (WorldObject wo in raw)
        {
            if (applied >= maxTargets)
                break;
            if (wo is Creature c && c != this && !c.IsDead && c.Attackable && c.GetDistance(center) <= radius)
            {
                c.TakeDamage(this, DamageType.Nether, pulseDamage, false);
                applied++;
            }
            else if (wo is Player pl && !pl.IsDead && pl.Attackable && pl.GetDistance(center) <= radius)
            {
                pl.TakeDamage(this, DamageType.Nether, pulseDamage, false);
                applied++;
            }
        }
    }
}
