-- ============================================================
-- Anointed Healing Kit — template weenie for Empower - Healing
-- 
-- This is a SINGLE template. Runtime code in AnointedKitGenerator
-- randomizes stats (BoostValue, HealkitMod), BoosterEnum, icon,
-- and applies 2-8 perks after the item is created via loot generation.
--
-- Icons are set at runtime by (BoosterEnum, tier) combo:
--   Health: T1-3 Peerless (0x060032F3), T4-5 Treated (0x060032E5),
--           T6 Medicated (0x06005B6E), T7 Eternal (0x06005B6B), T8 Gauntlet (0x0600753B)
--   Stamina: T1-3 Lesser Stam (0x06007094), T4-5 Greater Stam (0x06007093),
--            T6 Medicated Stam (0x06005B70), T7 Eternal Stam (0x06005B6D), T8 Gauntlet Stam (0x0600753D)
--   Mana: T1-3 Lesser Mana (0x06007092), T4-5 Greater Mana (0x06007091),
--         T6 Medicated Mana (0x06005B6F), T7 Eternal Mana (0x06005B6C), T8 Gauntlet Mana (0x0600753C)
--
-- WCID: 900000 (WeenieType.Food = 18)
-- ============================================================

INSERT IGNORE INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (900000, 'anointedhealingkit', 18, NOW());
-- type 18 = WeenieType.Food — OnActivate fires on double-click without targeting reticle
-- We patch Food.OnActivate to add Healer-style skill checks

-- Int properties
INSERT IGNORE INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES
  (900000,   1,  128)       /* ItemType - Misc (Healer subtype) */
, (900000,   5,   10)       /* Burden */
, (900000,  16, 0x0008)     /* ItemUseable — Contained only (no Remote → no reticle) */
, (900000,  19,   0)        /* Value — set at runtime */
, (900000,  89,   2)        /* BoosterEnum — Health (NOT MaxHealth!) ACE expects Health=2, Stamina=4, Mana=6 */
, (900000,  90,   0)        /* BoostValue — set at runtime */
, (900000,  91,   9999)     /* MaxStructure — high for unlimited display */
, (900000,  92,   9999)     /* Structure — high for unlimited display */
, (900000,  93,  1044)      /* PhysicsState — Ethereal, IgnoreCollisions, Gravity */
, (900000,  94,    0)       /* TargetType — None (Food items don't target) */
, (900000, 115,   0);       /* Healing skill requirement — 0 = no requirement */

-- Float properties
INSERT IGNORE INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES
  (900000,  39, 1.0)        /* DefaultScale */
, (900000,  54, 1.0)        /* UseRadius */
, (900000, 100, 1.0);       /* HealkitMod — overwritten at runtime */

-- String properties
INSERT IGNORE INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES
  (900000,   1, 'Anointed Healing Kit')      /* Name — suffix added at runtime (e.g. " of Omni-Self") */
, (900000,  15, 'A looted healing kit with randomized stats and perks.')
, (900000,  16, 'A mystical healing kit pulsing with latent power. Its properties manifest differently each time one is found.');

-- DID properties — icon overwritten at runtime per tier
INSERT IGNORE INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES
  (900000,   1, 0x020002FA)    /* Setup — shared by all healing kits */
, (900000,   6, 0x040008B4)    /* PaletteBase */
, (900000,   7, 0x10000416)    /* ClothingBase */
, (900000,   8, 0x060032EF)    /* Icon — default Handy, overwritten at runtime */
, (900000,  22, 0x34000003);   /* MotionTable — generic */

-- Bool properties
INSERT IGNORE INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES
  (900000,  11, True)        /* Stackable? No */
, (900000,  22, True)        /* Inscribable */
, (900000,  23, True)        /* Hookable - Yes */
, (900000,  69, False)       /* IsSellable? Default yes */
, (900000,  63, True);       /* UnlimitedUse — prevents charge consumption */