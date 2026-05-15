-- ============================================================
-- Anointed Healing Kit — template weenie for Empower - Healing
-- 
-- This is a SINGLE template. Runtime code in AnointedKitGenerator
-- randomizes stats (BoostValue, HealkitMod), BoosterEnum, and
-- applies 2-5 perks after the item is created via loot generation.
--
-- WCID: 900000 (must be free & registered in WCID registry)
-- ============================================================

-- Base weenie
INSERT IGNORE INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (900000, 'anointedhealingkit', 21, NOW());
-- type 21 = WeenieType.Healer

-- Int properties
INSERT IGNORE INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES
  (900000,   1,  128)       /* ItemType = Misc (Healer subtype) */
, (900000,   5,   10)       /* Burden */
, (900000,  16,   1)        /* ItemUseable - When wielded? Actually Healer weenies use ItemUseable 1 for use-in-inventory */
, (900000,  19,   0)        /* Value — set at runtime */
, (900000,  93,  1044)      /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
, (900000,  94,   16)       /* TargetType - Creature */
, (900000, 150, 103)        /* HookPlacement - ??? */
, (900000, 151,   2)        /* HookType - Wall */
, (900000,  33,   1)        /* Bonded - Bonded */
, (900000, 114,   1)        /* Attuned - Attuned */;

-- Float properties
INSERT IGNORE INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES
  (900000,  39, 1.0)        /* DefaultScale */
, (900000,  54, 1.0)        /* UseRadius */;

-- String properties
INSERT IGNORE INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES
  (900000,   1, 'Anointed Healing Kit')    /* Name — suffix added at runtime */
, (900000,  15, 'A looted healing kit with randomized stats and perks.')  /* ShortDesc */
, (900000,  16, 'A mystical healing kit pulsing with latent power. Its properties manifest differently each time one is found.')  /* LongDesc */;

-- DID properties (icons, sounds, models)
INSERT IGNORE INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES
  (900000,   1, 0x020002FA)    /* Icon — Peerless Healing Kit icon */
, (900000,   6, 0x040008B4)    /* PaletteBase */
, (900000,   7, 0x1000016F)    /* InventoryModel — bottle/kit model */
, (900000,   8, 0x0600366C)    /* IconUnderlay — maybe */
, (900000,  22, 0x34000003)    /* MotionTable */
, (900000,  27, 0x40000001)    /* UseAnimation — generic heal */
, (900000,  28, 0x00000000)    /* Unknown */
, (900000,  52, 0x060069B0)    /* IconUnderlay — result? */
, (900000,  29, 0x00000000)    /* CSetup — # */
, (900000,  30, 0x00000000)    /* Unknown */
, (900000,  31, 0x00000000)    /* Unknown */
, (900000,  32, 0x00000000)    /* Unknown */
, (900000,  33, 0x00000000);   /* Unknown */

-- Bool properties
INSERT IGNORE INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES
  (900000,  11, True)        /* Stackable? No - Healer type doesn't stack */
, (900000,  22, True)        /* Inscribable */
, (900000,  23, True)        /* Hookable - Yes */
, (900000,  69, False);      /* IsSellable? Default yes */

-- Skill (Healing) - required to use, but we give it a 0 requirement so anyone can use
INSERT IGNORE INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (900000, 115, 0);   /* Healing skill requirement — 0 = no requirement */

-- Skill level requirement (if any) - 0 means no restriction
-- INSERT IGNORE INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
-- VALUES (900000, 339, 0);  /* HealingSkillCheck */