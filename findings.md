# WindblownContent → Windblown consolidation plan

## Files to KEEP and MOVE into Windblown/Content/SQL/

### Items (800000-809999) — new WCID ranges
| Old file | New file | Notes |
|----------|----------|-------|
| 08-custom-items/01_CoalescedMana_LesserGreaterAetheric.sql | Content/SQL/Items/01_CoalescedMana_800000-800002.sql | Rewrite to use 800000-800002 |
| 08-custom-items/02_SpellSiphon_850200.sql | Content/SQL/Items/02_SpellSiphon_800003.sql | Rewrite to use 800003 |
| 08-custom-items/03_ManaLattice_850201.sql | Content/SQL/Items/03_ManaLattice_800004.sql | Rewrite to use 800004 |
| 08-custom-items/06_Create_Custom_Letters.sql | Content/SQL/Items/04_CustomLetters_800005-800006.sql | Rewrite to use 800005-800006 |

### Vendors (810000-819999)
| 01-weenies/Vendors/800039 Radi.sql | Content/SQL/Vendors/01_Radi_810000.sql | Rewrite + WCID |
| 01-weenies/Vendors/850300 Kaelith.sql | Content/SQL/Vendors/02_Kaelith_810001.sql | Rewrite + WCID, drop Pathwarden armor/robes, keep only Academy weapons |
| 02-landblocks/0007_TownNetwork_Vendors.sql | Content/SQL/Vendors/03_TownNetworkSpawns.sql | Rewrite with new WCIDs |

### Pathwarden chests (vanilla WCIDs, additive)
| 07-containers/PathwardenChests/33609-33612.sql | Content/SQL/Pathwarden/01_ChestAddLesserMana.sql | Add 10x Lesser Coalesced Mana |
| 09-pricing/PathwardenGear_BasePrices.sql | Content/SQL/Pathwarden/02_BasePrices.sql | Keep, no changes |

### Vanilla tweaks (additive only, no revert needed)
| Content/SQL/BroodMatronQueen_AllNinePartsGuaranteed.sql | Content/SQL/VanillaTweaks/01_BroodMatronQueen.sql | Keep |
| Content/SQL/StatueReplicaSmall_BronzeSalvageGuaranteed.sql | Content/SQL/VanillaTweaks/02_StatueReplicaBronze.sql | Keep |
| Content/SQL/2026-05-06-olthoi-pincer-revamp.sql | Content/SQL/VanillaTweaks/03_OlthoiPincerRevamp.sql | Keep |
| Content/zzz_Salvage_Defense_Bonus_Update.sql | Content/SQL/VanillaTweaks/04_DefenseSalvageDescription.sql | Keep |
| Content/SQL/RemoveAcademyPathwardenFromNonTnVendors.sql | Content/SQL/VanillaTweaks/05_RemoveAcademyFromNonTnVendors.sql | Keep |

### Revert SQL (undo previous mutations)
| (new) | Content/SQL/RevertVanillaMutations.sql | Revert trophy burden/value + letter type changes |

## Files to DELETE (not curated / not ours)
- 01-weenies/2026-05-07_trophies_burden_value_1.sql (handled by JSON)
- 03-vendor-stock/ (AcademyWeapons_VendorStock.sql deprecated)
- 05-cleanup/ (unknown origin, not confirmed)
- 06-lockboxes/ (WIP, leave for later)
- 08-custom-items/04_LuckyGoldScarletRed_Stackable.sql (handled by custom letters + JSON)
- 08-custom-items/CoalescedMana_LesserGreaterAetheric.sql (deprecated)
- 08-custom-items/ (originals stay, we copy to Windblown)
- Content/03-weenie/ (Facility Hub — NOT ours)
- Content/06-landblock/ (NOT ours)
- Content/SQL/DrudgeCharm_*.sql (handled by JSON)
- Content/SQL/README-TrophyCharmCloneTemplate.md (moved if useful)
- Content/zzz_Salvage_Defense_Bonus_Rollback.sql (irrelevant)
- 04-npcs/ (empty)
- artifacts/ (diffs, not ours)
- baseline/ (reference, not deployment)
- docs/ (move useful docs to Windblown/docs/)
- scripts/ (Dust bootstrap — ACRealms dead code)
- sql-backups/ (historical backups, can stay but not deployed)
