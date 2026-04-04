# LeyLineLedger

Character-based banking for ACEmulator: **pyreals**, **luminance**, and configured **bank items** (optional keys/custom items via `Settings.Items`). Deposit, withdraw, and transfer pyreals to another character by name. Vendor buy can debit the bank first; vendor sell can deposit proceeds. Death behavior is configurable (no physical coin drops by default, optional bank penalty).

---

## Bank model

| Currency / item | Storage | Notes |
|-----------------|---------|--------|
| Pyreals | `PropertyInt64` (`CashProperty`) | No realistic cap; client display is capped around int32 for vendor UI |
| Luminance | `PropertyInt64` (`LuminanceProperty`) | Banked luminance is separate from spendable luminance until you withdraw via gem |
| Configured items | Per-item `PropertyInt64` in `Settings.Items` | Optional; e.g. MMD count (WCID 20630), custom bank goods |

State lives on the **player biota** (no extra DB tables for the bank itself). **Pyreal transfer** resolves the target character by name (case-insensitive, not deleted); online targets are credited immediately, offline targets via biota save.

---

## Commands

Registered handlers: **`/bank`** and **`/b`** (same parser). **`/ddt`** toggles per-player direct deposit when `DirectDeposit` is enabled (see `DirectDeposit.cs`).

### Summary and deposit

| Usage | Effect |
|-------|--------|
| `/bank` or `/bank list` | Show pyreals (and MMD count if configured), luminance, and configured bank items |
| `/bank deposit` or `/b d` | Deposit loose pyreals/trade notes and **available** luminance into the bank |

### Withdraw

| Usage | Effect |
|-------|--------|
| `/bank withdraw pyreals <amount>` or `/b w p <amount>` | Withdraw pyreals; prefers higher denominations via `Settings.Currencies` |
| `/bank withdraw all` or `/b w a` | Withdraw **all** banked pyreals (same as `w p all`) |
| `/bank withdraw luminance <amount>` or `/b w l <amount>` | Debit **banked** luminance, create a gem stack holding the amount (`all` / `a` = all banked) |

**Luminance gems:** Default gem WCID is **7897** (Black Garnet); set `LuminanceGemWeenieClassId` to `0` to disable withdrawal, or change it if your world uses another **Gem** weenie. The gem stores the amount on `LuminanceGemStoredAmountProperty` (default **45213**); using the gem credits **banked** luminance (vanilla gem effect for that payload is skipped). See `PatchClass.LuminanceGem.cs` / `Gem.UseGem` patch.

### Transfer

| Usage | Effect |
|-------|--------|
| `/bank transfer pyreals <amount> <character name>` or `/b t p <amount> <name>` | Transfer banked pyreals; `<amount>` may be `all` / `a` |

**Note:** Only **pyreal** transfer is implemented; there is no `/bank transfer luminance` in the current handler.

### Legacy item verbs (configured `Settings.Items`)

After the modern subcommands, remaining tokens are parsed as **list** / **give** / **take** for named bank items (partial name or WCID): deposit or withdraw stacks, subject to `ExcessSetToMax` and inventory checks.

---

## Vendor integration

- **Debit (`Debit.cs`):** If `VendorsUseBank`, purchases spend **bank first**, then carried currency. Coin display for vendors is capped so the client does not overflow int32.
- **Direct deposit (`DirectDeposit.cs`):** If `DirectDeposit`, vendor sale proceeds go to the bank; `/ddt` lets a player opt out per character when the server default is on.

---

## AutoLoot

**AutoLoot** can deposit looted pyreals/trade notes into the same bank slot: set `DepositLootedCurrencyToBank` and align `BankCashProperty` with LeyLineLedger’s `CashProperty` (often **39999**).

---

## Death

- **`MaxCoinsDropped`:** Caps physical pyreals dropped on death; default **0** means no coin explosion from the mod’s death patch.
- **`DeathBankPyrealPercent`:** Optional **0–100**; on death, removes a percentage of **banked** pyreals (no physical coins). Optional **`DeathBankPyrealMaxLossPerDeath`** caps the loss per death. Patched when percent &gt; 0 (`DeathBankPenalty`).

---

## Settings (high level)

See **`Settings.json`** / **`Settings.cs`** for full lists. Commonly tuned:

| Area | Examples |
|------|-----------|
| Bank slots | `CashProperty`, `LuminanceProperty`, `Items` (WCID + `PropertyInt64` per item) |
| Vendors | `VendorsUseBank`, `DirectDeposit` |
| Death | `MaxCoinsDropped`, `DeathBankPyrealPercent`, `DeathBankPyrealMaxLossPerDeath` |
| Luminance gem | `LuminanceGemWeenieClassId`, `LuminanceGemStoredAmountProperty` |
| Withdrawals | `Currencies` (denominations / withdrawal order) |

---

## Technical notes

- **Transfers:** Shard DB character lookup by name; offline biota update for targets not online.
- **Reload:** `Debit` / `DirectDeposit` / `DeathBankPenalty` categories are applied from `Start` and `OnWorldOpen` so vendor patches apply even if the mod loads after the world is already up.

---

## Demos

- https://github.com/aquafir/ACE.BaseMod/assets/83029060/57d40ac2-2998-4fac-8bd5-af64ba281192
- https://github.com/aquafir/ACE.BaseMod/assets/83029060/09161459-0ed1-4a43-9c4c-c41b81f6142c
- https://github.com/aquafir/ACE.BaseMod/assets/83029060/fbee854d-5859-4b1b-9594-073891ed3e7d
- https://github.com/aquafir/ACE.BaseMod/assets/83029060/fa47f292-5065-4d75-ae87-4d9cfe811697
- https://github.com/aquafir/ACE.BaseMod/assets/83029060/f7932ee2-1dd6-440a-b5d7-057b9b9f2c9b
- https://github.com/aquafir/ACE.BaseMod/assets/83029060/692a2488-0a27-4f04-9a11-566495c17a77
