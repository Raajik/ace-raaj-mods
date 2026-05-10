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

## Auto-deposit systems

### Quest salvage bags (QuestSalvageAutoBank)

When `EnableQuestSalvageAutoBank` is true (default), quest reward salvage bags are automatically converted to banked material units on acquisition — **the item never lands in your inventory**.

| Quest bag WCID(s) | Material | Regular salvage WCID |
|---|---|---|
| 29571 | Aquamarine | 21037 |
| 29572 | Black Garnet | 21039 |
| 29573 | Black Opal | 21040 |
| 29574 | Emerald | 21048 |
| 29575 | Fire Opal | 21049 |
| 29576 | Granite | 20985 |
| 29577 | Imperial Topaz | 21054 |
| 29578 | Jet | 21056 |
| 29579 | Mahogany | 20988 |
| 29580 | Red Garnet | 21069 |
| 29581 | Steel | 20993 |
| 29582 | Sunstone | 21079 |
| 30260 | White Sapphire | 21086 |
| 33620 (Pathwarden) | Granite | 20985 |
| 33621 (Pathwarden) | Steel | 20993 |

- Each bag deposits **100 units** (1 full standard bag) to the matching material bank property (same **`ResolveMaterialBankProperty`** / `DepositRules` lookup as `/bank salvage`; **no** WCID-offset fallback if the regular salvage WCID is missing from rules).
- Intercepted at the `Player.GiveFromEmote` level (NPC emote rewards), so this works for **Clutch of Kings NPCs** and any other quest giver using emotes.

### Pathwarden rewards (PathwardenAutoBank)

When `EnablePathwardenAutoBank` is true (default), returning Pathwarden armor pieces to the racial trainers deposits:
- Granite/Steel bags → handled by the unified **QuestSalvageAutoBank** above
- Sturdy Iron Keys (WCID 6876) → deposited to the configured `Items` bank property

### Recipe salvage (SalvageDirectDeposit)

When `SalvageBank.DirectDepositOnSalvage` is true, items created by salvage recipes (tinkering bench output) are instantly deposited to the material bank.

**How bank property IDs are chosen:** For each `DepositRules` row at index `i`, the bank slot is **`rule.BankProperty`** if non-zero, else **`SalvageBank.FirstMaterialBankPropertyId + i`**. Matching deposits (inventory, recipe output, quest bags) resolve the row by **WeenieClassId**, **OutputBagWeenieClassId** (when different from primary), and **AdditionalDepositWeenieClassIds** — same source WCID set as `BankSalvage.GetDepositSourceWcids`.

**Legacy WCID-offset stray balances:** If BetterSupportSkills (pre-fix) or another path credited **`FirstMaterialBankPropertyId + (WCID − 20981)`** while the rule index differed, units could sit on the wrong property. **`BankSalvage.MaybeMergeLegacyWcidOffsetSalvageBank`** runs on **player enter world** and when **`/bank salvage`** runs (after `MaybePurgeLegacyPooledSalvage`): for each stack salvage WCID **20981–21089** with a matching rule, if legacy ≠ resolved and legacy **> 0**, merge into resolved and zero legacy. Players get one summary line when anything moved.

**DepositRules metadata (Windblown):** Nether Rending is credited on **Salvaged Onyx (WCID 21064)** under weapon tinkering; **Salvaged Obsidian (21063)** is **`Useless`** / no apparent use (matches Overtinked + vanilla Obsidian). Inserting or reordering rows changes which `PropertyInt64` each material uses — coordinate with any SQL/biota tooling and run the merge once after fixing clients.

### Skeleton key appraisal (`SkeletonKeyAppraisal`)

When `SkeletonKeyAppraisal.Enabled` is true (default), `AppraiseInfo.BuildProperties` appends a short suffix to key **LongDesc** for Windblown skeleton key WCIDs — **`(1kD)`**, **`(1kC)`**, **`(5kD)`**, **`(5kC)`** — matching **BetterKeys** `PatchClass.EnsureKeyMap` door/chest resist caps. Override or extend with `SuffixByWcid` in `Settings.json`.

---

## Vendor integration

