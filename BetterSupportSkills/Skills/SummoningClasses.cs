using System.Text;
using ACE.Database;
using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.Factories;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;
using HarmonyLib;

namespace BetterSupportSkills.Skills;

[CommandCategory(nameof(Features.SummoningClasses))]
[HarmonyPatchCategory(nameof(Features.SummoningClasses))]
public static class SummoningClasses
{
    [ThreadStatic]
    static bool _isInSummoningCast;

    // -- Pet Tracking ----------------------------------------------------
    static readonly ConcurrentDictionary<uint, List<CombatPet>> ActiveSummons = new();
    static readonly ConcurrentDictionary<uint, byte> TrackedPetGuids = new();
    internal static readonly ConcurrentDictionary<uint, string> PlayerClassCache = new();
    static readonly ConcurrentDictionary<uint, Dictionary<string, DateTime>> UnlockNotifiedCooldown = new();
    static readonly TimeSpan UnlockNotifyCooldown = TimeSpan.FromMinutes(15);

    // -- Combat Tracking -------------------------------------------------
    static readonly ConcurrentDictionary<uint, DateTime> LastCombatHitUtc = new();
    static readonly ConcurrentDictionary<uint, DateTime> LastSummonPulseUtc = new();
    static readonly TimeSpan CombatTimeout = TimeSpan.FromSeconds(10);
    static readonly TimeSpan SummonPulseInterval = TimeSpan.FromSeconds(1);

    // -- Flavor Messages -------------------------------------------------

    static readonly Dictionary<string, string[]> UnlockNeededMessages = new()
    {
        ["Druid"] = new[]
        {
            "The winds carry whispers of ancient groves. You sense the calling of the Druid, but your bond with Life Magic is not yet strong enough.",
            "A wasp lands gently on your shoulder and flies away. The path of the Druid is close, but your Life Magic must be specialized to answer.",
            "The forest spirits watch you curiously. They will only answer to a true Druid — one who has specialized both Summoning and Life Magic.",
            "You feel the pulse of nature, faint but unmistakable. The Druid's path awaits those who have specialized Summoning and Life Magic.",
            "Leaves swirl around you in an unseen breeze. The wild calls, but you lack the specialized skill in Life Magic and Summoning to answer.",
            "A stag watches you from the treeline before vanishing. Nature's trust is earned through dedication, not mere interest.",
            "The soil beneath your feet feels alive, yet distant. The Druid's communion requires specialized Summoning and Life Magic.",
            "You dream of swaying canopies and buzzing hives. Dreams are not enough — specialize both skills to awaken the Druid within.",
            "A druidic circle appears briefly in the corner of your vision, then fades. Your potential is noted, but your skills are lacking.",
            "The scent of rain and pollen fills your senses. The path is there, hidden behind the threshold of true specialization.",
            "Vines curl toward you, then withdraw. Nature courts you, but will not commit until you specialize the required arts.",
            "You hear the distant song of the Great Hive. Only those with specialized Summoning and Life Magic may join the chorus.",
            "A glowing seed appears in your palm, then crumbles to dust. The Druid's gift requires stronger foundations.",
            "Bees circle your head three times and depart. An omen — your Summoning and Life Magic must both be specialized.",
            "The Green whispers your name, but softly. Speak louder through your specialized skills, and it shall answer in full.",
            "You stand at the edge of an ancient grove, barred by mist. Clear it with specialized Summoning and Life Magic.",
            "A wolf howls in the distance, and you understand the meaning: 'Not yet, but soon.' Commit to the path.",
            "The roots of the world pulse beneath you. They sense your potential, but demand proof through specialization.",
            "A butterfly with wings of emerald light flutters past. It leads to the Druid's path, but you cannot yet follow.",
            "The Old Growth rumbles in its slumber. Wake it with mastery — specialize both Summoning and Life Magic."
        },
        ["Elementalist"] = new[]
        {
            "The air around you crackles with unspent energy. The Elementalist's path shimmers before you, but your War Magic remains too weak.",
            "A spark leaps from your fingertips to the ground. The elements notice you, but demand specialized mastery in Summoning and War Magic.",
            "You feel the heat of a forge that exists only in your mind. Stoke it — specialize both War Magic and Summoning.",
            "Frost gathers on your armor, then melts away. The elements tease you. Prove yourself with skill to earn their loyalty.",
            "A pebble floats for a heartbeat, then drops. Your telekinetic potential is real, but needs specialized Summoning and War Magic to bloom.",
            "The sky darkens for exactly one second above you. The Primal forces are watching, waiting for your mastery to manifest.",
            "Static electricity makes your hair stand on end. The Elementalist within you stirs, but cannot yet break free.",
            "You see four motes of light — red, blue, white, yellow — dancing in a circle. They scatter before you can grasp them.",
            "The echo of a thunderclap follows your every step for a moment. The storm knows your name, but not your strength.",
            "A gust of wind shapes itself into an arrow, pointing forward, then dissipates. Follow it through mastery.",
            "Your shadow flickers with an inner flame that isn't yours. The Primalist's power lurks within, gated by your specialized skill.",
            "Magma veins glow faintly beneath the earth you walk on. The world's fire responds to those with true War Magic mastery.",
            "Crystals hum in your pack, resonating with nearby ley lines. Attune yourself fully — specialize both required skills.",
            "A raindrop falls upward, just one. The elements are playful, but they will not serve a master who has not earned their rank.",
            "You taste ozone and copper on your tongue. The storm is close. Reach out with specialized Summoning and War Magic.",
            "An elemental rune burns itself into the dirt at your feet, then fades. Learn its meaning through mastery.",
            "The air pressure shifts, making your ears pop. Something vast is near — an Elementalist's power, waiting for its vessel.",
            "Sparks form a constellation above your head, then scatter like frightened fireflies. They need a stronger anchor.",
            "You hear the heartbeat of a volcano, slow and immense. It synchronizes with yours for three beats, then falls silent.",
            "The four elements hold a council, and your name is spoken. The verdict: 'Prove it with specialized skill.'"
        },
        ["Necromancer"] = new[]
        {
            "A chill passes through you, though the sun is bright. The grave whispers your name, but your Void Magic is too shallow.",
            "A raven watches you from a dead branch, then caws three times. The Necromancer's path is not for the half-trained.",
            "Your reflection in still water shows a skull for exactly one second. The veil is thin, but your Void Magic must be specialized.",
            "You find a bone coin in your pocket that you don't remember owning. The dead invest in those who show true mastery.",
            "The ground beneath a fresh grave trembles, then settles. They know you, but will not rise until you command with specialized skill.",
            "A ghostly hand brushes your shoulder, then withdraws. Even spirits are shy around those who haven't proven their power.",
            "You smell grave dirt and formaldehyde on the wind. The Necromancer's garden beckons, but the gate is locked by skill.",
            "A skeleton's jawbone chatters on its own. It is laughing — not cruelly, but at your impatience. Specialize both arts.",
            "Your shadow stretches too long for the angle of the sun. Something walks behind you, waiting for your mastery to match its own.",
            "A funeral bell tolls in a town you cannot see. It rings for your potential, not your death. Answer it with skill.",
            "The pages of a nearby book turn to a diagram of anatomy you didn't know existed. Knowledge is not enough — power is required.",
            "You feel the weight of a hundred unburied souls pressing on your mind. Only specialized Void Magic and Summoning can bear it.",
            "A wisp of green flame dances on your palm, then gutters out. The necrotic fire needs more fuel — your skill must grow.",
            "The dead speak to you in dreams, but their voices are muffled. Sharpen your Void Magic through specialization to hear them clearly.",
            "A tombstone etches itself into the bark of a tree near you. Your name is not on it yet, but the inscription is waiting.",
            "You hear the clatter of bones assembling themselves in an empty room. They are practicing for your arrival. Don't keep them waiting.",
            "Your blood runs cold for no reason, then warms again. The Necromancer's touch is upon you, but not yet within you.",
            "A phantasmal choir sings a single dirge note in your ears. They are calling you home — the home of true mastery.",
            "The concept of decay fascinates you more than it should. Indulge that fascination. Master it with specialized skill.",
            "A skull rolled by the wind stops at your feet, staring upward. It sees potential. Fulfill it with Summoning and Void Magic mastery."
        },
        ["Enchanter"] = new[]
        {
            "The world seems slightly more colorful for a heartbeat, then dulls again. The Enchanter's lens is cracked until your Creature Enchantment deepens.",
            "You feel the weave of magic around creatures, tangled and knotted. Untangle it with specialized Summoning and Creature Enchantment.",
            "A stray enchantment from a nearby battle washes over you harmlessly. It recognizes kinship, but your skill is not yet sufficient.",
            "Animals freeze when you look at them, then flee. They sense the Enchanter within you, still caged by insufficient specialization.",
            "A scroll of Creature Enchantment unfurls in your mind's eye, but the text is blurred. Specialize the skill to read it clearly.",
            "You see the threads of influence connecting every living thing. They are too fine for your fingers to grasp just yet.",
            "A melody plays that only you can hear — the song of dominated wills. Learn its notes through specialized mastery.",
            "Your reflection in a window smiles a second after you do. The copy knows something you don't: that mastery is coming.",
            "The air shimmers with half-formed glamours wherever you walk. Your potential leaks out; contain it with true skill.",
            "A puppet without strings turns its head toward you. It recognizes a future master, but awaits the required power.",
            "You feel the heartbeat of every beast in a hundred-yard radius. Empathy is the first step; control comes through specialization.",
            "An invisible hand writes formulas in the dust on your armor. The equations of the Enchanter, still too complex for you.",
            "A bird lands on your finger and speaks a single word in a language you almost understand. Almost is not enough.",
            "The scales of a nearby lizard shift colors to match your mood. It is drawn to you, but your Creature Enchantment must deepen.",
            "You dream of a menagerie where every creature bears your mark. Dreams require specialized Summoning and Creature Enchantment to become real.",
            "A compulsion spell dissipates inches from your face, cast by no one. Your own untapped power, warning you to grow stronger.",
            "The eyes of a statue follow you. It was not enchanted before you walked by. The latent magic is there; shape it with skill.",
            "You taste honey and iron on your tongue — the flavor of charm and binding. Acquire the taste fully through specialization.",
            "A circle of mushrooms grows where you stood only a minute ago. The fey sense your potential, but respect only mastery.",
            "The Enchanter's sigil burns in the air before you, incomplete. Finish it with specialized skill in both required arts."
        },
        ["Artificer"] = new[]
        {
            "A wisp of light circles your head three times, then vanishes. The Artificer's companion is shy until your Item Enchantment reaches mastery.",
            "Every item you touch feels heavier for a heartbeat, as if laden with potential enchantments. Lighten the load with specialized skill.",
            "You see the invisible seams where magic is stitched into objects. Your fingers itch to pull them, but your skill is not yet enough.",
            "A discarded wand at your feet twitches toward you. It senses a future Artificer, but demands proof through mastery.",
            "The mana in the air crystallizes around your hands for a moment, then melts. You are a crucible, but not yet hot enough.",
            "You hear the whispered names of a thousand enchanted items, all at once, then silence. The chorus awaits your conducting hand.",
            "A spark of Item Enchantment jumps from a stranger's ring to your finger. The magic wants to flow through you — open the channel with skill.",
            "You understand the purpose of a magical device just by glancing at it. Understanding is the first step; mastery is the destination.",
            "The runes on your equipment glow brighter when you are near. They are cheering you on toward specialized Item Enchantment and Summoning.",
            "An alchemist's flask shatters in your pack, but the liquid holds its shape for a second. Your latent magic is playful; discipline it.",
            "You see the ghostly outline of an enchantment that could be added to your weapon. The blueprint is clear, but your hands cannot yet build it.",
            "A wisp manifests in your peripheral vision whenever you cast a spell. It is curious about you. Impress it with specialized mastery.",
            "The metal in your armor resonates with your heartbeat, humming a single note. Tune it to the chord of true mastery.",
            "You intuitively know how to improve a stranger's magical item, but lack the power to execute the improvement. Specialize both arts.",
            "A shower of spectral sparks erupts from your fingers when you snap them. The Artificer's signature, written in potential.",
            "Every magical item you see has a second, hidden aura that others miss. You can almost read the aura. Almost.",
            "A tool you have never held before feels perfectly balanced in your grip. The Artificer's instinct is there; the power must catch up.",
            "You hear the soft chiming of a thousand enchanted bells, all slightly out of tune. Only a true Artificer can harmonize them.",
            "The world of objects opens itself to you like a book written in a language you are still learning. Finish the lesson with skill.",
            "A wisp-shaped constellation appears in the dust at your feet. The pattern is an invitation — RSVP with specialized Item Enchantment and Summoning."
        }
    };

