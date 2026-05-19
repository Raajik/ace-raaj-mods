# ACE Modding Patterns & Best Practices

This document outlines technical patterns for Harmony patching, threading, and cross-mod integration within the ACE environment.

## Harmony Patching

- **Prefer `nameof(Target.Method)`**: String-based targets fail silently at runtime. `nameof` provides compile-time safety.
- **Patch Base `virtual`, not `override`**:
  - `Creature.Heartbeat` is an `override`.
  - Always patch `WorldObject.Heartbeat` (the base virtual method).
  - A single failure to find a target can prevent the entire mod from loading.
- **Patch Property Getters**: Use `[HarmonyPatch(..., MethodType.Getter)]` if a property affects both UI display and server math.
- **Initialization Order**: Always initialize `Settings` **before** calling `base.Start()` in `BasicPatch<T>` subclasses. `base.Start()` applies the patches; if it fails, `Settings` might not be assigned.
- **Cross-mod Reflection**: Extension methods live in sibling classes. If looking for `LeyLineLedgerBankInterop.Resolve`, remember it may depend on `LeyLineLedger.BankExtensions`. Search `*Extensions` class first; emit a one-time `Resolved <method> on <type>` log.

### ThreadStatic for Prefix→Postfix State
Always reset at the start of the prefix. Example: `_wasChaosFailure` in `ChaosTinker.cs`.

### JIT Inlining vs Harmony Prefixes
If a prefix fires for some callers but not others, the JIT likely inlined the wrapper. Fix: patch one level deeper (the inner method, e.g., `EmoteManager.Enqueue` instead of `ExecuteEmoteSet`).

Case study: `Windblown/TrophyLines/TrophyTurnInPatches.cs:PreEnqueue_Trophy` (2026-05-04).

## Threading & Concurrency

- **Thread-Safe Collections**: Avoid `static HashSet<T>`. Use `ConcurrentDictionary<T, byte>` with `TryAdd(key, 0)` / `TryRemove(key, out _)` / `ContainsKey(key)`.
- **`ACE.Common.ThreadSafeRandom.Next(int min, int max)`**: This method is **inclusive** on both bounds. Internally, it calls `Random.Next(min, max + 1)`.
  - **Warning**: Using `array.Length` as `max` will cause an `IndexOutOfRangeException`. Always use `Length - 1`.
- **Atomicity**: When modifying shared state, ensure operations are atomic or properly bracketed by locks/suppression.

## Cross-Mod Integration

- **LeyLineLedger is the Sovereign**:
  - **Commerce/Pricing**: `LeyLineLedger` owns ALL bank, vendor commerce, and pricing systems. No other mod should implement competing vendor price multipliers.
  - **Loot Tables**: `BetterLootControl` is the single source of truth for all loot tables.
  - **Leveling**: `AureatePath` owns the server-level cap (`MaxLevel`, `CreditInterval`, `LevelCost`).
- **Harmony Interop**: When patching without assembly references, use `AccessTools.TypeByName("Namespace.Type")` inside a static `TargetMethod()`. Use `Prepare()` returning `false` if the target type is absent.
- **Inventory Interception**: Be cautious with `Prefix` patches that might swallow `TryCreateInInventoryWithNetworking` calls from other mods. Use `[ThreadStatic] _suppressionDepth` and `EnterSuppression()`/`ExitSuppression()` to avoid unintended side effects.

## Monetary Rewards

- **Use LLL Bank Interop**: Whenever a Harmony patch grants a monetary/pyreal reward, it **must** use `LeyLineLedgerBankInterop.DepositToBank`.
- **Avoid Physical Items**: Do not give trade notes or physical pyreal items; these bypass the `LeyLineLedger` system and clutter player inventories.

## Salvage Banking (PropertyInt64)

- Material bank slots for stack salvage WCIDs **20981-21089** use **`SalvageBank.FirstMaterialBankPropertyId + DepositRules row index`** unless the row sets `BankProperty`. See `LeyLineLedger.BankSalvage.ResolveMaterialBankProperty`.
- **Do not** assume `FirstMaterialBankPropertyId + (WCID - 20981)` unless every rule row stays strictly WCID-sequential.
- **BetterSupportSkills** credits salvage units via **`Shared/LeyLineLedgerSalvageBankInterop`** + **`LeyLineLedgerBankInterop.IncBanked`** so messaging and `/bank salvage status` stay aligned.
- **LeyLineLedger** runs **`MaybeMergeLegacyWcidOffsetSalvageBank`** on login and at `/bank salvage` to fold any pre-fix legacy-slot balance into the resolved slot.
