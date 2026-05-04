# AutoLoot

An ACEmulator server mod that automatically loots items from creature corpses based on configurable rules. Built with [ACE.BaseMod](https://github.com/aquafir/ACE.BaseMod) and Harmony.

---

## What it does

When a player kills a creature, AutoLoot checks the corpse and moves matching items directly into the player's inventory — no manual looting required. Each player controls their own settings independently; one player's filters have no effect on anyone else.

Each kill is processed in three passes:

1. **Profile pass** — checks every item against the server's available `.utl` loot profiles (VirindiTank-compatible rule files placed by server admins)
2. **VendorTrash pass** — picks up any unclaimed item whose sell value is at least N× its burden (configurable ratio)
3. **Unknown Scrolls pass** — picks up any unclaimed scroll the player hasn't learned yet (learn-and-destroy on the corpse). When a spell is learned, only the vanilla **You learn the … spell.** line is shown; the post-kill AutoLoot summary does **not** repeat the scroll name.

After looting, a chat summary tells you what was picked up and why.

---

## Installation

1. Build the project (or download a release) and copy the output folder to `C:\ACE\Mods\AutoLoot\`
2. Sample `.utl` profiles are included under `LootProfiles\` in the mod output; add or replace files there for your shard.
3. Restart the server or hot-reload with `/mod f AutoLoot`
4. Players can type `/autoloot` in-game to get started

---

## Commands

All commands start with `/autoloot`.

| Command | Description |
|---|---|
| `/autoloot` | Show the full menu — available profiles, filter status, and all commands |
| `/autoloot on` | Enable everything (all profiles + VendorTrash + Scrolls) |
| `/autoloot off` | Disable everything |
| `/autoloot <#>` | Toggle a profile on/off by its index number |
| `/autoloot <name>` | Toggle a profile on/off by partial name match |
| `/autoloot details` | Toggle loot notifications in chat on/off |
| `/autoloot vt` | Toggle the VendorTrash filter on/off |
| `/autoloot vt <ratio>` | Set a custom value:burden ratio and enable VendorTrash (e.g. `/autoloot vt 30`) |
| `/autoloot scrolls` | Toggle the Unknown Scrolls filter on/off |
| `/autoloot rares` | Toggle server-wide broadcast when you loot a rare item |

---

## Server Loot Profiles

Profiles are `.utl` files placed by the server admin in the `LootProfiles/` folder. Players cannot create or upload their own — they simply toggle the server's profiles on or off. The **shipped** `Settings.json` sets **`DefaultActiveProfiles`** to the five files below (allowlist: only those names appear in `/autoloot`, and new characters get them enabled). If you set **`DefaultActiveProfiles`** to empty `[]` and leave **`DefaultProfile`** empty, first-login still uses the bundled five filenames in code (`Autoloot.BundledDefaultProfileFileNames`), but `/autoloot` lists every `.utl` on disk (admin-style). A non-empty explicit list always means allowlist mode for the command menu.

These profiles ship with the mod (under `LootProfiles/`):

| Profile | What it loots |
|---|---|
| `BetterKeys.utl` | Sturdy keys (e.g. Sturdy Iron / Sturdy Steel) and related rules |
| `Currency.utl` | Pyreals, trade notes, peas, alt currency, and combined currency rules |
| `PyrealMotes.utl` | Pyreal Mote, Sliver, Nugget, Bar |
| `Rares.utl` | Rare items (profile rare WCID rules) |
| `Trophies.utl` | Trophies / extended targets (see UTL; may overlap rules with other profiles on your shard) |

**First-login defaults:** for any character that does not yet have `LootProfiles/PlayerData/{guid}.json`, the server enables **`DefaultActiveProfiles`** from `Settings.json` when that list is non-empty; otherwise the bundled five filenames in code (same set as above). That runs on **login** and **first kill**. To use a single legacy file for defaults, set **`DefaultProfile`** only (and see code paths for empty lists).

Quest turn-in stockpiling for name fragments like Pincer / Tusk / Matron is handled by `NoDuplicateNames` in `Settings.json`, not by a separate profile.

---

## Loot Notifications

When loot notifications are on (the default), AutoLoot sends a chat message after each kill:

```
[AutoLoot] You've looted a Trade Note, 150 Pyreals, and a Fine Leather Coat [$]!
[AutoLoot] [!] You can learn: War Magic VI
```

- **`[$]`** — item was picked up by the VendorTrash filter (good value-to-weight ratio)
- **`[!]`** — scroll contains a spell you haven't learned yet

Turn notifications off with `/autoloot details`.

---

## Persistence

Every player's settings are saved to a JSON file when changed and restored automatically on their next session — even if the server restarts. Settings that persist:

- Which profiles are active
- Whether loot notifications are on
- VendorTrash on/off and the custom ratio
- Unknown Scrolls on/off
- Rare broadcast on/off

Files are stored at: `LootProfiles/PlayerData/{character-guid}.json`

---

## Quest Item Protection

AutoLoot includes a safeguard against using it to bypass quest timers. Items matching names in the `NoDuplicateNames` list (default: `Pincer`, `Tusk`, `Matron`) will not be looted if the player already has one of the same type anywhere in their inventory — including inside backpacks. This prevents stockpiling quest turn-in pieces ahead of cooldown timers.

Server admins can expand this list in `Settings.json`.

---

## Chest & Corpse Close-Phase Looting

AutoLoot processes containers in two phases:

1. **Kill-time / Open phase** — For corpses, immediate autoloot applies profiles, VendorTrash, unknown scrolls, and level-8 component conversion on first open. For chests, the player sees all contents on open (no hidden removal).
2. **Close phase** — When a chest or corpse is closed, AutoLoot runs:
   - **Immediate pass** — silent banking of currency/peas/keys/lockpicks, destruction of known scrolls, level-8 component conversion
   - **Profile batch loot** — remaining items matching active profiles
   - **VendorTrash** — value-to-burden filter
   - **Unknown scrolls** — unlearned spells
   - **Salvage + clutter destroy** — remaining items sent to salvage or destroyed

This prevents the "items vanished server-side but still visible in UI" bug by deferring silent removals until container close.

---

## Loot Stack Consolidation

When looting corpses, AutoLoot merges duplicate same-WCID items into a single stack. If an item lacks stack properties (e.g., old Generic-type quest drops like Drudge Charms), the consolidator infers `MaxStackSize=100`, `StackSize`, `StackUnitEncumbrance`, and `StackUnitValue` from the item's own burden and value, then merges them. This fixes non-stackable quest drops without requiring a weenie update (though weenie fixes are still recommended for permanent resolution).

---

## Server Configuration (`Settings.json`)

| Setting | Default | Description |
|---|---|---|
| `LootProfilePath` | `Mods/AutoLoot/LootProfiles` | Folder where `.utl` profiles are stored |
| `DefaultActiveProfiles` | The five shipped `.utl` names (see table above) | Shipped: allowlist for `/autoloot` and new-character defaults. `[]` + empty `DefaultProfile`: first-login uses bundled five in code; `/autoloot` lists every `.utl` on disk. |
| `DefaultProfile` | `""` | Legacy: single default file when `DefaultActiveProfiles` is empty |
| `NoDuplicateNames` | `["Pincer", "Tusk", "Matron"]` | Name fragments that trigger the one-per-player quest item check |

**Path + prefs:** Empty `LootProfilePath` in JSON is resolved to `<mod folder>/LootProfiles` before any disk read so `PlayerEnterWorld` can run before mod start completes. If a player JSON exists but **`ActiveProfileNames` is empty**, defaults are re-seeded from disk on load (fixes “autoloot does nothing” after a bad first login).

---

## Requirements

- [ACEmulator](https://github.com/ACEmulator/ACE)
- [ACE.BaseMod](https://github.com/aquafir/ACE.BaseMod) (NuGet package — bundled automatically at build)