    // -- Artificer Spell Cache -------------------------------------------
    static readonly Dictionary<int, uint> ImperilSpellIds = new();
    static readonly Dictionary<int, uint> DrainHealthSpellIds = new();
    static bool _spellsCached = false;
    static readonly object ArtificerSpellCacheLock = new();



    // -- WCID Pools ------------------------------------------------------

    public static readonly uint[][] DruidWasps = new[]
    {
        new[] { 49136u, 49143u, 49150u, 49157u },
        new[] { 49137u, 49144u, 49151u, 49158u },
        new[] { 49138u, 49145u, 49152u, 49159u },
        new[] { 49139u, 49146u, 49153u, 49160u },
        new[] { 49140u, 49147u, 49154u, 49161u },
        new[] { 49141u, 49148u, 49155u, 49162u },
        new[] { 49142u, 49149u, 49156u, 49135u },
    };

    public static readonly uint[][] DruidGrievvers = new[]
    {
        new[] { 49051u, 49052u, 49053u, 49054u },
        new[] { 49055u, 49056u, 49057u, 49058u },
        new[] { 49059u, 49060u, 49061u, 49062u },
        new[] { 49063u, 49064u, 49065u, 49066u },
        new[] { 49067u, 49068u, 49069u, 49070u },
        new[] { 49071u, 49072u, 49073u, 49074u },
        new[] { 49075u, 49076u, 49077u, 49078u },
    };

    public static readonly uint[][] DruidMoars = new[]
    {
        new[] { 49107u, 49108u, 49109u, 49110u },
        new[] { 49111u, 49112u, 49113u, 49114u },
        new[] { 49115u, 49116u, 49117u, 49118u },
        new[] { 49119u, 49120u, 49121u, 49122u },
        new[] { 49123u, 49124u, 49125u, 49126u },
        new[] { 49127u, 49128u, 49129u, 49130u },
        new[] { 49131u, 49132u, 49133u, 49134u },
    };

    public static readonly uint[][] ElementalistElementals = new[]
    {
        new[] { 49031u, 48960u, 49045u, 49038u },
        new[] { 49032u, 48962u, 49046u, 49039u },
        new[] { 49033u, 48964u, 49047u, 49040u },
        new[] { 49034u, 48966u, 49048u, 49041u },
        new[] { 49035u, 48968u, 49049u, 49042u },
        new[] { 49036u, 48970u, 49050u, 49043u },
        new[] { 49030u, 48958u, 49044u, 49037u },
    };

    public static readonly uint[][] ElementalistKnaths = new[]
    {
        new[] { 49100u, 49101u, 49102u, 49103u },
        new[] { 49104u, 49105u, 49106u, 49079u },
        new[] { 49080u, 49081u, 49082u, 49083u },
        new[] { 49084u, 49085u, 49086u, 49087u },
        new[] { 49088u, 49089u, 49090u, 49091u },
        new[] { 49092u, 49093u, 49094u, 49095u },
        new[] { 49096u, 49097u, 49098u, 49099u },
    };

    // Elementalist wisps: organized by ELEMENT (fire/cold/electric/acid), varies by tier
    // Use for Elementalist class (War Magic scaling)
    public static readonly uint[][] ElementalistWisps = new[]
    {
        new[] { 49184u, 49185u, 49186u, 49187u },
        new[] { 49188u, 49189u, 49190u, 49191u },
        new[] { 49192u, 49193u, 49194u, 49195u },
        new[] { 49196u, 49197u, 49198u, 49199u },
        new[] { 49200u, 49201u, 49202u, 49203u },
        new[] { 49204u, 49205u, 49206u, 49207u },
        new[] { 49208u, 49209u, 49210u, 49211u },
    };

    // Artificer wisps: reorganized by LEVEL (all wisps at same tier have same level)
    // Matches Druid/Necro/etc pattern for consistent pet scaling
    public static readonly uint[][] ArtificerWispsByLevel = new[]
    {
        new[] { 49185u, 49192u, 49199u, 49206u }, // Tier 0: level 50
        new[] { 49186u, 49193u, 49200u, 49207u }, // Tier 1: level 80
        new[] { 49187u, 49194u, 49201u, 49208u }, // Tier 2: level 100
        new[] { 49188u, 49195u, 49202u, 49209u }, // Tier 3: level 125
        new[] { 49189u, 49196u, 49203u, 49210u }, // Tier 4: level 150
        new[] { 49190u, 49197u, 49204u, 49211u }, // Tier 5: level 180
        new[] { 49184u, 49191u, 49198u, 49205u }, // Tier 6: level 200
    };

    public static readonly uint[][] ElementalistGolems = new[]
    {
        new[] { 48878u, 48880u, 48882u, 48884u },
        new[] { 48886u, 48888u, 48890u, 48891u },
        new[] { 48878u, 48880u, 48882u, 48884u },
        new[] { 48886u, 48888u, 48890u, 48891u },
        new[] { 48878u, 48880u, 48882u, 48884u },
        new[] { 48886u, 48888u, 48890u, 48891u },
        new[] { 48878u, 48880u, 48882u, 48884u },
    };

    public static readonly uint[][] ElementalistGrievvers = new[]
    {
        new[] { 49051u, 49052u, 49053u, 49054u },
        new[] { 49055u, 49056u, 49057u, 49058u },
        new[] { 49059u, 49060u, 49061u, 49062u },
        new[] { 49063u, 49064u, 49065u, 49066u },
        new[] { 49067u, 49068u, 49069u, 49070u },
        new[] { 49071u, 49072u, 49073u, 49074u },
        new[] { 49075u, 49076u, 49077u, 49078u },
    };

    public static readonly uint[][] ElementalistMoars = new[]
    {
        new[] { 49107u, 49108u, 49109u, 49110u },
        new[] { 49111u, 49112u, 49113u, 49114u },
        new[] { 49115u, 49116u, 49117u, 49118u },
        new[] { 49119u, 49120u, 49121u, 49122u },
        new[] { 49123u, 49124u, 49125u, 49126u },
        new[] { 49127u, 49128u, 49129u, 49130u },
        new[] { 49131u, 49132u, 49133u, 49134u },
    };

    public static readonly uint[][] NecromancerSkeletons = new[]
    {
        new[] { 49213u, 49220u, 49227u, 48943u },
        new[] { 49214u, 49221u, 49228u, 48949u },
        new[] { 49215u, 49222u, 49229u, 48950u },
        new[] { 49216u, 49223u, 49230u, 48951u },
        new[] { 49217u, 49224u, 49231u, 48952u },
        new[] { 49218u, 49225u, 49232u, 48953u },
        new[] { 49212u, 49219u, 49226u, 48955u },
    };

    public static readonly uint[][] NecromancerSpectres = new[]
    {
        new[] { 49393u, 49400u, 49407u, 49414u },
        new[] { 49394u, 49401u, 49408u, 49415u },
        new[] { 49395u, 49402u, 49409u, 49416u },
        new[] { 49396u, 49403u, 49410u, 49417u },
        new[] { 49397u, 49404u, 49411u, 49418u },
        new[] { 49398u, 49405u, 49412u, 49419u },
        new[] { 49399u, 49406u, 49413u, 49420u },
    };

    public static readonly uint[][] NecromancerZombies = new[]
    {
        new[] { 49000u, 49003u, 49004u, 49005u },
        new[] { 49006u, 49007u, 49008u, 49009u },
        new[] { 49010u, 49011u, 49012u, 49013u },
        new[] { 49014u, 49015u, 49016u, 49017u },
        new[] { 49018u, 49019u, 49020u, 49021u },
        new[] { 49022u, 49023u, 49024u, 49025u },
        new[] { 49026u, 49027u, 49028u, 49029u },
    };

    public static readonly uint[][] EnchanterGolems = ElementalistGolems;
    // OLD: public static readonly uint[][] ArtificerWisps = ElementalistWisps;
    // Now using level-organized array for consistent scaling

