namespace Swarmed.Creatures;

[HarmonyPatchCategory(nameof(CreatureExType.Duelist))]
public class Duelist : CreatureEx
{
    public Duelist(Biota biota) : base(biota) { }
#if REALM
    public Duelist(Weenie weenie, ObjectGuid guid, AppliedRuleset ruleset) : base(weenie, guid, ruleset)
#else
    public Duelist(Weenie weenie, ObjectGuid guid) : base(weenie, guid)
#endif
    { }

    //Mutate from the original weenie
    protected override void Initialize()
    {
        base.Initialize();

        Name = "Dueling " + Name;
    }

    //Custom behavior
    public override void Heartbeat(double currentUnixTime)
    {
        base.Heartbeat(currentUnixTime);
    }

    // Frontal "parry" cone: same facing as the attacker used to zero all damage (felt immune in melee).
    // Now incoming damage in the cone is mitigated instead of negated.
    const float HalfAngle = 40.0f / 2;
    const float ParryDamageMultiplier = 0.45f;

    public override uint TakeDamage(WorldObject source, DamageType damageType, float amount, bool crit = false)
    {
        if (source is not Player p)
            return base.TakeDamage(source, damageType, amount, crit);

        var angle = GetAngle(p);
        if (Math.Abs(angle) > HalfAngle)
            return base.TakeDamage(source, damageType, amount, crit);

        float mitigated = amount * ParryDamageMultiplier;
        if (mitigated < 1f && amount >= 1f)
            mitigated = 1f;

        p.SendMessage($"{Name} parries part of your strike ({angle:F0}° / ±{HalfAngle:F0}°): {(int)amount} -> {(int)mitigated}.");
        return base.TakeDamage(source, damageType, mitigated, crit);
    }
}