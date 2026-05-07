# AutoLoot

An ACEmulator server mod that automatically banks currency, keys, trophies, salvage, and items from creature corpses and chests — no manual looting required. Each player controls their own settings independently.

---

## What it does

When a player kills a creature or opens a chest, AutoLoot processes the contents in multiple passes:

1. **Immediate banking (silent, unconditional)** — currency/pyreal peas, coalesced mana, keys, lockpicks, level-8 spellcrafting components, and any LeyLineLedger-bankable items are credited to the bank and removed from the container without chat output.

2. **Physical trophy pass** — WCIDs in `Settings.UpgradedTrophyWeenieClassIds` (drudge charms, rat tails, wasp wings, mob heads, quest letters, olthoi pincers) are moved into the player's pack as real items (not bank entries).

3. **Unknown scrolls** — readable scrolls the player can learn are auto-learned and destroyed.

4. **Pass-through salvage** — remaining gear with salvageable materials is auto-salvaged via BetterSupportSkills.

After processing, a chat summary tells you what was banked or collected.

---

## Installation

1. Build the project and the DLL is placed at `C:\ACE\Mods\AutoLoot\AutoLoot.dll`
2. Restart the server or hot-reload with `/mod f AutoLoot`
3. Players can type `/autoloot` in-game to see their options

---

## Commands

All commands start with `/autoloot`.

| Command | Description |
|---|---|
| `/autoloot` | Show the full menu — profiles list, toggles, and all commands |
| `/autoloot on` | Enable all available options |
| `/autoloot off` | Disable all options |
| `/autoloot scrolls` | Toggle Unknown Scrolls auto-learn on/off |
| `/autoloot trophies` | Toggle physical trophy pass on/off |
| `/autoloot bank` | Toggle LLL auto-banking on/off |
| `/autoloot salvage` | Toggle AutoSalvage on/off |
| `/autoloot details` | Toggle loot notifications in chat on/off |

---

## Persistence

Every player's settings are saved when changed and restored on their next session:

- Active profiles, scrolls, trophies, and bank toggles
- Key/lockpick/salvage achievement counts
- AutoSalvage state

Files are stored at: `LootProfiles/PlayerData/{character-guid}.json`

---

## Quest Item Protection

Items matching names in the `NoDuplicateNames` list (default: `Pincer`, `Tusk`, `Matron`) will not be looted if the player already has one of the same type anywhere in inventory — prevents stockpiling quest turn-in pieces ahead of cooldown timers.

---

## When loot vs salvage run

| Container | Autoloot (banking, trophies, scrolls) | Salvage sweep |
|-----------|----------------------------------------|----------------|
| **Creature corpse** | When the corpse is created (at death) | On corpse **close** |
| **World chest** (no `HouseOwner`) | On chest **open** + cleanup on **close** | On chest **close** |
| **House chest** | **Never** | **Never** |

---

## Server Configuration (`Settings.json`)

| Setting | Default | Description |
|---|---|---|
| `DepositLootedCurrencyToBank` | `true` | Bank pyreals/peas/trade notes instead of putting in inventory |
| `BankCashProperty` | `39999` | PropertyInt64 for banked pyreals (must match LeyLineLedger) |
| `UpgradedTrophyWeenieClassIds` | ~50 WCIDs | Physical trophy items autolooted to pack |
| `KeyBankProperties` | SIK/SSK/MFK/Legendary | WCID → PropertyInt64 for key banking |
| `EnableChestAutoLoot` | `true` | Auto-loot world chests on open |
| `EnableDelayedSalvageSweep` | `true` | Salvage remaining items on container close |
| `EnableLevel8CompsConversion` | `true` | Convert level-8 spellcrafting comps to pyreal value |
| `DefaultAutolootSalvageBundleApplied` | `true` | New chars get full autoloot + salvage on first login |

---

## Requirements

- [ACEmulator](https://github.com/ACEmulator/ACE)
- [ACE.BaseMod](https://github.com/aquafir/ACE.BaseMod) (NuGet package)