    // -- Pet Type Lookup -------------------------------------------------

    static readonly Dictionary<string, uint[][]> PetTypePools = new(StringComparer.OrdinalIgnoreCase)
    {
        { "Wasps", DruidWasps },
        { "Grievvers", DruidGrievvers },
        { "Moars", DruidMoars },
        { "Elementals", ElementalistElementals },
        { "K'naths", ElementalistKnaths },
        { "Wisps", ElementalistWisps },
        { "Golems", ElementalistGolems },
        { "Grievvers_Elementalist", ElementalistGrievvers },
        { "Moars_Elementalist", ElementalistMoars },
        { "Skeletons", NecromancerSkeletons },
        { "Spectres", NecromancerSpectres },
        { "Zombies", NecromancerZombies },
        { "Golems_Enchanter", EnchanterGolems },
        { "Wisps_Artificer", ArtificerWispsByLevel },
    };

    // -- Spell Cache Initialization --------------------------------------

    public static void CacheArtificerSpells()
    {
        lock (ArtificerSpellCacheLock)
        {
            if (_spellsCached && ImperilSpellIds.Count >= 8)
                return;

            try
            {
                ImperilSpellIds.Clear();
                DrainHealthSpellIds.Clear();

                // Imperil Other I-VIII (correct spell IDs)
                var imperilIds = new[]
                {
                    25u,   // Imperil Other I
                    1323u, // Imperil Other II
                    1324u, // Imperil Other III
                    1325u, // Imperil Other IV
                    1326u, // Imperil Other V
                    1327u, // Imperil Other VI
                    (uint)SpellId.ImperilOther7,  // 2210
                    (uint)SpellId.ImperilOther8   // 2211
                };
                for (int i = 0; i < imperilIds.Length; i++)
                    ImperilSpellIds[i] = imperilIds[i];

                // Drain Health Other I-VIII (note: no tier 7-8 in vanilla, using placeholders)
                var drainIds = new[]
                {
                    1237u, // Drain Health Other I
                    1238u, // Drain Health Other II
                    1239u, // Drain Health Other III
                    1240u, // Drain Health Other IV
                    1241u, // Drain Health Other V
                    1242u, // Drain Health Other VI
                    1242u, // Drain Health tier 7 (no vanilla spell, reuse VI)
                    1242u  // Drain Health tier 8 (no vanilla spell, reuse VI)
                };
                for (int i = 0; i < drainIds.Length; i++)
                    DrainHealthSpellIds[i] = drainIds[i];

                _spellsCached = true;
                ModManager.Log("[BSS Summoning] Artificer spell cache initialized (tiers 0-8)", ModManager.LogLevel.Info);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[BSS Summoning] Failed to cache Artificer spells: {ex.Message}", ModManager.LogLevel.Error);
            }
        }
    }

    // -- Class Unlock Logic ----------------------------------------------

    static bool IsClassUnlocked(Player player, string className)
    {
        return AchievementUnlockedApi.HasClassUnlocked(player, className);
    }

    static bool IsClassUnlockedAccountWide(Player player, string className)
    {
        return AchievementUnlockedApi.IsClassUnlockedAccountWide(player, className);
    }

    static string GetSkillName(Skill skill)
    {
        return skill switch
        {
            Skill.LifeMagic => "Life Magic",
            Skill.WarMagic => "War Magic",
            Skill.VoidMagic => "Void Magic",
            Skill.CreatureEnchantment => "Creature Enchantment",
            Skill.ItemEnchantment => "Item Enchantment",
            Skill.Summoning => "Summoning",
            Skill.DirtyFighting => "Dirty Fighting",
            Skill.DualWield => "Dual Wield",
            Skill.FinesseWeapons => "Finesse Weapons",
            Skill.HeavyWeapons => "Heavy Weapons",
            Skill.TwoHandedCombat => "Two Handed Combat",
            Skill.Recklessness => "Recklessness",
            Skill.LightWeapons => "Light Weapons",
            Skill.Shield => "Shield",
            Skill.MeleeDefense => "Melee Defense",
            _ => skill.ToString()
        };
    }

    static void NotifyUnlockNeeded(Player player, string className)
    {
        var cooldowns = UnlockNotifiedCooldown.GetOrAdd(player.Guid.Full, _ => new Dictionary<string, DateTime>());

        // Check 15-minute cooldown per class
        if (cooldowns.TryGetValue(className, out var lastNotified))
        {
            if (DateTime.UtcNow - lastNotified < UnlockNotifyCooldown)
                return;
        }

        if (!UnlockNeededMessages.TryGetValue(className, out var messages))
            return;

        string msg = messages[Random.Shared.Next(messages.Length)];
        player.SendMessage(msg, ChatMessageType.Magic);

        cooldowns[className] = DateTime.UtcNow;
    }

    // -- Spell Cast Trigger ----------------------------------------------

