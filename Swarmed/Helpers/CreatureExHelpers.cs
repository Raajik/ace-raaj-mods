namespace Swarmed.Helpers;

public static class CreatureExHelpers
{
    public static Creatures.CreatureEx Create(this Creatures.CreatureExType type, Biota biota) => type switch
    {
        Creatures.CreatureExType.Unknown => new Creatures.CreatureEx(biota),
        Creatures.CreatureExType.Accurate => new Creatures.Accurate(biota),
        Creatures.CreatureExType.Banisher => new Creatures.Banisher(biota),
        Creatures.CreatureExType.Berserker => new Creatures.Berserker(biota),
        Creatures.CreatureExType.Boss => new Creatures.Boss(biota),
        Creatures.CreatureExType.Comboer => new Creatures.Comboer(biota),
        Creatures.CreatureExType.Drainer => new Creatures.Drainer(biota),
        Creatures.CreatureExType.Duelist => new Creatures.Duelist(biota),
        Creatures.CreatureExType.Evader => new Creatures.Evader(biota),
        Creatures.CreatureExType.Exploder => new Creatures.Exploder(biota),
        Creatures.CreatureExType.Healer => new Creatures.Healer(biota),
        Creatures.CreatureExType.Horde => new Creatures.Horde(biota),
        Creatures.CreatureExType.Merger => new Creatures.Merger(biota),
        Creatures.CreatureExType.Puppeteer => new Creatures.Puppeteer(biota),
        Creatures.CreatureExType.Rogue => new Creatures.Rogue(biota),
        Creatures.CreatureExType.Shielded => new Creatures.Shielded(biota),
        Creatures.CreatureExType.SpellBreaker => new Creatures.SpellBreaker(biota),
        Creatures.CreatureExType.SpellThief => new Creatures.SpellThief(biota),
        Creatures.CreatureExType.Stomper => new Creatures.Stomper(biota),
        Creatures.CreatureExType.Stunner => new Creatures.Stunner(biota),
        Creatures.CreatureExType.Tank => new Creatures.Tank(biota),
        Creatures.CreatureExType.Vampire => new Creatures.Vampire(biota),
        Creatures.CreatureExType.Warder => new Creatures.Warder(biota),
        Creatures.CreatureExType.AuraPulser => new Creatures.AuraPulser(biota),
        Creatures.CreatureExType.CorpseExploiter => new Creatures.CorpseExploiter(biota),
        _ => LogUnknownCreatureExTypeAndStunnerBiota(type, biota),
    };

#if REALM
    public static Creatures.CreatureEx Create(this Creatures.CreatureExType type, Weenie weenie, ObjectGuid guid, AppliedRuleset ruleset = null) => type switch
    {
        Creatures.CreatureExType.Accurate => new Creatures.Accurate(weenie, guid, ruleset),
        Creatures.CreatureExType.Banisher => new Creatures.Banisher(weenie, guid, ruleset),
        Creatures.CreatureExType.Berserker => new Creatures.Berserker(weenie, guid, ruleset),
        Creatures.CreatureExType.Boss => new Creatures.Boss(weenie, guid, ruleset),
        Creatures.CreatureExType.Comboer => new Creatures.Comboer(weenie, guid, ruleset),
        Creatures.CreatureExType.Drainer => new Creatures.Drainer(weenie, guid, ruleset),
        Creatures.CreatureExType.Duelist => new Creatures.Duelist(weenie, guid, ruleset),
        Creatures.CreatureExType.Evader => new Creatures.Evader(weenie, guid, ruleset),
        Creatures.CreatureExType.Exploder => new Creatures.Exploder(weenie, guid, ruleset),
        Creatures.CreatureExType.Healer => new Creatures.Healer(weenie, guid, ruleset),
        Creatures.CreatureExType.Horde => new Creatures.Horde(weenie, guid, ruleset),
        Creatures.CreatureExType.Merger => new Creatures.Merger(weenie, guid, ruleset),
        Creatures.CreatureExType.Puppeteer => new Creatures.Puppeteer(weenie, guid, ruleset),
        Creatures.CreatureExType.Rogue => new Creatures.Rogue(weenie, guid, ruleset),
        Creatures.CreatureExType.Shielded => new Creatures.Shielded(weenie, guid, ruleset),
        Creatures.CreatureExType.SpellBreaker => new Creatures.SpellBreaker(weenie, guid, ruleset),
        Creatures.CreatureExType.SpellThief => new Creatures.SpellThief(weenie, guid, ruleset),
        Creatures.CreatureExType.Stomper => new Creatures.Stomper(weenie, guid, ruleset),
        Creatures.CreatureExType.Stunner => new Creatures.Stunner(weenie, guid, ruleset),
        Creatures.CreatureExType.Tank => new Creatures.Tank(weenie, guid, ruleset),
        Creatures.CreatureExType.Vampire => new Creatures.Vampire(weenie, guid, ruleset),
        Creatures.CreatureExType.Warder => new Creatures.Warder(weenie, guid, ruleset),
        Creatures.CreatureExType.AuraPulser => new Creatures.AuraPulser(weenie, guid, ruleset),
        Creatures.CreatureExType.CorpseExploiter => new Creatures.CorpseExploiter(weenie, guid, ruleset),
        _ => LogUnknownCreatureExTypeAndStunnerWeenieRealm(type, weenie, guid, ruleset),
    };
#else
    public static Creatures.CreatureEx Create(this Creatures.CreatureExType type, Weenie weenie, ObjectGuid guid) => type switch
    {
        Creatures.CreatureExType.Accurate => new Creatures.Accurate(weenie, guid),
        Creatures.CreatureExType.Banisher => new Creatures.Banisher(weenie, guid),
        Creatures.CreatureExType.Berserker => new Creatures.Berserker(weenie, guid),
        Creatures.CreatureExType.Boss => new Creatures.Boss(weenie, guid),
        Creatures.CreatureExType.Comboer => new Creatures.Comboer(weenie, guid),
        Creatures.CreatureExType.Drainer => new Creatures.Drainer(weenie, guid),
        Creatures.CreatureExType.Duelist => new Creatures.Duelist(weenie, guid),
        Creatures.CreatureExType.Evader => new Creatures.Evader(weenie, guid),
        Creatures.CreatureExType.Exploder => new Creatures.Exploder(weenie, guid),
        Creatures.CreatureExType.Healer => new Creatures.Healer(weenie, guid),
        Creatures.CreatureExType.Horde => new Creatures.Horde(weenie, guid),
        Creatures.CreatureExType.Merger => new Creatures.Merger(weenie, guid),
        Creatures.CreatureExType.Puppeteer => new Creatures.Puppeteer(weenie, guid),
        Creatures.CreatureExType.Rogue => new Creatures.Rogue(weenie, guid),
        Creatures.CreatureExType.Shielded => new Creatures.Shielded(weenie, guid),
        Creatures.CreatureExType.SpellBreaker => new Creatures.SpellBreaker(weenie, guid),
        Creatures.CreatureExType.SpellThief => new Creatures.SpellThief(weenie, guid),
        Creatures.CreatureExType.Stomper => new Creatures.Stomper(weenie, guid),
        Creatures.CreatureExType.Stunner => new Creatures.Stunner(weenie, guid),
        Creatures.CreatureExType.Tank => new Creatures.Tank(weenie, guid),
        Creatures.CreatureExType.Vampire => new Creatures.Vampire(weenie, guid),
        Creatures.CreatureExType.Warder => new Creatures.Warder(weenie, guid),
        Creatures.CreatureExType.AuraPulser => new Creatures.AuraPulser(weenie, guid),
        Creatures.CreatureExType.CorpseExploiter => new Creatures.CorpseExploiter(weenie, guid),
        _ => LogUnknownCreatureExTypeAndStunnerWeenie(type, weenie, guid),
    };
#endif

    static Creatures.CreatureEx LogUnknownCreatureExTypeAndStunnerBiota(Creatures.CreatureExType type, Biota biota)
    {
        ModManager.Log($"Swarmed: unrecognized CreatureExType {(int)type} ({type}); using Stunner.");
        return new Creatures.Stunner(biota);
    }

#if REALM
    static Creatures.CreatureEx LogUnknownCreatureExTypeAndStunnerWeenieRealm(Creatures.CreatureExType type, Weenie weenie, ObjectGuid guid, AppliedRuleset ruleset)
    {
        ModManager.Log($"Swarmed: unrecognized CreatureExType {(int)type} ({type}); using Stunner.");
        return new Creatures.Stunner(weenie, guid, ruleset);
    }
#else
    static Creatures.CreatureEx LogUnknownCreatureExTypeAndStunnerWeenie(Creatures.CreatureExType type, Weenie weenie, ObjectGuid guid)
    {
        ModManager.Log($"Swarmed: unrecognized CreatureExType {(int)type} ({type}); using Stunner.");
        return new Creatures.Stunner(weenie, guid);
    }
#endif
}