**Scope:** LeyLineLedger patches vendor **money flow and displayed/buyback prices** (bank debit, sell deposit, sell-rate multiplier). It does **not** replace **QOL** optional **`VendorLootRotation`**, which regenerates **which items** appear on qualifying equipment vendors before pricing runs (Harmony priority: QOL First, then LLL). See repo **`AGENTS.md`** §8.2 and **`QOL/Readme.md`** § Vendor loot rotation.

- **Debit (`Debit.cs`):** If `VendorsUseBank`, purchases spend **bank first**, then carried currency. Coin display for vendors is capped so the client does not overflow int32.
- **Direct deposit (`DirectDeposit.cs`):** If `DirectDeposit`, vendor sale proceeds go to the bank; `/ddt` lets a player opt out per character when the server default is on.

---

## Pre-Unlock Luminance Banking

When `EnablePreUnlockLuminanceBanking` is `true` (default), earned luminance is redirected to the **banked luminance** slot (`LuminanceProperty`) if the player has not yet unlocked the luminance quest (`MaximumLuminance == null` or `0`). This prevents silent loss of luminance earned before unlocking. A chat message informs the player of the banked amount.

| Setting | Default | Description |
|---------|---------|-------------|
| `EnablePreUnlockLuminanceBanking` | `true` | Redirect pre-unlock luminance to bank instead of discarding |

## AutoLoot

**AutoLoot** can deposit looted pyreals/trade notes into the same bank slot: set `DepositLootedCurrencyToBank` and align `BankCashProperty` with LeyLineLedger’s `CashProperty` (often **39999**).

---

## Death

- **`MaxCoinsDropped`:** Caps physical pyreals dropped on death; default **0** means no coin explosion from the mod’s death patch.
- **`DeathBankPyrealPercent`:** Optional **0–100**; on death, removes a percentage of **banked** pyreals (no physical coins). Optional **`DeathBankPyrealMaxLossPerDeath`** caps the loss per death. Patched when percent &gt; 0 (`DeathBankPenalty`).

---

## Lottery

Weekly prize lottery with dual pools: **pyreals** and **Quest Bonus (QB)**.

### Prize Pools

| Pool | Sources | Prize Type |
|------|---------|------------|
| **Pyreal** | Exchange sell tax (with destruction), Sale vendor spending, `/donate pyreals`, `/donate luminance` conversion | Banked pyreals |
| **QB** | `/donate qb` (direct 1:1) | Real `QuestPointsExtra` via `GrantLotteryQbPrize` |

### Draw Mechanics

- Weekly draws (default 10080 minutes = 7 days)
- 3 winners: 1st=50%, 2nd=30%, 3rd=20% of both pools
- No duplicate winners
- Offline pyreal prizes credited to biota; QB prizes online-only currently

### `/donate` Command

| Usage | Effect |
|-------|--------|
| `/donate pyreals <amount>` | Donate banked pyreals to pyreal pool |
| `/donate luminance <amount>` | Donate banked luminance (rate: `DonateLuminanceRate`) |
| `/donate qb <amount>` | Donate effective QB to QB pool (uses `DonatedQuestPoints` offset) |

### `/lottery` Command

| Usage | Effect |
|-------|--------|
| `/lottery` | Show pyreal pool, QB pool, ticket price, your tickets |
| `/lottery buy <n>` | Purchase n tickets |

---

## Vendor Sell Rate Reduction

When **`EnableVendorSellRateReduction`** is `true` (default), the amount vendors pay players for sold items is multiplied by **`VendorSellRateMultiplier`** (default **0.03** = 3% of normal value). This patches `Vendor.BuyPrice` so the reduction is visible in the **client sell UI** and applied consistently in **server-side payouts** (`Vendor.GetBuyCost`). Both display and actual payout reflect the reduced rate.

| Setting | Type | Default | Description |
|---|---|---|---|
| `EnableVendorSellRateReduction` | bool | `true` | Master toggle for vendor payout reduction |
| `VendorSellRateMultiplier` | double | `0.03` | Payout multiplier (0.03 = 3% of normal vendor buy value) |

---

## Settings (high level)

See **`Settings.json`** / **`Settings.cs`** for full lists. Commonly tuned:

| Area | Examples |
|------|-----------|
| Bank slots | `CashProperty`, `LuminanceProperty`, `Items` (WCID + `PropertyInt64` per item) |
| Vendors | `VendorsUseBank`, `DirectDeposit`, `EnableVendorSellRateReduction`, `VendorSellRateMultiplier` |
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