    [HarmonyPostfix]
    [HarmonyPatch(typeof(WorldObject), "HandleCastSpell", new Type[] {
        typeof(ACE.Server.Entity.Spell), typeof(WorldObject), typeof(WorldObject), typeof(WorldObject), typeof(bool), typeof(bool), typeof(bool) })]
    public static void PostHandleCastSpell(WorldObject __instance, ACE.Server.Entity.Spell spell, WorldObject target)
    {
        if (_isInSummoningCast)
            return;

        _isInSummoningCast = true;
        try
        {
            if (BssAutoCaster.IsInAutoCast)
                return;

            if (__instance is not Player player) return;
            if (target is not Creature creature) return;
            if (target is Player) return;
            if (spell == null) return;
            if (!IsHarmfulSpell(spell)) return;

            LastCombatHitUtc[player.Guid.Full] = DateTime.UtcNow;
            TrySummonPets(player);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS Summoning] PostHandleCastSpell error: {ex.Message}", ModManager.LogLevel.Warn);
        }
        finally
        {
            _isInSummoningCast = false;
        }
    }

    static bool IsHarmfulSpell(ACE.Server.Entity.Spell spell)
    {
        if (spell.School == MagicSchool.WarMagic || spell.School == MagicSchool.VoidMagic)
            return true;

        if (spell.School == MagicSchool.LifeMagic)
        {
            var name = spell.Name ?? "";
            var harmfulKeywords = new[] { "drain", "harm", "decay", "deterioration", "weakness", "vulnerability", "fester", "corruption" };
            if (harmfulKeywords.Any(k => name.Contains(k, StringComparison.OrdinalIgnoreCase)))
                return true;
            if (spell.MetaSpellType == SpellType.Transfer)
                return true;
        }

        if (spell.DamageType != DamageType.Undef)
            return true;

        return false;
    }

    // -- Combat Hit Trigger ----------------------------------------------

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.TakeDamage), new Type[] { typeof(WorldObject), typeof(DamageType), typeof(float), typeof(bool) })]
    public static void PostCreatureTakeDamage_SummonTrigger(WorldObject source, DamageType damageType, float amount, bool crit, Creature __instance)
    {
        if (__instance.IsDead) return;
        if (amount <= 0) return;

        var now = DateTime.UtcNow;

        // Summoner took damage: same pulse gate as offensive hits (TrySummonPets no-ops if not a summoning class)
        if (__instance is Player injuredSummoner)
        {
            LastCombatHitUtc[injuredSummoner.Guid.Full] = now;
            if (LastSummonPulseUtc.TryGetValue(injuredSummoner.Guid.Full, out var lastSelfPulse))
            {
                if (now - lastSelfPulse < SummonPulseInterval)
                    return;
            }

            LastSummonPulseUtc[injuredSummoner.Guid.Full] = now;
            TrySummonPets(injuredSummoner);
            return;
        }

        Player? owner = source as Player;
        if (owner is null && source is CombatPet pet)
            owner = pet.P_PetOwner as Player;

        if (owner is null)
            return;

        LastCombatHitUtc[owner.Guid.Full] = now;

        // Check if enough time has passed since last summon pulse
        if (LastSummonPulseUtc.TryGetValue(owner.Guid.Full, out var lastPulse))
        {
            if (now - lastPulse < SummonPulseInterval)
                return;
        }

        LastSummonPulseUtc[owner.Guid.Full] = now;
        TrySummonPets(owner);
    }

    // -- Main Summon Logic -----------------------------------------------

    static void TrySummonPets(Player player)
    {
        if (PatchClass.Settings?.EnableSummoningClasses != true) return;
        var settings = PatchClass.Settings.SummoningClasses;
        if (settings == null) return;

        string? className = GetPlayerClass(player);
        if (className == null) return;

        if (!IsClassUnlocked(player, className))
        {
            NotifyUnlockNeeded(player, className);
            return;
        }

        var classSettings = className switch
        {
            "Druid" => settings.Druid,
            "Elementalist" => settings.Elementalist,
            "Necromancer" => settings.Necromancer,
            "Enchanter" => settings.Enchanter,
            "Artificer" => settings.Artificer,
            _ => null
        };

        if (classSettings?.Enabled != true) return;

        var visualEffect = className switch
        {
            "Druid" => PlayScript.EnchantUpGreen,
            "Elementalist" => PlayScript.EnchantUpOrange,
            "Necromancer" => PlayScript.EnchantUpPurple,
            "Enchanter" => PlayScript.EnchantUpGreen,
            "Artificer" => PlayScript.EnchantUpYellow,
            _ => PlayScript.EnchantUpPurple
        };

        TrySummonForClass(player, classSettings, className, visualEffect);
    }

    internal static string? GetPlayerClass(Player player)
    {
        var profile = PlayerProfileStore.GetOrCreate(player.Guid.Full);
        if (!string.IsNullOrEmpty(profile.ManualClassOverride))
            return profile.ManualClassOverride;

        if (PlayerClassCache.TryGetValue(player.Guid.Full, out var cached))
            return cached;

        // Summoning classes
        if (IsSpecialized(player, Skill.Summoning))
        {
            string? result = null;
            if (IsSpecialized(player, Skill.LifeMagic)) result = "Druid";
            else if (IsSpecialized(player, Skill.WarMagic)) result = "Elementalist";
            else if (IsSpecialized(player, Skill.VoidMagic)) result = "Necromancer";
            else if (IsSpecialized(player, Skill.CreatureEnchantment)) result = "Enchanter";
            else if (IsSpecialized(player, Skill.ItemEnchantment)) result = "Artificer";

            if (result != null)
            {
                PlayerClassCache[player.Guid.Full] = result;
                return result;
            }
        }

        // Combat classes
        string? combatResult = null;
        if (AchievementUnlockedApi.HasClassUnlocked(player, "Rogue") &&
            IsSpecialized(player, Skill.DirtyFighting) &&
            IsSpecialized(player, Skill.DualWield) &&
            IsSpecialized(player, Skill.FinesseWeapons))
        {
            combatResult = "Rogue";
        }
        else if (AchievementUnlockedApi.HasClassUnlocked(player, "Berserker") &&
            (IsSpecialized(player, Skill.HeavyWeapons) || IsSpecialized(player, Skill.TwoHandedCombat)) &&
            IsSpecialized(player, Skill.Recklessness) &&
            !AchievementUnlockedApi.IsTrainedOrSpec(player, Skill.MeleeDefense))
        {
            combatResult = "Berserker";
        }
        else if (AchievementUnlockedApi.HasClassUnlocked(player, "Crusader") &&
            (IsSpecialized(player, Skill.LightWeapons) || IsSpecialized(player, Skill.HeavyWeapons)) &&
            IsSpecialized(player, Skill.Shield) &&
            IsSpecialized(player, Skill.MeleeDefense))
        {
            combatResult = "Crusader";
        }
        else if (AchievementUnlockedApi.HasClassUnlocked(player, "Windwalker") &&
            IsSpecialized(player, Skill.LightWeapons) &&
            IsSpecialized(player, Skill.WarMagic) &&
            IsSpecialized(player, Skill.ManaConversion))
        {
            combatResult = "Windwalker";
        }
        else if (AchievementUnlockedApi.HasClassUnlocked(player, "Battlemage") &&
            IsSpecialized(player, Skill.TwoHandedCombat) &&
            IsSpecialized(player, Skill.WarMagic) &&
            IsSpecialized(player, Skill.ManaConversion))
        {
            combatResult = "Battlemage";
        }
        else if (AchievementUnlockedApi.HasClassUnlocked(player, "DeathKnight") &&
            (IsSpecialized(player, Skill.HeavyWeapons) || IsSpecialized(player, Skill.TwoHandedCombat)) &&
            IsSpecialized(player, Skill.VoidMagic) &&
            IsSpecialized(player, Skill.ArcaneLore))
        {
            combatResult = "DeathKnight";
        }
        else if (AchievementUnlockedApi.HasClassUnlocked(player, "Bloodmage") &&
            IsSpecialized(player, Skill.LifeMagic) &&
            IsSpecialized(player, Skill.ManaConversion) &&
            IsSpecialized(player, Skill.ArcaneLore))
        {
            combatResult = "Bloodmage";
        }
        else if (AchievementUnlockedApi.HasClassUnlocked(player, "Healer") &&
            IsSpecialized(player, Skill.Healing) &&
            IsSpecialized(player, Skill.LifeMagic))
        {
            combatResult = "Healer";
        }
        else if (AchievementUnlockedApi.HasClassUnlocked(player, "Adventurer") &&
            IsAdventurer(player))
        {
            combatResult = "Adventurer";
        }

        if (combatResult != null)
            PlayerClassCache[player.Guid.Full] = combatResult;

        return combatResult;
    }

    static bool IsAdventurer(Player player)
    {
        // Adventurer: no magic schools trained, except Mana Conversion which can be anything
        var magicSkills = new[]
        {
            Skill.CreatureEnchantment, Skill.ItemEnchantment, Skill.LifeMagic,
            Skill.WarMagic, Skill.VoidMagic
        };

        foreach (var skill in magicSkills)
        {
            var cs = player.GetCreatureSkill(skill);
            if (cs != null && cs.AdvancementClass >= SkillAdvancementClass.Trained)
                return false;
        }

        return true;
    }

    internal static bool IsSpecialized(Player player, Skill skill)
    {
        var cs = player.GetCreatureSkill(skill);
        return cs != null && cs.AdvancementClass == SkillAdvancementClass.Specialized;
    }

    static void TrySummonForClass(Player player, SummoningClassSettings classSettings, string className, PlayScript visualEffect)
    {
        if (classSettings?.PetTypes == null) return;

        var enabledTypes = classSettings.PetTypes
            .Where(kv => kv.Value?.Enabled == true)
            .ToList();

        if (enabledTypes.Count == 0) return;

        var activePets = ActiveSummons.GetOrAdd(player.Guid.Full, _ => new List<CombatPet>());
        int currentCount;
        lock (activePets) { currentCount = activePets.Count; }

        int totalCap = classSettings.TotalCap;
        if (currentCount >= totalCap) return;

        var randomType = enabledTypes[Random.Shared.Next(enabledTypes.Count)];
        string typeName = randomType.Key;
        var typeConfig = randomType.Value;
        int requestedCount = typeConfig?.Count ?? 4;
        int minSummonPerPulse = className == "Artificer" && string.Equals(typeName, "Wisps", StringComparison.OrdinalIgnoreCase)
            ? 1
            : 4;
        int count = Math.Max(requestedCount, minSummonPerPulse);

        string poolKey = typeName;
        if (className == "Elementalist" && typeName is "Grievvers" or "Moars")
            poolKey = $"{typeName}_Elementalist";
        else if (className == "Enchanter" && typeName == "Golems")
            poolKey = "Golems_Enchanter";
        else if (className == "Artificer" && typeName == "Wisps")
            poolKey = "Wisps_Artificer";

        if (!PetTypePools.TryGetValue(poolKey, out var pool))
        {
            ModManager.Log($"[BSS Summoning] Unknown pet type pool: {poolKey}", ModManager.LogLevel.Warn);
            return;
        }

        // Artificer wisp tier scales with ItemEnchantment (up to tier 8), not Summoning
        int tier;
        if (className == "Artificer" && typeName == "Wisps")
        {
            int itemEnchantmentSkill = (int)(player.GetCreatureSkill(Skill.ItemEnchantment)?.Current ?? 0);
            tier = Math.Min(8, itemEnchantmentSkill / 50); // Each 50 skill = 1 tier, cap at 8
        }
        else
        {
            int summoningSkill = (int)(player.GetCreatureSkill(Skill.Summoning)?.Current ?? 0);
            tier = GetTierFromSkill(summoningSkill);
        }
        var tierWcids = pool[Math.Min(tier, pool.Length - 1)];

        int summonedCount = 0;
        for (int i = 0; i < count; i++)
        {
            if (currentCount + i >= totalCap) break;

            uint wcid = tierWcids[Random.Shared.Next(tierWcids.Length)];
            var pet = CreateCombatPet(player, wcid, className);
            if (pet != null)
            {
                ApplyClassBonus(player, pet, className);
                ApplyMasteryBonus(player, pet, className);

                float awarenessRange = PatchClass.Settings?.SummoningClasses?.PetAwarenessRange ?? 5.0f;
                pet.VisualAwarenessRange = awarenessRange;

                lock (activePets) { activePets.Add(pet); }
                TrackedPetGuids.TryAdd(pet.Guid.Full, 0);

                int duration = PatchClass.Settings?.SummoningClasses?.SummonDurationSeconds ?? 30;
                StartDestroyTimer(pet, duration);

                summonedCount++;
            }
        }

        if (summonedCount > 0)
        {
            try { player.ApplyVisualEffects(visualEffect, 1.0f); } catch { }
        }
    }

    static int GetTierFromSkill(int skill)
    {
        if (skill >= 400) return 6;
        if (skill >= 300) return 5;
        if (skill >= 250) return 4;
        if (skill >= 200) return 3;
        if (skill >= 150) return 2;
        if (skill >= 100) return 1;
        return 0;
    }

    // Sets DefaultScale (ObjScale). Before EnterWorld: property only (InitPhysics reads it). After: refresh physics + broadcast.
    static void ApplyAutoSummonVisualScale(CombatPet pet, bool afterEnterWorld)
    {
        var summoning = PatchClass.Settings?.SummoningClasses;
        if (summoning == null)
            return;

        float mult = summoning.AutoSummonObjScaleMultiplier;
        if (mult <= 0f || mult >= 0.999f)
            return;

        float baseScale = pet.ObjScale ?? 1f;
        float newScale = Math.Clamp(baseScale * mult, 0.05f, 2f);
        pet.ObjScale = newScale;

        if (!afterEnterWorld)
            return;

        if (pet.PhysicsObj != null)
            pet.PhysicsObj.SetScaleStatic(newScale);

        pet.EnqueueBroadcast(false, new GameMessagePublicUpdatePropertyFloat(pet, PropertyFloat.DefaultScale, newScale));
    }

    static CombatPet? CreateCombatPet(Player player, uint wcid, string className)
    {
        try
        {
            var weenie = DatabaseManager.World.GetCachedWeenie(wcid);
            if (weenie == null)
            {
                ModManager.Log($"[BSS Summoning] Weenie not found: {wcid}", ModManager.LogLevel.Warn);
                return null;
            }

            var guid = GuidManager.NewDynamicGuid();

#if REALM
            var pet = new CombatPet(weenie, guid, AppliedRuleset.GetEmptyRuleset());
#else
            var pet = new CombatPet(weenie, guid);
#endif

            var playerRadius = player.PhysicsObj?.GetPhysicsRadius() ?? 0.5f;
            var spawnDist = playerRadius + 1.0f;
            pet.Location = player.Location.InFrontOf(spawnDist);

            pet.Name = $"{player.Name}'s {pet.Name}";
            pet.PetOwner = player.Guid.Full;
            pet.P_PetOwner = player;
            pet.NoCorpse = true;

            ApplyAutoSummonVisualScale(pet, afterEnterWorld: false);

            var success = pet.EnterWorld();
            if (!success)
            {
                ModManager.Log($"[BSS Summoning] Failed to spawn pet {wcid}", ModManager.LogLevel.Warn);
                return null;
            }

            // Properly initialize as a combat pet (mirrors CombatPet.Init)
            pet.Faction1Bits = player.Faction1Bits;
            pet.MonsterState = Creature.State.Awake;
            pet.IsAwake = true;
            pet.SetCombatMode(CombatMode.Melee);

            // Randomized gear ratings based on summoning skill tier
            int summoningSkill = (int)(player.GetCreatureSkill(Skill.Summoning)?.Current ?? 0);
            int tier = GetTierFromSkill(summoningSkill);
            ApplyRandomizedGearRatings(pet, tier);

            return pet;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS Summoning] Error creating pet {wcid}: {ex.Message}", ModManager.LogLevel.Error);
            return null;
        }
    }

    static void ApplyRandomizedGearRatings(CombatPet pet, int tier)
    {
        int baseGear = tier * 5; // 0, 5, 10, 15, 20, 25, 30

        pet.DamageRating = baseGear + Random.Shared.Next(0, 6);
        pet.CritRating = baseGear / 2 + Random.Shared.Next(0, 4);
        pet.CritDamageRating = baseGear / 2 + Random.Shared.Next(0, 4);
        pet.DamageResistRating = baseGear / 2 + Random.Shared.Next(0, 4);
        pet.CritResistRating = baseGear / 2 + Random.Shared.Next(0, 4);
    }

    static void ApplyClassBonus(Player player, CombatPet pet, string className)
    {
        int bonus = className switch
        {
            "Enchanter" => 30,
            _ => 0
        };

        if (bonus > 0)
        {
            var existing = pet.GetProperty(PropertyInt.DamageRating) ?? 0;
            pet.SetProperty(PropertyInt.DamageRating, existing + bonus);
        }
    }

    static void ApplyMasteryBonus(Player player, CombatPet pet, string className)
    {
        var mastery = player.SummoningMastery;
        if (mastery == null) return;

        bool matches = className switch
        {
            "Druid" => mastery == ACE.Entity.Enum.SummoningMastery.Naturalist,
            "Elementalist" => mastery == ACE.Entity.Enum.SummoningMastery.Primalist,
            "Necromancer" => mastery == ACE.Entity.Enum.SummoningMastery.Necromancer,
            "Enchanter" => mastery == ACE.Entity.Enum.SummoningMastery.Naturalist,
            "Artificer" => mastery == ACE.Entity.Enum.SummoningMastery.Primalist,
            _ => false
        };

        if (matches)
        {
            int bonus = PatchClass.Settings?.SummoningClasses?.MasteryDamageRatingBonus ?? 10;
            var existing = pet.GetProperty(PropertyInt.DamageRating) ?? 0;
            pet.SetProperty(PropertyInt.DamageRating, existing + bonus);
        }
    }

