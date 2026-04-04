# Loremaster – TODO

## Barkeeper parchments (v2)

- **One** active contract per character; `CooldownSeconds` default **0** (off). Explore/Fetch turn-in: **Town Crier** WCIDs in settings; bartender vendors inject **five** rows via `BartenderContractBoards`.
- **Gem** starters: `Gem.UseGem` — set `ParchmentActivation` to `Gem` (default). **Book** starters: `Book.ActOnUse` — set `ParchmentActivation` to `Book`; item is consumed (no read UI). Optional `TemplateMatchInscription` disambiguates same WCID + different `PropertyString.Inscription`.
- **Pools:** `ExploreLandblockRawPool` rolls a destination at start; `KillTargetCreatureWcidPool` rolls a target WCID when `TargetCreatureWcid` is 0.
- Tier XP + `GrantRepeatSolveLoot` keys: `LMParchmentTierEasy` / `Average` / `Challenging` in `RepeatSolveLoot.json`.
- Do not reuse **LeyLineLedger** luminance gem WCIDs for parchment **gems**.

**Later ideas:** weighted pool entries, fetch-item pools, richer procedural objective text.
