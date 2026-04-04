# LeyLineLedger – TODO

Outstanding work and planned features for the LeyLineLedger mod. (Source: DESIGN.md, PatchClass.cs.)

## Core feature

- **Bank transfer** — **Done.** `/bank transfer pyreals` supports online targets (`PlayerManager`) and offline targets (shard `Character` + `BiotaPropertiesInt64` for `Settings.CashProperty`). Sender is debited only after the offline DB update succeeds.

## Future / planned

- **AutoLoot integration** — **Satisfied in-repo.** Default `CashProperty` (39999) matches AutoLoot `BankCashProperty`; both are documented in `Settings.cs`. If you change one, change the other to match.

- **Death bank penalty** — **Done.** `DeathBankPyrealPercent` (0 = off) and optional `DeathBankPyrealMaxLossPerDeath` in `Settings.json`.

- **Luminance withdrawal gems** — **Done.** `/bank withdraw luminance <amount>` / `/b w l <amount>` (or `all`); see DESIGN.md §7 and `Settings.LuminanceGemWeenieClassId` / `LuminanceGemStoredAmountProperty`.