static void StartDestroyTimer(CombatPet pet, int seconds)
    {
        // Don't call Destroy here - let the heartbeat handler (PostCombatPetHeartbeat) handle destroy on ACE's main thread
        // It times out after 10 seconds of no combat damage, cleaner than our manual timer
        _ = Task.Run(async () =>
        {
            try { await Task.Delay(seconds * 1000); } catch { }
            // Just ensure tracking is removed after timeout - heartbeat should have already cleaned up if combat active
            RemoveFromTracking(pet);
        });
    }

    static void RemoveFromTracking(CombatPet pet)
    {
        TrackedPetGuids.TryRemove(pet.Guid.Full, out _);
        foreach (var kvp in ActiveSummons)
        {
            lock (kvp.Value)
            {
                kvp.Value.RemoveAll(p => p == null || p.IsDestroyed || p.Guid.Full == pet.Guid.Full);
            }
        }
    }

    static string GetSummonMessage(string className, string typeName, int count)
    {
        return className switch
        {
            "Druid" => count == 1
                ? $"A {typeName.ToLowerInvariant()} answers your call."
                : $"{count} {typeName.ToLowerInvariant()} answer your call.",
            "Elementalist" => count == 1
                ? "An elemental coalesces from the aether."
                : $"{count} elementals coalesce from the aether.",
            "Necromancer" => "The dead rise to serve you.",
            "Enchanter" => count == 1
                ? "A golem stirs to life."
                : $"{count} golems stir to life.",
            "Artificer" => count == 1
                ? "A wisp flickers into existence."
                : $"{count} wisps flicker into existence.",
            _ => $"You summon {count} allies."
        };
    }

    // -- Pet Device: 2× Summon for Unlocked Class Players ----------------

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Pet), nameof(Pet.Init), new Type[] { typeof(Player), typeof(PetDevice) })]
    public static void PostPetInit(Player player, PetDevice petDevice, Pet __instance, ref bool? __result)
    {
        if (__result != true) return;
        if (__instance is not CombatPet pet) return;

        string? className = GetPlayerClass(player);
        if (className == null) return;
        if (!IsClassUnlocked(player, className)) return;

        ApplyAutoSummonVisualScale(pet, afterEnterWorld: true);

        var activePets = ActiveSummons.GetOrAdd(player.Guid.Full, _ => new List<CombatPet>());
        int currentCount;
        lock (activePets) { currentCount = activePets.Count; }

        var classSettings = className switch
        {
            "Druid" => PatchClass.Settings?.SummoningClasses?.Druid,
            "Elementalist" => PatchClass.Settings?.SummoningClasses?.Elementalist,
            "Necromancer" => PatchClass.Settings?.SummoningClasses?.Necromancer,
            "Enchanter" => PatchClass.Settings?.SummoningClasses?.Enchanter,
            "Artificer" => PatchClass.Settings?.SummoningClasses?.Artificer,
            _ => null
        };

        int totalCap = classSettings?.TotalCap ?? 10;
        if (currentCount >= totalCap) return;

        uint wcid = pet.WeenieClassId;
        var secondPet = CreateCombatPet(player, wcid, className);
        if (secondPet != null)
        {
            ApplyClassBonus(player, secondPet, className);
            ApplyMasteryBonus(player, secondPet, className);

            float awarenessRange = PatchClass.Settings?.SummoningClasses?.PetAwarenessRange ?? 5.0f;
            secondPet.VisualAwarenessRange = awarenessRange;

            lock (activePets) { activePets.Add(secondPet); }
            TrackedPetGuids.TryAdd(secondPet.Guid.Full, 0);

            int duration = PatchClass.Settings?.SummoningClasses?.SummonDurationSeconds ?? 30;
            StartDestroyTimer(secondPet, duration);
        }
    }

    // -- Pet Device: Remove Cooldown -------------------------------------

    [HarmonyPrefix]
    [HarmonyPatch(typeof(PetDevice), nameof(PetDevice.CheckUseRequirements), new Type[] { typeof(WorldObject) })]
    public static bool PreCheckUseRequirements(WorldObject activator, ref PetDevice __instance, ref ActivationResult __result)
    {
        if (activator is not Player player)
        {
            __result = new ActivationResult(false);
            return false;
        }

        if (player.Session?.Network == null)
        {
            __result = new ActivationResult(false);
            return false;
        }

        if (__instance.SummoningMastery != null && player.SummoningMastery != __instance.SummoningMastery)
        {
            player.Session?.Network?.EnqueueSend(new GameMessageSystemChat(
                $"You must be a {__instance.SummoningMastery} to use the {__instance.Name}", ChatMessageType.Broadcast));
            __result = new ActivationResult(false);
            return false;
        }

        __result = new ActivationResult(true);
        return false;
    }

    // -- Artificer Proc: Imperil + Drain on Wisp Melee -------------------

    [ThreadStatic]
    static bool _artificerWispCleaving;

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.TakeDamage), new Type[] { typeof(WorldObject), typeof(DamageType), typeof(float), typeof(bool) })]
    public static void PostCreatureTakeDamage(WorldObject source, DamageType damageType, float amount, bool crit, Creature __instance, ref uint __result)
    {
        // Prevent infinite recursion when cleave damage triggers TakeDamage again
        if (_artificerWispCleaving)
            return;

        if (source is not CombatPet pet) return;
        if (!TrackedPetGuids.ContainsKey(pet.Guid.Full)) return;
        if (pet.P_PetOwner is not Player owner) return;

        string? className = GetPlayerClass(owner);
        if (className != "Artificer") return;
        if (!IsClassUnlocked(owner, "Artificer")) return;

        float procChance = PatchClass.Settings?.SummoningClasses?.ArtificerWispImperilDrainProcChance ?? 1.0f;
        if (procChance < 1.0f && Random.Shared.NextDouble() >= procChance)
            return;
        if (!__instance.IsAlive) return;

        CacheArtificerSpells();

        int maxTier = PatchClass.Settings?.SummoningClasses?.ArtificerWispProcMaxSpellTier ?? 8;
        if (maxTier < 0)
            maxTier = 8;

        int itemEnchantmentSkill = (int)(owner.GetCreatureSkill(Skill.ItemEnchantment)?.Current ?? 0);
        int tier = Math.Min(maxTier, itemEnchantmentSkill / 50);

        float procRadius = PatchClass.Settings?.SummoningClasses?.ArtificerWispProcAoERadiusMeters ?? 10.0f;
        if (procRadius <= 0f)
            procRadius = 10.0f;

        var aoeTargets = new List<Creature> { __instance };
        foreach (var obj in __instance.CurrentLandblock?.GetWorldObjectsForPhysicsHandling() ?? Enumerable.Empty<WorldObject>())
        {
            if (obj == __instance) continue;
            if (obj is not Creature enemy) continue;
            if (enemy.IsDead) continue;
            if (enemy.GetCylinderDistance(__instance) > procRadius)
                continue;
            
            // Exclude the wisp's owner and other players/pets from AoE
            if (enemy == owner) continue;
            if (enemy is Player) continue;
            if (enemy is CombatPet) continue;
            
            // Only hit monsters
            if (enemy.IsMonster || enemy.WeenieType == WeenieType.Creature)
                aoeTargets.Add(enemy);
        }

        // Artificer wisp cleave: hit all enemies in 10m range with Imperil + damage
        float cleaveDamageFraction = PatchClass.Settings?.SummoningClasses?.ArtificerWispCleaveDamageFraction ?? 0.5f;
        float cleaveDamage = amount * cleaveDamageFraction;

        if (!ImperilSpellIds.TryGetValue(tier, out var imperilId))
            return;

        var imperilSpell = new ACE.Server.Entity.Spell(imperilId);
        if (imperilSpell.NotFound)
            return;

        // Set recursion guard before dealing damage
        _artificerWispCleaving = true;
        try
        {
            foreach (var target in aoeTargets)
            {
                if (target == null || target.IsDestroyed || target.IsDead)
                    continue;

                try
                {
                    // Apply Imperil to all targets (including primary)
                    target.EnchantmentManager.Add(imperilSpell, pet, null);

                    // Deal cleave damage to secondary targets (primary already took damage)
                    if (target != __instance && cleaveDamage > 0)
                        target.TakeDamage(pet, DamageType.Health, cleaveDamage, false);
                }
                catch (Exception ex)
                {
                    ModManager.Log($"[BSS Artificer] Wisp cleave failed on {target.Name}: {ex.Message}", ModManager.LogLevel.Warn);
                }
            }
        }
        finally
        {
            _artificerWispCleaving = false;
        }
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.MeleeAttack))]
    public static void PostMeleeArtificerWispCycle(Creature __instance, float __result)
    {
        if (__result <= 0f)
            return;
        if (__instance is not CombatPet pet)
            return;
        if (!TrackedPetGuids.ContainsKey(pet.Guid.Full))
            return;
        if (pet.P_PetOwner is not Player owner)
            return;
        if (GetPlayerClass(owner) != "Artificer")
            return;
        if (!IsClassUnlocked(owner, "Artificer"))
            return;

        float minCycle = PatchClass.Settings?.SummoningClasses?.ArtificerWispMeleeMinCycleSeconds ?? 0.5f;
        if (minCycle <= 0f)
            return;

        pet.NextAttackTime = pet.PrevAttackTime + Math.Max(minCycle, __result);
    }

    // -- Tracked pet move speed (offsets ObjScale linear slowdown) ---------

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.GetMovementSpeed))]
    public static void PostCreatureGetMovementSpeed(Creature __instance)
    {
        if (__instance is not CombatPet pet)
            return;
        if (!TrackedPetGuids.ContainsKey(pet.Guid.Full))
            return;

        var summoning = PatchClass.Settings?.SummoningClasses;
        if (summoning is null)
            return;

        float mult = summoning.AutoSummonMoveSpeedMultiplier;
        if (mult <= 0f || mult == 1f)
            return;

        pet.MoveSpeed *= mult;
    }

    // -- Suppress death broadcast for tracked pets -----------------------

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.Die), new Type[] { typeof(DamageHistoryInfo), typeof(DamageHistoryInfo) })]
    public static bool PreCreatureDie(Creature __instance)
    {
        if (__instance is CombatPet pet && TrackedPetGuids.ContainsKey(pet.Guid.Full))
        {
            // Silently destroy without broadcasting death message
            pet.Destroy();
            RemoveFromTracking(pet);
            return false;
        }
        return true;
    }

    // -- Heartbeat Patch (Follow Behavior) -------------------------------

    [HarmonyPostfix]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.Heartbeat), new Type[] { typeof(double) })]
    public static void PostCombatPetHeartbeat(WorldObject __instance)
    {
        if (__instance is not CombatPet combatPet) return;
        if (!TrackedPetGuids.ContainsKey(combatPet.Guid.Full)) return;

        var owner = combatPet.P_PetOwner;
        if (owner == null || owner.IsDestroyed || owner.IsDead) return;

        // Combat-end cleanup: if owner hasn't dealt damage in 10s, destroy pet
        if (LastCombatHitUtc.TryGetValue(owner.Guid.Full, out var lastHit))
        {
            if (DateTime.UtcNow - lastHit > CombatTimeout)
            {
                combatPet.Destroy();
                RemoveFromTracking(combatPet);
                return;
            }
        }

        // Validate current attack target — clear if invalid
        if (combatPet.AttackTarget != null)
        {
            if (IsInvalidPetTarget(combatPet, combatPet.AttackTarget, owner))
                combatPet.AttackTarget = null;
            else
                return; // valid target, keep attacking
        }

        // No valid target — try to sync with owner's target
        if (owner.AttackTarget is Creature ownerTarget && ownerTarget.IsAlive && !ownerTarget.IsDestroyed)
        {
            if (!IsInvalidPetTarget(combatPet, ownerTarget, owner))
            {
                combatPet.AttackTarget = ownerTarget;
                return;
            }
        }

        var dist = owner.GetCylinderDistance(combatPet);
        float maxDist = PatchClass.Settings?.SummoningClasses?.FollowMaxDistanceBeforeDestroy ?? 250f;
        float followThreshold = PatchClass.Settings?.SummoningClasses?.FollowDistanceThreshold ?? 15f;
        var scFollow = PatchClass.Settings?.SummoningClasses;
        bool ownerLocomoting = owner.PhysicsObj?.IsMovingOrAnimating == true;
        bool useMoveFollow = (scFollow?.FollowWhileOwnerMoving ?? true) && ownerLocomoting;
        float moveThreshold = scFollow?.MoveFollowDistanceThreshold ?? 6f;
        if (moveThreshold < 1f)
            moveThreshold = 1f;
        // Tighter leash while owner is walking/running; never wider than idle followThreshold
        float effectiveFollowThreshold = useMoveFollow
            ? Math.Min(Math.Max(moveThreshold, 1.5f), followThreshold)
            : followThreshold;

        if (dist > maxDist)
        {
            combatPet.Destroy();
            RemoveFromTracking(combatPet);
        }
        else if (dist > effectiveFollowThreshold)
        {
#if REALM
            var sameLandblock = owner.Location.InstancedLandblock == combatPet.Location.InstancedLandblock;
#else
            var sameLandblock = owner.Location.LandblockId == combatPet.Location.LandblockId;
#endif
            if (sameLandblock)
            {
                try { combatPet.FakeTeleport(owner.Location.InFrontOf(0.1f)); } catch { }
            }
            else if (!combatPet.IsMoving)
            {
                combatPet.MoveTo(owner);
            }
        }
    }

    static bool IsInvalidPetTarget(CombatPet pet, WorldObject? target, Player owner)
    {
        if (target == null || target.IsDestroyed) return true;
        if (target == owner) return true;
        if (target == pet) return true;

        // Don't attack other pets from the same owner
        if (target is CombatPet otherPet && otherPet.P_PetOwner == owner) return true;

        // Don't attack non-hostile / passive creatures (cows, townsfolk, etc.)
        if (target is Creature creature)
        {
            if (!creature.Attackable) return true;
            var pk = creature.PlayerKillerStatus;
            if (pk != PlayerKillerStatus.Creature && pk != PlayerKillerStatus.PK && pk != PlayerKillerStatus.PKLite)
                return true;
        }

        // Don't attack players the owner can't damage
        if (target is Player p && !owner.CanDamage(p)) return true;

        return false;
    }

    // -- Pet spell gate: no War/Void ring or wall from weenie AI (prevents Os'-style splash on owner) --

    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.TryCastSpell), new[]
    {
        typeof(Spell), typeof(WorldObject), typeof(WorldObject), typeof(WorldObject), typeof(bool), typeof(bool), typeof(bool)
    })]
    public static bool PrefixTryCastSpell_BlockPetRingWall(
        WorldObject __instance,
        Spell spell,
        WorldObject target,
        WorldObject itemCaster,
        WorldObject weapon,
        bool isWeaponSpell,
        bool fromProc,
        bool tryResist)
    {
        if (__instance is not CombatPet pet)
            return true;
        if (!TrackedPetGuids.ContainsKey(pet.Guid.Full))
            return true;
        var sc = PatchClass.Settings?.SummoningClasses;
        if (sc is not { BlockPetWarVoidRingWallSpells: true })
            return true;
        if (spell == null || spell.NotFound)
            return true;
        if (!spell.IsHarmful)
            return true;
        if (spell.School != MagicSchool.WarMagic && spell.School != MagicSchool.VoidMagic)
            return true;

        if (!IsWarVoidRingOrWallCategory(spell))
            return true;

        return false;
    }

    static bool IsWarVoidRingOrWallCategory(Spell spell)
    {
        var cat = spell.Category;
        if (cat >= SpellCategory.AcidRing && cat <= SpellCategory.SlashingRing)
            return true;
        if (cat >= SpellCategory.AcidWall && cat <= SpellCategory.SlashingWall)
            return true;
        if (spell.SpreadAngle == 360)
            return true;
        return false;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(SpellProjectile), nameof(SpellProjectile.OnCollideObject), new[] { typeof(WorldObject) })]
    public static bool PrefixSpellProjectile_SkipPetOwnerDamage(SpellProjectile __instance, WorldObject target)
    {
        var sc = PatchClass.Settings?.SummoningClasses;
        if (sc is not { BlockPetProjectileDamageToOwner: true })
            return true;
        if (__instance?.ProjectileSource is not CombatPet pet)
            return true;
        if (!TrackedPetGuids.ContainsKey(pet.Guid.Full))
            return true;
        var owner = pet.P_PetOwner;
        if (owner == null || target != owner)
            return true;

        __instance.ProjectileImpact();
        return false;
    }

    // -- Cleanup on Logout/Teleport -------------------------------------

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.LogOut_Final))]
    public static void PreLogOut_Final(Player __instance)
    {
        DestroyPlayerSummons(__instance.Guid.Full);
        PlayerClassCache.TryRemove(__instance.Guid.Full, out _);
        UnlockNotifiedCooldown.TryRemove(__instance.Guid.Full, out _);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.Teleport))]
    public static void PostTeleport(Player __instance)
    {
        DestroyPlayerSummons(__instance.Guid.Full);
    }

    static void DestroyPlayerSummons(uint playerGuid)
    {
        if (ActiveSummons.TryRemove(playerGuid, out var pets))
        {
            lock (pets)
            {
                foreach (var pet in pets)
                {
                    if (pet != null && !pet.IsDestroyed)
                        pet.Destroy();
                }
            }
        }
    }

    // -- Class Info & Requirements ---------------------------------------

    static readonly Dictionary<string, (string Description, string Requirements)> ClassDescriptions = new()
    {
        ["Druid"] = ("Summon nature allies. 2× pets, no device cooldown.", "Spec Summoning + Life Magic, specialized"),
        ["Elementalist"] = ("Summon elemental allies. 2× pets, no device cooldown.", "Spec Summoning + War Magic, specialized"),
        ["Necromancer"] = ("Summon undead allies. 2× pets, no device cooldown.", "Spec Summoning + Void Magic, specialized"),
        ["Enchanter"] = ("Summon golem allies. 2× pets, no device cooldown.", "Spec Summoning + Creature Enchantment, specialized"),
        ["Artificer"] = ("Summon wisp allies with Imperil/Drain cleave on hit. Configurable count; fast melee cadence option.", "Spec Summoning + Item Enchantment, specialized"),
        ["Rogue"] = ("Dual-wield finesse bleeds. 2× Dirty Fighting debuffs.", "Spec Dirty Fighting + Dual Wield + Finesse Weapons, specialized"),
        ["Berserker"] = ("Heavy/two-handed reckless strikes. 8% life steal.", "Spec Heavy Weapons OR Two Handed + Recklessness, specialized. NO Melee Defense"),
        ["Crusader"] = ("Shield melee with passive heals, 50% crit, 2× thorns on all hits.", "Spec Light OR Heavy Weapons + Shield + Melee Defense, specialized"),
        ["Windwalker"] = ("Light weapons + war magic. Elemental streaks at nearby enemies.", "Spec Light Weapons + War Magic + Mana Conversion, specialized"),
        ["Battlemage"] = ("Two-handed + war magic. Elemental arcs with volley echoes.", "Spec Two Handed + War Magic + Mana Conversion, specialized"),
        ["DeathKnight"] = ("Heavy/two-handed + void magic. Nether streaks/arcs + aura damage.", "Spec Heavy OR Two Handed + Void Magic + Arcane Lore, specialized"),
        ["Bloodmage"] = ("Life magic + mana conversion. Hecatomb echoes + drain AoE + aura.", "Spec Life Magic + Mana Conversion + Arcane Lore, specialized"),
        ["Healer"] = ("Healing + life magic. AoE healing aura, Smite melee proc.", "Spec Healing + Life Magic, specialized"),
        ["Adventurer"] = ("No magic training. +50 attributes/skills, +20% vitals, +10 resistances, +2 burden limit.", "No magic schools trained except Mana Conversion"),
    };

    static int GetClassReadinessScore(Player player, string className)
    {
        int score = 0;
        int maxScore = 0;

        switch (className)
        {
            case "Druid":
                maxScore = 4;
                if (IsSpec(player, Skill.Summoning)) score += 2; else if (IsTrained(player, Skill.Summoning)) score += 1;
                if (IsSpec(player, Skill.LifeMagic)) score += 2; else if (IsTrained(player, Skill.LifeMagic)) score += 1;
                break;
            case "Elementalist":
                maxScore = 4;
                if (IsSpec(player, Skill.Summoning)) score += 2; else if (IsTrained(player, Skill.Summoning)) score += 1;
                if (IsSpec(player, Skill.WarMagic)) score += 2; else if (IsTrained(player, Skill.WarMagic)) score += 1;
                break;
            case "Necromancer":
                maxScore = 4;
                if (IsSpec(player, Skill.Summoning)) score += 2; else if (IsTrained(player, Skill.Summoning)) score += 1;
                if (IsSpec(player, Skill.VoidMagic)) score += 2; else if (IsTrained(player, Skill.VoidMagic)) score += 1;
                break;
            case "Enchanter":
                maxScore = 4;
                if (IsSpec(player, Skill.Summoning)) score += 2; else if (IsTrained(player, Skill.Summoning)) score += 1;
                if (IsSpec(player, Skill.CreatureEnchantment)) score += 2; else if (IsTrained(player, Skill.CreatureEnchantment)) score += 1;
                break;
            case "Artificer":
                maxScore = 4;
                if (IsSpec(player, Skill.Summoning)) score += 2; else if (IsTrained(player, Skill.Summoning)) score += 1;
                if (IsSpec(player, Skill.ItemEnchantment)) score += 2; else if (IsTrained(player, Skill.ItemEnchantment)) score += 1;
                break;
            case "Rogue":
                maxScore = 6;
                if (IsSpec(player, Skill.DirtyFighting)) score += 2; else if (IsTrained(player, Skill.DirtyFighting)) score += 1;
                if (IsSpec(player, Skill.DualWield)) score += 2; else if (IsTrained(player, Skill.DualWield)) score += 1;
                if (IsSpec(player, Skill.FinesseWeapons)) score += 2; else if (IsTrained(player, Skill.FinesseWeapons)) score += 1;
                break;
            case "Berserker":
                maxScore = 4;
                if (IsSpec(player, Skill.HeavyWeapons) || IsSpec(player, Skill.TwoHandedCombat)) score += 2;
                else if (IsTrained(player, Skill.HeavyWeapons) || IsTrained(player, Skill.TwoHandedCombat)) score += 1;
                if (IsSpec(player, Skill.Recklessness)) score += 2; else if (IsTrained(player, Skill.Recklessness)) score += 1;
                if (AchievementUnlockedApi.IsTrainedOrSpec(player, Skill.MeleeDefense)) score -= 2;
                break;
            case "Crusader":
                maxScore = 6;
                if (IsSpec(player, Skill.LightWeapons) || IsSpec(player, Skill.HeavyWeapons)) score += 2;
                else if (IsTrained(player, Skill.LightWeapons) || IsTrained(player, Skill.HeavyWeapons)) score += 1;
                if (IsSpec(player, Skill.Shield)) score += 2; else if (IsTrained(player, Skill.Shield)) score += 1;
                if (IsSpec(player, Skill.MeleeDefense)) score += 2; else if (IsTrained(player, Skill.MeleeDefense)) score += 1;
                break;
            case "Windwalker":
                maxScore = 6;
                if (IsSpec(player, Skill.LightWeapons)) score += 2; else if (IsTrained(player, Skill.LightWeapons)) score += 1;
                if (IsSpec(player, Skill.WarMagic)) score += 2; else if (IsTrained(player, Skill.WarMagic)) score += 1;
                if (IsSpec(player, Skill.ManaConversion)) score += 2; else if (IsTrained(player, Skill.ManaConversion)) score += 1;
                break;
            case "Battlemage":
                maxScore = 6;
                if (IsSpec(player, Skill.TwoHandedCombat)) score += 2; else if (IsTrained(player, Skill.TwoHandedCombat)) score += 1;
                if (IsSpec(player, Skill.WarMagic)) score += 2; else if (IsTrained(player, Skill.WarMagic)) score += 1;
                if (IsSpec(player, Skill.ManaConversion)) score += 2; else if (IsTrained(player, Skill.ManaConversion)) score += 1;
                break;
            case "DeathKnight":
                maxScore = 6;
                if (IsSpec(player, Skill.HeavyWeapons) || IsSpec(player, Skill.TwoHandedCombat)) score += 2;
                else if (IsTrained(player, Skill.HeavyWeapons) || IsTrained(player, Skill.TwoHandedCombat)) score += 1;
                if (IsSpec(player, Skill.VoidMagic)) score += 2; else if (IsTrained(player, Skill.VoidMagic)) score += 1;
                if (IsSpec(player, Skill.ArcaneLore)) score += 2; else if (IsTrained(player, Skill.ArcaneLore)) score += 1;
                break;
            case "Bloodmage":
                maxScore = 6;
                if (IsSpec(player, Skill.LifeMagic)) score += 2; else if (IsTrained(player, Skill.LifeMagic)) score += 1;
                if (IsSpec(player, Skill.ManaConversion)) score += 2; else if (IsTrained(player, Skill.ManaConversion)) score += 1;
                if (IsSpec(player, Skill.ArcaneLore)) score += 2; else if (IsTrained(player, Skill.ArcaneLore)) score += 1;
                break;
            case "Healer":
                maxScore = 4;
                if (IsSpec(player, Skill.Healing)) score += 2; else if (IsTrained(player, Skill.Healing)) score += 1;
                if (IsSpec(player, Skill.LifeMagic)) score += 2; else if (IsTrained(player, Skill.LifeMagic)) score += 1;
                break;
            case "Adventurer":
                maxScore = 4;
                // Score based on absence of magic training + presence of combat skills
                var magicSkills = new[] { Skill.CreatureEnchantment, Skill.ItemEnchantment, Skill.LifeMagic, Skill.WarMagic, Skill.VoidMagic };
                bool anyMagicTrained = false;
                foreach (var sk in magicSkills)
                {
                    if (IsTrained(player, sk)) { anyMagicTrained = true; break; }
                }
                if (!anyMagicTrained) score += 4;
                else
                {
                    int untrainedCount = 0;
                    foreach (var sk in magicSkills) if (!IsTrained(player, sk)) untrainedCount++;
                    score += untrainedCount; // 1 point per untrained magic school
                }
                break;
        }

        return Math.Max(0, (score * 100) / Math.Max(1, maxScore));
    }

    static bool IsSpec(Player player, Skill skill)
    {
        var cs = player.GetCreatureSkill(skill);
        return cs != null && cs.AdvancementClass == SkillAdvancementClass.Specialized;
    }

    static bool IsTrained(Player player, Skill skill)
    {
        var cs = player.GetCreatureSkill(skill);
        return cs != null && cs.AdvancementClass >= SkillAdvancementClass.Trained;
    }

    static int GetBase(Player player, Skill skill)
    {
        var cs = player.GetCreatureSkill(skill);
        if (cs == null) return 0;
        return (int)(cs.Ranks + cs.InitLevel);
    }

    // -- /class Command --------------------------------------------------

    [CommandHandler("class", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, -1,
        "View or change your class. Classes unlock by specializing the required skills.",
        "Usage: /class  OR  /class auto  OR  /class <name>")]
    public static void HandleClass(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player)
            return;

        var profile = PlayerProfileStore.GetOrCreate(player.Guid.Full);
        var validClasses = ClassDescriptions.Keys.ToArray();

        if (parameters.Length == 0)
        {
            string? activeClass = GetPlayerClass(player);
            bool isManual = !string.IsNullOrEmpty(profile.ManualClassOverride);

            var classEntries = validClasses.Select(cls =>
            {
                bool unlocked = IsClassUnlocked(player, cls);
                bool accountWide = IsClassUnlockedAccountWide(player, cls);
                bool meetsReqs = AchievementUnlockedApi.CheckMeetsRequirements(player, cls);
                int readiness = GetClassReadinessScore(player, cls);
                return new { Name = cls, Unlocked = unlocked, AccountWide = accountWide, MeetsReqs = meetsReqs, Readiness = readiness };
            }).ToList();

            var ordered = classEntries
                .OrderByDescending(c => c.Name == activeClass ? 3 : 0)
                .ThenByDescending(c => c.Unlocked ? 2 : 0)
                .ThenByDescending(c => c.MeetsReqs && !c.Unlocked ? 1 : 0)
                .ThenByDescending(c => c.Readiness)
                .ToList();

            var sb = new StringBuilder();
            sb.AppendLine("=== Classes ===");
            sb.AppendLine($"Active: {activeClass ?? "None"} {(isManual ? "(manual)" : "(auto)")}");
            sb.AppendLine();

            foreach (var entry in ordered)
            {
                var (desc, reqs) = ClassDescriptions[entry.Name];

                string status;
                if (entry.Name == activeClass)
                    status = "[ACTIVE]";
                else if (entry.Unlocked)
                    status = entry.AccountWide ? "[UNLOCKED account-wide]" : "[UNLOCKED]";
                else if (entry.MeetsReqs)
                    status = "[READY — specialize required skills]";
                else
                    status = $"[{entry.Readiness}% ready]";

                sb.AppendLine($"{entry.Name} {status}");
                sb.AppendLine($"  {desc}");
                sb.AppendLine($"  Requires: {reqs}");
            }

            sb.AppendLine();
            sb.AppendLine("Usage: /class auto  OR  /class <class name>");
            player.SendMessage(sb.ToString(), ChatMessageType.System);
            return;
        }

        var arg = parameters[0].Trim();
        var normalized = char.ToUpperInvariant(arg[0]) + arg.Substring(1).ToLowerInvariant();

        if (arg.Equals("auto", StringComparison.OrdinalIgnoreCase) || arg.Equals("clear", StringComparison.OrdinalIgnoreCase))
        {
            profile.ManualClassOverride = null;
            PlayerProfileStore.Save(player.Guid.Full, profile);
            PlayerClassCache.TryRemove(player.Guid.Full, out _);

            string? detected = GetPlayerClass(player);
            player.SendMessage(detected != null
                ? $"Class set to AUTO. Detected: {detected}."
                : "Class set to AUTO. No class detected (requires specialized skills).",
                ChatMessageType.System);
            return;
        }

        if (!validClasses.Contains(normalized))
        {
            player.SendMessage($"Invalid class. Valid: {string.Join(", ", validClasses)} (or auto/clear).", ChatMessageType.System);
            return;
        }

        if (!IsClassUnlocked(player, normalized))
        {
            player.SendMessage(
                $"The path of the {normalized} is locked. Reach the required skills (see /class for requirements).",
                ChatMessageType.System);
            return;
        }

        bool isAccountWide = IsClassUnlockedAccountWide(player, normalized);
        bool meetsOnThisChar = AchievementUnlockedApi.CheckMeetsRequirements(player, normalized);

        profile.ManualClassOverride = normalized;
        PlayerProfileStore.Save(player.Guid.Full, profile);
        PlayerClassCache[player.Guid.Full] = normalized;

        if (isAccountWide && !meetsOnThisChar)
        {
            player.SendMessage($"Class manually set to: {normalized}. (Originally unlocked on another character. Normally requires specific skill mastery.)", ChatMessageType.System);
        }
        else
        {
            player.SendMessage($"Class manually set to: {normalized}. Use '/class auto' to restore automatic detection.", ChatMessageType.System);
        }
    }

}

