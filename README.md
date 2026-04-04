# ace-raaj-mods

A bundle of ACE (Asheron's Call Emulator) mods. These are customized/updated versions meant to be built and used with [ACE.BaseMod](https://github.com/aquafir/ACE.BaseMod) or a compatible ACE server setup.

## Mods in this repo

Gameplay mods (one folder per deployable mod):

- **AethericWeaver** — Spreadsheet-driven custom spells and equipment sets; main hooks gated while `InTesting` is true in `Settings.json`.
- **ChallengeModes** — Usage-based skills (former Aptitude), alternate spend on attributes/vitals/skills, extended character level cap, optional bonus stats; `/cm` hub plus legacy `/aptitude`, `/levels`, `/refund`. **Disabled** in `Meta.json` by default.
- **AureatePath** — Enlightenment flexibility and wield checks. Alternate leveling and XP-table extension moved to **ChallengeModes**.
- **AutoLoot** — Corpse autoloot using server `.utl` profiles plus optional vendor-trash and unknown-scroll passes.
- **EmpyreanAlteration** — Mutator pipeline (loot/corpse/generator hooks), loot-time item XP / pre-imbue (`LootGrowthItem`), mutators including **Slayer** and **ShinyPet**, opt-in Harmony features (fake properties, combat extras, item growth on level-up), and shared alteration settings. **Disabled** in `Meta.json` by default until you configure it.
- **Gemcrafter** — Gem loot upgrades and mortar-based equipment infusion; **disabled** in `Meta.json` by default (in testing).
- **LeyLineLedger** — Banking and ledger for items, pyreals/trade notes, and luminance (`/bank`, `/cash`, `/lum`, vendor hooks).
- **Loremaster** — Quest progress bonuses, first-solve rewards, milestones, and related portal/repeat-solve hooks.
- **Numbersmith** — Formula-driven balance (AngouriMath) for damage, crits, healing, XP, level cost, and more.
- **Overtinked** — Extended tinkering (max tries, imbues, salvage rules, custom imbues) and **item XP curves**, quest-time item leveling init, and `OnItemLevelUp` growth (loot factory XP init is owned by **EmpyreanAlteration** when you use `LootGrowthItem`).
- **QOL** — Toggleable convenience patches (recall animation speeds, augmentation caps, fellowships, tailoring, vendors, stackables, offline swear filter, **healing-kit Swiftmend/HoT** via `EnableSwiftmend`, **pet behavior** via `EnablePet*` / `EnableSummonCreatureAsPet`, etc.). Pet features previously lived in the retired **EmpyreanEchoes** mod.
- **Swarmed** — CreatureEx champion variants (factory roll, FakeInt 10029, `/cex`) and call-for-help reinforcements on kill.

**Support / tools (not server mods):** `AceModQa/` (shared QA helpers), `tools/` (e.g. DecalQaRunner, LinearSync, AceServerStringRef).

### Retired names (historical)

Older docs referred to **CHANGEBank**, **CHANGEBalance**, **CHANGERaise**, **CHANGECustomSpells**, **CHANGEExpansion**, and **CHANGEEasyEnlightenment**. The current mods above replace those concepts (e.g. LeyLineLedger for banking, Numbersmith for balance, AureatePath for raise/enlightenment paths, AethericWeaver for custom spells, **EmpyreanAlteration** for the expansion-style alteration/mutator layer). The **EmpyreanEchoes** mod folder was retired; its behavior was split into **EmpyreanAlteration**, **Swarmed**, **QOL** (pets), **ChallengeModes** (bonus stats, ironman/hardcore), and other mods listed above.

### Merged mods (historical)

The former **Swiftmend** mod (healing kits → self + HoT) now ships inside **QOL** as `EnableSwiftmend` and the `Swiftmend` settings object. Remove any old `Mods/Swiftmend` folder when upgrading.

## Building

These projects reference `ACE.Shared` and the ACE server assemblies. To build:

1. Clone or open the parent solution that contains **ACE.Shared** (e.g. [ACE.BaseMod](https://github.com/aquafir/ACE.BaseMod)).
2. Place this repo’s contents at `ace-raaj-mods` in that solution (i.e. so the path is `ACE.BaseMod/ace-raaj-mods/`).
3. Open the main solution and build the ace-raaj-mods projects, or build them from the command line with the working directory set to the parent repo.

Most mods use `ProjectReference Include="..\..\ACE.Shared\ACE.Shared.csproj"`, so the folder must live two levels below the repo root that contains `ACE.Shared`. `LeyLineLedger` can also be built against the official `ACEmulator.ACE.Shared` / `ACRealms.ACE.Shared` NuGet packages without the local `ACE.Shared` project.

## Backlog

Tracked work and future mod ideas: [PLAN.md](PLAN.md) (including [greenfield concepts](PLAN.md#greenfield-concepts)).

## License and credits

Per-mod credits are in each mod’s Readme and Meta.json. Overtinked is based on the Tinkering sample by aquafir (ACE.BaseMod).