// -- Settings Classes --------------------------------------------------

public class SummoningClassesSettings
{
    [JsonPropertyName("// EnableSummoningClasses")]
    public string EnableSummoningClassesDoc { get; init; } = "When true, specialized Summoning + secondary magic spec unlocks auto-summon classes.";
    public bool EnableSummoningClasses { get; set; } = true;

    [JsonPropertyName("// SummonDurationSeconds")]
    public string SummonDurationSecondsDoc { get; init; } = "How long BSS auto-summoned and device-duplicate CombatPets live before auto-destructing.";
    public int SummonDurationSeconds { get; set; } = 30;

    [JsonPropertyName("// AutoSummonObjScaleMultiplier")]
    public string AutoSummonObjScaleMultiplierDoc { get; init; } = "Visual scale multiplier on ObjScale (DefaultScale) for BSS auto-summons and device-spawned class pets. 1 = full size; 0.5 = half footprint.";
    public float AutoSummonObjScaleMultiplier { get; set; } = 0.5f;

    [JsonPropertyName("// AutoSummonMoveSpeedMultiplier")]
    public string AutoSummonMoveSpeedMultiplierDoc { get; init; } = "After ACE computes MoveSpeed (includes ObjScale), BSS tracked CombatPets multiply by this. Default 10 with ObjScale 0.5; use 1 to disable.";
    public float AutoSummonMoveSpeedMultiplier { get; set; } = 10f;

    [JsonPropertyName("// MasteryDamageRatingBonus")]
    public string MasteryDamageRatingBonusDoc { get; init; } = "Extra DR when Summoning Mastery matches class.";
    public int MasteryDamageRatingBonus { get; set; } = 10;

    [JsonPropertyName("// PetAwarenessRange")]
    public string PetAwarenessRangeDoc { get; init; } = "Pet aggro awareness range in meters.";
    public float PetAwarenessRange { get; set; } = 5.0f;

    [JsonPropertyName("// FollowDistanceThreshold")]
    public string FollowDistanceThresholdDoc { get; init; } = "Distance before pet teleports/moves to follow player when you are not locomoting (see FollowWhileOwnerMoving).";
    public float FollowDistanceThreshold { get; set; } = 15.0f;

    [JsonPropertyName("// FollowWhileOwnerMoving")]
    public string FollowWhileOwnerMovingDoc { get; init; } = "When true, uses MoveFollowDistanceThreshold while owner PhysicsObj.IsMovingOrAnimating so pets keep up during walk/run.";
    public bool FollowWhileOwnerMoving { get; set; } = true;

    [JsonPropertyName("// MoveFollowDistanceThreshold")]
    public string MoveFollowDistanceThresholdDoc { get; init; } = "Meters: if FollowWhileOwnerMoving and owner is moving, follow/teleport when pet is farther than this (capped at FollowDistanceThreshold).";
    public float MoveFollowDistanceThreshold { get; set; } = 6.0f;

    [JsonPropertyName("// FollowMaxDistanceBeforeDestroy")]
    public string FollowMaxDistanceBeforeDestroyDoc { get; init; } = "Max distance before pet is destroyed.";
    public float FollowMaxDistanceBeforeDestroy { get; set; } = 250.0f;

    [JsonPropertyName("// BlockPetWarVoidRingWallSpells")]
    public string BlockPetWarVoidRingWallSpellsDoc { get; init; } = "When true, BSS-tracked CombatPets cannot cast harmful War/Void spells classified as Ring or Wall (Os'-style splash on owner). Default false so pet AI keeps offensive ring/wall options; enable on noisy servers.";
    public bool BlockPetWarVoidRingWallSpells { get; set; } = false;

    [JsonPropertyName("// BlockPetProjectileDamageToOwner")]
    public string BlockPetProjectileDamageToOwnerDoc { get; init; } = "When true, SpellProjectile collisions from a BSS-tracked CombatPet against its P_PetOwner apply impact only (no damage). Belt-and-suspenders with ring/wall cast gate.";
    public bool BlockPetProjectileDamageToOwner { get; set; } = true;

    [JsonPropertyName("// ArtificerWispMeleeMinCycleSeconds")]
    public string ArtificerWispMeleeMinCycleSecondsDoc { get; init; } = "BSS-tracked Artificer wisps: minimum seconds from swing start to next melee (postfix on Creature.MeleeAttack). NextAttackTime = PrevAttackTime + max(this, animLength). Use 1.0 for ~1 attack/sec floor when anim is short; raise if animations desync.";
    public float ArtificerWispMeleeMinCycleSeconds { get; set; } = 0.5f;

    [JsonPropertyName("// ArtificerWispImperilDrainProcChance")]
    public string ArtificerWispImperilDrainProcChanceDoc { get; init; } = "Chance 0-1 that an Artificer wisp melee hit procs Imperil+Drain cleave on primary + AoE targets. Default 1 = always.";
    public float ArtificerWispImperilDrainProcChance { get; set; } = 1.0f;

    [JsonPropertyName("// ArtificerWispProcMaxSpellTier")]
    public string ArtificerWispProcMaxSpellTierDoc { get; init; } = "Max spell tier index for Imperil/Drain (ItemEnchantment skill / 50, capped). Must match cached spell table; default 8. Increase after adding tier 9+ spells to CacheArtificerSpells.";
    public int ArtificerWispProcMaxSpellTier { get; set; } = 8;

    [JsonPropertyName("// ArtificerWispProcAoERadiusMeters")]
    public string ArtificerWispProcAoERadiusMetersDoc { get; init; } = "Radius in meters around struck creature for Imperil+Drain cleave (cylinder distance). ~10 yards often modeled as 10m.";
    public float ArtificerWispProcAoERadiusMeters { get; set; } = 10.0f;

    [JsonPropertyName("// ArtificerWispCleaveDamageFraction")]
    public string ArtificerWispCleaveDamageFractionDoc { get; init; } = "Fraction of wisp's melee damage applied to each AoE cleave target (0-1). Default 0.5 = 50% splash damage to nearby enemies.";
    public float ArtificerWispCleaveDamageFraction { get; set; } = 0.5f;

    public SummoningClassSettings Druid { get; set; } = new();
    public SummoningClassSettings Elementalist { get; set; } = new();
    public SummoningClassSettings Necromancer { get; set; } = new();
    public SummoningClassSettings Enchanter { get; set; } = new();
    public SummoningClassSettings Artificer { get; set; } = new();
}

public class SummoningClassSettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "Enable this summoning class.";
    public bool Enabled { get; set; } = true;

    [JsonPropertyName("// TotalCap")]
    public string TotalCapDoc { get; init; } = "Total pet cap (auto + device combined).";
    public int TotalCap { get; set; } = 4;

    [JsonPropertyName("// PetTypes")]
    public string PetTypesDoc { get; init; } = "Pet types for this class. Only enabled types will be summoned.";
    public Dictionary<string, PetTypeSettings> PetTypes { get; set; } = new();
}

public class PetTypeSettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "Enable this pet type.";
    public bool Enabled { get; set; } = false;

    [JsonPropertyName("// Count")]
    public string CountDoc { get; init; } = "Pets summoned per trigger. Other summoning classes: minimum 4. Artificer Wisps: minimum 1 (honors Count).";
    public int Count { get; set; } = 4;

    [JsonPropertyName("// CustomWcids")]
    public string CustomWcidsDoc { get; init; } = "Optional custom WCIDs to use instead of built-in pool.";
    public uint[]? CustomWcids { get; set; } = null;
}
