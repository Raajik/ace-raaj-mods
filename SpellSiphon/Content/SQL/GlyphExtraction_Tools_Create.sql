<<<<<<< HEAD
-- Glyph of Extraction — Tiered Craft Tools (WCIDs 850210–850219)
-- Only Tier 0 (850210) has active extraction logic wired in C# for now.
-- Tiers 1–9 are reserved placeholders that behave as generic CraftTools until their
-- extraction logic is implemented.
--
-- Base Icon: 63D8 Prismatic Glyph (DID 0x060063D8 = 100688856)
-- IconOverlay: 6C33 Number Overlay (DID 0x06006C33 = 100690995) — applied to all tiers.
-- When charged, C# sets UiEffects.Acid (green outline) on the live object.

DELETE FROM `weenie_properties_create_list`  WHERE `object_Id` BETWEEN 850210 AND 850219;
DELETE FROM `weenie_properties_emote_action` WHERE `emote_Id` IN (
    SELECT `id` FROM `weenie_properties_emote` WHERE `object_Id` BETWEEN 850210 AND 850219
);
DELETE FROM `weenie_properties_emote`        WHERE `object_Id` BETWEEN 850210 AND 850219;
DELETE FROM `weenie_properties_skill`        WHERE `object_Id` BETWEEN 850210 AND 850219;
DELETE FROM `weenie_properties_body_part`    WHERE `object_Id` BETWEEN 850210 AND 850219;
DELETE FROM `weenie_properties_attribute_2nd` WHERE `object_Id` BETWEEN 850210 AND 850219;
DELETE FROM `weenie_properties_attribute`    WHERE `object_Id` BETWEEN 850210 AND 850219;
DELETE FROM `weenie_properties_d_i_d`        WHERE `object_Id` BETWEEN 850210 AND 850219;
DELETE FROM `weenie_properties_string`       WHERE `object_Id` BETWEEN 850210 AND 850219;
DELETE FROM `weenie_properties_bool`         WHERE `object_Id` BETWEEN 850210 AND 850219;
DELETE FROM `weenie_properties_float`        WHERE `object_Id` BETWEEN 850210 AND 850219;
DELETE FROM `weenie_properties_int`          WHERE `object_Id` BETWEEN 850210 AND 850219;
DELETE FROM `weenie`                         WHERE `class_Id` BETWEEN 850210 AND 850219;

-- ===========================================
-- Tier 0 — Glyph of Extraction I (WCID 850210)
-- Extracts: Cantrips and unique (non-tiered) spells.
-- Base price: 5,000 pyreals
-- ===========================================
INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850210, 'glyphextraction_1', 44, NOW()) /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850210,   1,        128) /* ItemType - Misc */
     , (850210,   5,          1) /* EncumbranceVal */
     , (850210,   8,          1) /* Mass */
     , (850210,   9,          0) /* ValidLocations - None */
     , (850210,  11,        250) /* MaxStackSize */
     , (850210,  12,          1) /* StackSize */
     , (850210,  13,          1) /* StackUnitEncumbrance */
     , (850210,  14,          1) /* StackUnitMass */
     , (850210,  15,       5000) /* StackUnitValue */
     , (850210,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (850210,  19,       5000) /* Value */
     , (850210,  33,          0) /* Bonded - Normal */
     , (850210,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (850210,  94,     560015) /* TargetType - ItemEnchantableTarget */
     , (850210, 114,          0) /* Attuned - Normal */
     , (850210,  18,       128) /* UiEffects - Magical */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850210,  22, True ) /* Inscribable */
     , (850210,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850210,  39,    0.75) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850210,   1, 'Glyph of Extraction') /* Name */
     , (850210,  14, 'Use this on a spell-bearing item to attempt extracting cantrips and unique spells. On success, the glyph becomes charged and can then be used on equipment or gems to apply the extracted magic.') /* Use */
     , (850210,  15, 'A prismatic glyph carved with ancient extraction runes, humming with faint potential.') /* ShortDesc */
     , (850210,  16, 'A prismatic glyph carved with ancient extraction runes. Unlike a standard Spellsiphon, this glyph targets only cantrips and unique non-tiered spells, making it highly specialized.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850210,   1, 0x020013AE) /* Setup - magical glyph appearance */
     , (850210,   3, 0x20000014) /* SoundTable */
     , (850210,   6, 0x04000BEF) /* PaletteBase */
     , (850210,   7, 0x10000146) /* ClothingBase */
     , (850210,   8, 0x060063D8) /* Icon - 63D8 Prismatic Glyph */
     , (850210,  22, 0x3400002B) /* PhysicsEffectTable */
     , (850210,  50, 0x06006C33) /* IconOverlay Primary - 6C33 Number Overlay */;


-- ===========================================
-- Tier 1 — Glyph of Extraction II (WCID 850211)
-- Reserved for Level 1 spell extraction.
-- Base price: 10,000 pyreals
-- ===========================================
INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850211, 'glyphextraction_2', 44, NOW()) /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850211,   1,        128)
     , (850211,   5,          1)
     , (850211,   8,          1)
     , (850211,   9,          0)
     , (850211,  11,        250)
     , (850211,  12,          1)
     , (850211,  13,          1)
     , (850211,  14,          1)
     , (850211,  15,      10000)
     , (850211,  16,     524296)
     , (850211,  19,      10000)
     , (850211,  33,          0)
     , (850211,  93,       1044)
     , (850211,  94,     560015)
     , (850211, 114,          0)
     , (850211,  18,       128) /* UiEffects - Magical */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850211,  22, True)
     , (850211,  69, True);

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850211,  39,    0.75);

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850211,   1, 'Glyph of Extraction')
     , (850211,  14, 'Use this on a spell-bearing item to attempt extracting Level 1 spells only.')
     , (850211,  15, 'A prismatic glyph carved with ancient extraction runes.')
     , (850211,  16, 'A prismatic glyph carved with ancient extraction runes. This variant is tuned to extract only Level 1 spells.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850211,   1, 0x020013AE)
     , (850211,   3, 0x20000014)
     , (850211,   6, 0x04000BEF)
     , (850211,   7, 0x10000146)
     , (850211,   8, 0x060063D8)
     , (850211,  22, 0x3400002B)
     , (850211,  50, 0x06006C34);


-- ===========================================
-- Tier 2 — Glyph of Extraction III (WCID 850212)
-- Reserved for Level 2 spell extraction.
-- Base price: 15,000 pyreals
-- ===========================================
INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850212, 'glyphextraction_3', 44, NOW()) /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850212,   1,        128)
     , (850212,   5,          1)
     , (850212,   8,          1)
     , (850212,   9,          0)
     , (850212,  11,        250)
     , (850212,  12,          1)
     , (850212,  13,          1)
     , (850212,  14,          1)
     , (850212,  15,      15000)
     , (850212,  16,     524296)
     , (850212,  19,      15000)
     , (850212,  33,          0)
     , (850212,  93,       1044)
     , (850212,  94,     560015)
     , (850212, 114,          0)
     , (850212,  18,       128) /* UiEffects - Magical */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850212,  22, True)
     , (850212,  69, True);

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850212,  39,    0.75);

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850212,   1, 'Glyph of Extraction')
     , (850212,  14, 'Use this on a spell-bearing item to attempt extracting Level 2 spells only.')
     , (850212,  15, 'A prismatic glyph carved with ancient extraction runes.')
     , (850212,  16, 'A prismatic glyph carved with ancient extraction runes. This variant is tuned to extract only Level 2 spells.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850212,   1, 0x020013AE)
     , (850212,   3, 0x20000014)
     , (850212,   6, 0x04000BEF)
     , (850212,   7, 0x10000146)
     , (850212,   8, 0x060063D8)
     , (850212,  22, 0x3400002B)
     , (850212,  50, 0x06006C35);


-- ===========================================
-- Tier 3 — Glyph of Extraction IV (WCID 850213)
-- Reserved for Level 3 spell extraction.
-- Base price: 20,000 pyreals
-- ===========================================
INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850213, 'glyphextraction_4', 44, NOW()) /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850213,   1,        128)
     , (850213,   5,          1)
     , (850213,   8,          1)
     , (850213,   9,          0)
     , (850213,  11,        250)
     , (850213,  12,          1)
     , (850213,  13,          1)
     , (850213,  14,          1)
     , (850213,  15,      20000)
     , (850213,  16,     524296)
     , (850213,  19,      20000)
     , (850213,  33,          0)
     , (850213,  93,       1044)
     , (850213,  94,     560015)
     , (850213, 114,          0)
     , (850213,  18,       128) /* UiEffects - Magical */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850213,  22, True)
     , (850213,  69, True);

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850213,  39,    0.75);

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850213,   1, 'Glyph of Extraction')
     , (850213,  14, 'Use this on a spell-bearing item to attempt extracting Level 3 spells only.')
     , (850213,  15, 'A prismatic glyph carved with ancient extraction runes.')
     , (850213,  16, 'A prismatic glyph carved with ancient extraction runes. This variant is tuned to extract only Level 3 spells.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850213,   1, 0x020013AE)
     , (850213,   3, 0x20000014)
     , (850213,   6, 0x04000BEF)
     , (850213,   7, 0x10000146)
     , (850213,   8, 0x060063D8)
     , (850213,  22, 0x3400002B)
     , (850213,  50, 0x06006C36);


-- ===========================================
-- Tier 4 — Glyph of Extraction V (WCID 850214)
-- Reserved for Level 4 spell extraction.
-- Base price: 25,000 pyreals
-- ===========================================
INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850214, 'glyphextraction_5', 44, NOW()) /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850214,   1,        128)
     , (850214,   5,          1)
     , (850214,   8,          1)
     , (850214,   9,          0)
     , (850214,  11,        250)
     , (850214,  12,          1)
     , (850214,  13,          1)
     , (850214,  14,          1)
     , (850214,  15,      25000)
     , (850214,  16,     524296)
     , (850214,  19,      25000)
     , (850214,  33,          0)
     , (850214,  93,       1044)
     , (850214,  94,     560015)
     , (850214, 114,          0)
     , (850214,  18,       128) /* UiEffects - Magical */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850214,  22, True)
     , (850214,  69, True);

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850214,  39,    0.75);

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850214,   1, 'Glyph of Extraction')
     , (850214,  14, 'Use this on a spell-bearing item to attempt extracting Level 4 spells only.')
     , (850214,  15, 'A prismatic glyph carved with ancient extraction runes.')
     , (850214,  16, 'A prismatic glyph carved with ancient extraction runes. This variant is tuned to extract only Level 4 spells.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850214,   1, 0x020013AE)
     , (850214,   3, 0x20000014)
     , (850214,   6, 0x04000BEF)
     , (850214,   7, 0x10000146)
     , (850214,   8, 0x060063D8)
     , (850214,  22, 0x3400002B)
     , (850214,  50, 0x06006C37);


-- ===========================================
-- Tier 5 — Glyph of Extraction VI (WCID 850215)
-- Reserved for Level 5 spell extraction.
-- Base price: 30,000 pyreals
-- ===========================================
INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850215, 'glyphextraction_6', 44, NOW()) /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850215,   1,        128)
     , (850215,   5,          1)
     , (850215,   8,          1)
     , (850215,   9,          0)
     , (850215,  11,        250)
     , (850215,  12,          1)
     , (850215,  13,          1)
     , (850215,  14,          1)
     , (850215,  15,      30000)
     , (850215,  16,     524296)
     , (850215,  19,      30000)
     , (850215,  33,          0)
     , (850215,  93,       1044)
     , (850215,  94,     560015)
     , (850215, 114,          0)
     , (850215,  18,       128) /* UiEffects - Magical */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850215,  22, True)
     , (850215,  69, True);

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850215,  39,    0.75);

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850215,   1, 'Glyph of Extraction')
     , (850215,  14, 'Use this on a spell-bearing item to attempt extracting Level 5 spells only.')
     , (850215,  15, 'A prismatic glyph carved with ancient extraction runes.')
     , (850215,  16, 'A prismatic glyph carved with ancient extraction runes. This variant is tuned to extract only Level 5 spells.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850215,   1, 0x020013AE)
     , (850215,   3, 0x20000014)
     , (850215,   6, 0x04000BEF)
     , (850215,   7, 0x10000146)
     , (850215,   8, 0x060063D8)
     , (850215,  22, 0x3400002B)
     , (850215,  50, 0x06006C38);


-- ===========================================
-- Tier 6 — Glyph of Extraction VII (WCID 850216)
-- Reserved for Level 6 spell extraction.
-- Base price: 35,000 pyreals
-- ===========================================
INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850216, 'glyphextraction_7', 44, NOW()) /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850216,   1,        128)
     , (850216,   5,          1)
     , (850216,   8,          1)
     , (850216,   9,          0)
     , (850216,  11,        250)
     , (850216,  12,          1)
     , (850216,  13,          1)
     , (850216,  14,          1)
     , (850216,  15,      35000)
     , (850216,  16,     524296)
     , (850216,  19,      35000)
     , (850216,  33,          0)
     , (850216,  93,       1044)
     , (850216,  94,     560015)
     , (850216, 114,          0)
     , (850216,  18,       128) /* UiEffects - Magical */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850216,  22, True)
     , (850216,  69, True);

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850216,  39,    0.75);

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850216,   1, 'Glyph of Extraction')
     , (850216,  14, 'Use this on a spell-bearing item to attempt extracting Level 6 spells only.')
     , (850216,  15, 'A prismatic glyph carved with ancient extraction runes.')
     , (850216,  16, 'A prismatic glyph carved with ancient extraction runes. This variant is tuned to extract only Level 6 spells.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850216,   1, 0x020013AE)
     , (850216,   3, 0x20000014)
     , (850216,   6, 0x04000BEF)
     , (850216,   7, 0x10000146)
     , (850216,   8, 0x060063D8)
     , (850216,  22, 0x3400002B)
     , (850216,  50, 0x06006C39);


-- ===========================================
-- Tier 7 — Glyph of Extraction VIII (WCID 850217)
-- Reserved for Level 7 spell extraction.
-- Base price: 40,000 pyreals
-- ===========================================
INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850217, 'glyphextraction_8', 44, NOW()) /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850217,   1,        128)
     , (850217,   5,          1)
     , (850217,   8,          1)
     , (850217,   9,          0)
     , (850217,  11,        250)
     , (850217,  12,          1)
     , (850217,  13,          1)
     , (850217,  14,          1)
     , (850217,  15,      40000)
     , (850217,  16,     524296)
     , (850217,  19,      40000)
     , (850217,  33,          0)
     , (850217,  93,       1044)
     , (850217,  94,     560015)
     , (850217, 114,          0)
     , (850217,  18,       128) /* UiEffects - Magical */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850217,  22, True)
     , (850217,  69, True);

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850217,  39,    0.75);

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850217,   1, 'Glyph of Extraction')
     , (850217,  14, 'Use this on a spell-bearing item to attempt extracting Level 7 spells only.')
     , (850217,  15, 'A prismatic glyph carved with ancient extraction runes.')
     , (850217,  16, 'A prismatic glyph carved with ancient extraction runes. This variant is tuned to extract only Level 7 spells.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850217,   1, 0x020013AE)
     , (850217,   3, 0x20000014)
     , (850217,   6, 0x04000BEF)
     , (850217,   7, 0x10000146)
     , (850217,   8, 0x060063D8)
     , (850217,  22, 0x3400002B)
     , (850217,  50, 0x06006C3A);


-- ===========================================
-- Tier 8 — Glyph of Extraction IX (WCID 850218)
-- Reserved for Level 8 spell extraction.
-- Base price: 45,000 pyreals
-- ===========================================
INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850218, 'glyphextraction_9', 44, NOW()) /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850218,   1,        128)
     , (850218,   5,          1)
     , (850218,   8,          1)
     , (850218,   9,          0)
     , (850218,  11,        250)
     , (850218,  12,          1)
     , (850218,  13,          1)
     , (850218,  14,          1)
     , (850218,  15,      45000)
     , (850218,  16,     524296)
     , (850218,  19,      45000)
     , (850218,  33,          0)
     , (850218,  93,       1044)
     , (850218,  94,     560015)
     , (850218, 114,          0)
     , (850218,  18,       128) /* UiEffects - Magical */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850218,  22, True)
     , (850218,  69, True);

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850218,  39,    0.75);

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850218,   1, 'Glyph of Extraction')
     , (850218,  14, 'Use this on a spell-bearing item to attempt extracting Level 8 spells only.')
     , (850218,  15, 'A prismatic glyph carved with ancient extraction runes.')
     , (850218,  16, 'A prismatic glyph carved with ancient extraction runes. This variant is tuned to extract only Level 8 spells.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850218,   1, 0x020013AE)
     , (850218,   3, 0x20000014)
     , (850218,   6, 0x04000BEF)
     , (850218,   7, 0x10000146)
     , (850218,   8, 0x060063D8)
     , (850218,  22, 0x3400002B)
     , (850218,  50, 0x06006C3B);


-- ===========================================
-- Tier 9 — Glyph of Extraction X (WCID 850219)
-- Reserved for Level 9 spell extraction.
-- Base price: 50,000 pyreals
-- ===========================================
INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850219, 'glyphextraction_10', 44, NOW()) /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850219,   1,        128)
     , (850219,   5,          1)
     , (850219,   8,          1)
     , (850219,   9,          0)
     , (850219,  11,        250)
     , (850219,  12,          1)
     , (850219,  13,          1)
     , (850219,  14,          1)
     , (850219,  15,      50000)
     , (850219,  16,     524296)
     , (850219,  19,      50000)
     , (850219,  33,          0)
     , (850219,  93,       1044)
     , (850219,  94,     560015)
     , (850219, 114,          0)
     , (850219,  18,       128) /* UiEffects - Magical */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850219,  22, True)
     , (850219,  69, True);

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850219,  39,    0.75);

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850219,   1, 'Glyph of Extraction')
     , (850219,  14, 'Use this on a spell-bearing item to attempt extracting Level 9 spells.')
     , (850219,  15, 'A prismatic glyph carved with ancient extraction runes.')
     , (850219,  16, 'A prismatic glyph carved with ancient extraction runes. This variant is tuned for Level 9 spells.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850219,   1, 0x020013AE)
     , (850219,   3, 0x20000014)
     , (850219,   6, 0x04000BEF)
     , (850219,   7, 0x10000146)
     , (850219,   8, 0x060063D8)
     , (850219,  22, 0x3400002B)
     , (850219,  50, 0x06006C3C);
=======
-- Glyph of Extraction — Tiered Craft Tools (WCIDs 850210–850219)
-- Only Tier 0 (850210) has active extraction logic wired in C# for now.
-- Tiers 1–9 are reserved placeholders that behave as generic CraftTools until their
-- extraction logic is implemented.
--
-- Base Icon: 63D8 Prismatic Glyph (DID 0x060063D8 = 100688856)
-- IconOverlay: 6C33 Number Overlay (DID 0x06006C33 = 100690995) — applied to all tiers.
-- When charged, C# sets UiEffects.Acid (green outline) on the live object.

DELETE FROM `weenie_properties_create_list`  WHERE `object_Id` BETWEEN 850210 AND 850219;
DELETE FROM `weenie_properties_emote_action` WHERE `emote_Id` IN (
    SELECT `id` FROM `weenie_properties_emote` WHERE `object_Id` BETWEEN 850210 AND 850219
);
DELETE FROM `weenie_properties_emote`        WHERE `object_Id` BETWEEN 850210 AND 850219;
DELETE FROM `weenie_properties_skill`        WHERE `object_Id` BETWEEN 850210 AND 850219;
DELETE FROM `weenie_properties_body_part`    WHERE `object_Id` BETWEEN 850210 AND 850219;
DELETE FROM `weenie_properties_attribute_2nd` WHERE `object_Id` BETWEEN 850210 AND 850219;
DELETE FROM `weenie_properties_attribute`    WHERE `object_Id` BETWEEN 850210 AND 850219;
DELETE FROM `weenie_properties_d_i_d`        WHERE `object_Id` BETWEEN 850210 AND 850219;
DELETE FROM `weenie_properties_string`       WHERE `object_Id` BETWEEN 850210 AND 850219;
DELETE FROM `weenie_properties_bool`         WHERE `object_Id` BETWEEN 850210 AND 850219;
DELETE FROM `weenie_properties_float`        WHERE `object_Id` BETWEEN 850210 AND 850219;
DELETE FROM `weenie_properties_int`          WHERE `object_Id` BETWEEN 850210 AND 850219;
DELETE FROM `weenie`                         WHERE `class_Id` BETWEEN 850210 AND 850219;

-- ===========================================
-- Tier 0 — Glyph of Extraction I (WCID 850210)
-- Extracts: Cantrips and unique (non-tiered) spells.
-- Base price: 5,000 pyreals
-- ===========================================
INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850210, 'glyphextraction_1', 44, NOW()) /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850210,   1,        128) /* ItemType - Misc */
     , (850210,   5,          1) /* EncumbranceVal */
     , (850210,   8,          1) /* Mass */
     , (850210,   9,          0) /* ValidLocations - None */
     , (850210,  11,        250) /* MaxStackSize */
     , (850210,  12,          1) /* StackSize */
     , (850210,  13,          1) /* StackUnitEncumbrance */
     , (850210,  14,          1) /* StackUnitMass */
     , (850210,  15,       5000) /* StackUnitValue */
     , (850210,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (850210,  19,       5000) /* Value */
     , (850210,  33,          0) /* Bonded - Normal */
     , (850210,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (850210,  94,     560015) /* TargetType - ItemEnchantableTarget */
     , (850210, 114,          0) /* Attuned - Normal */
     , (850210,  18,       128) /* UiEffects - Magical */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850210,  22, True ) /* Inscribable */
     , (850210,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850210,  39,    0.75) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850210,   1, 'Glyph of Extraction') /* Name */
     , (850210,  14, 'Use this on a spell-bearing item to attempt extracting cantrips and unique spells. On success, the glyph becomes charged and can then be used on equipment or gems to apply the extracted magic.') /* Use */
     , (850210,  15, 'A prismatic glyph carved with ancient extraction runes, humming with faint potential.') /* ShortDesc */
     , (850210,  16, 'A prismatic glyph carved with ancient extraction runes. Unlike a standard Spellsiphon, this glyph targets only cantrips and unique non-tiered spells, making it highly specialized.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850210,   1, 0x020013AE) /* Setup - magical glyph appearance */
     , (850210,   3, 0x20000014) /* SoundTable */
     , (850210,   6, 0x04000BEF) /* PaletteBase */
     , (850210,   7, 0x10000146) /* ClothingBase */
     , (850210,   8, 0x060063D8) /* Icon - 63D8 Prismatic Glyph */
     , (850210,  22, 0x3400002B) /* PhysicsEffectTable */
     , (850210,  50, 0x06006C33) /* IconOverlay Primary - 6C33 Number Overlay */;


-- ===========================================
-- Tier 1 — Glyph of Extraction II (WCID 850211)
-- Reserved for Level 1 spell extraction.
-- Base price: 10,000 pyreals
-- ===========================================
INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850211, 'glyphextraction_2', 44, NOW()) /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850211,   1,        128)
     , (850211,   5,          1)
     , (850211,   8,          1)
     , (850211,   9,          0)
     , (850211,  11,        250)
     , (850211,  12,          1)
     , (850211,  13,          1)
     , (850211,  14,          1)
     , (850211,  15,      10000)
     , (850211,  16,     524296)
     , (850211,  19,      10000)
     , (850211,  33,          0)
     , (850211,  93,       1044)
     , (850211,  94,     560015)
     , (850211, 114,          0)
     , (850211,  18,       128) /* UiEffects - Magical */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850211,  22, True)
     , (850211,  69, True);

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850211,  39,    0.75);

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850211,   1, 'Glyph of Extraction')
     , (850211,  14, 'Use this on a spell-bearing item to attempt extracting Level 1 spells only.')
     , (850211,  15, 'A prismatic glyph carved with ancient extraction runes.')
     , (850211,  16, 'A prismatic glyph carved with ancient extraction runes. This variant is tuned to extract only Level 1 spells.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850211,   1, 0x020013AE)
     , (850211,   3, 0x20000014)
     , (850211,   6, 0x04000BEF)
     , (850211,   7, 0x10000146)
     , (850211,   8, 0x060063D8)
     , (850211,  22, 0x3400002B)
     , (850211,  50, 0x06006C34);


-- ===========================================
-- Tier 2 — Glyph of Extraction III (WCID 850212)
-- Reserved for Level 2 spell extraction.
-- Base price: 15,000 pyreals
-- ===========================================
INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850212, 'glyphextraction_3', 44, NOW()) /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850212,   1,        128)
     , (850212,   5,          1)
     , (850212,   8,          1)
     , (850212,   9,          0)
     , (850212,  11,        250)
     , (850212,  12,          1)
     , (850212,  13,          1)
     , (850212,  14,          1)
     , (850212,  15,      15000)
     , (850212,  16,     524296)
     , (850212,  19,      15000)
     , (850212,  33,          0)
     , (850212,  93,       1044)
     , (850212,  94,     560015)
     , (850212, 114,          0)
     , (850212,  18,       128) /* UiEffects - Magical */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850212,  22, True)
     , (850212,  69, True);

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850212,  39,    0.75);

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850212,   1, 'Glyph of Extraction')
     , (850212,  14, 'Use this on a spell-bearing item to attempt extracting Level 2 spells only.')
     , (850212,  15, 'A prismatic glyph carved with ancient extraction runes.')
     , (850212,  16, 'A prismatic glyph carved with ancient extraction runes. This variant is tuned to extract only Level 2 spells.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850212,   1, 0x020013AE)
     , (850212,   3, 0x20000014)
     , (850212,   6, 0x04000BEF)
     , (850212,   7, 0x10000146)
     , (850212,   8, 0x060063D8)
     , (850212,  22, 0x3400002B)
     , (850212,  50, 0x06006C35);


-- ===========================================
-- Tier 3 — Glyph of Extraction IV (WCID 850213)
-- Reserved for Level 3 spell extraction.
-- Base price: 20,000 pyreals
-- ===========================================
INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850213, 'glyphextraction_4', 44, NOW()) /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850213,   1,        128)
     , (850213,   5,          1)
     , (850213,   8,          1)
     , (850213,   9,          0)
     , (850213,  11,        250)
     , (850213,  12,          1)
     , (850213,  13,          1)
     , (850213,  14,          1)
     , (850213,  15,      20000)
     , (850213,  16,     524296)
     , (850213,  19,      20000)
     , (850213,  33,          0)
     , (850213,  93,       1044)
     , (850213,  94,     560015)
     , (850213, 114,          0)
     , (850213,  18,       128) /* UiEffects - Magical */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850213,  22, True)
     , (850213,  69, True);

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850213,  39,    0.75);

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850213,   1, 'Glyph of Extraction')
     , (850213,  14, 'Use this on a spell-bearing item to attempt extracting Level 3 spells only.')
     , (850213,  15, 'A prismatic glyph carved with ancient extraction runes.')
     , (850213,  16, 'A prismatic glyph carved with ancient extraction runes. This variant is tuned to extract only Level 3 spells.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850213,   1, 0x020013AE)
     , (850213,   3, 0x20000014)
     , (850213,   6, 0x04000BEF)
     , (850213,   7, 0x10000146)
     , (850213,   8, 0x060063D8)
     , (850213,  22, 0x3400002B)
     , (850213,  50, 0x06006C36);


-- ===========================================
-- Tier 4 — Glyph of Extraction V (WCID 850214)
-- Reserved for Level 4 spell extraction.
-- Base price: 25,000 pyreals
-- ===========================================
INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850214, 'glyphextraction_5', 44, NOW()) /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850214,   1,        128)
     , (850214,   5,          1)
     , (850214,   8,          1)
     , (850214,   9,          0)
     , (850214,  11,        250)
     , (850214,  12,          1)
     , (850214,  13,          1)
     , (850214,  14,          1)
     , (850214,  15,      25000)
     , (850214,  16,     524296)
     , (850214,  19,      25000)
     , (850214,  33,          0)
     , (850214,  93,       1044)
     , (850214,  94,     560015)
     , (850214, 114,          0)
     , (850214,  18,       128) /* UiEffects - Magical */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850214,  22, True)
     , (850214,  69, True);

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850214,  39,    0.75);

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850214,   1, 'Glyph of Extraction')
     , (850214,  14, 'Use this on a spell-bearing item to attempt extracting Level 4 spells only.')
     , (850214,  15, 'A prismatic glyph carved with ancient extraction runes.')
     , (850214,  16, 'A prismatic glyph carved with ancient extraction runes. This variant is tuned to extract only Level 4 spells.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850214,   1, 0x020013AE)
     , (850214,   3, 0x20000014)
     , (850214,   6, 0x04000BEF)
     , (850214,   7, 0x10000146)
     , (850214,   8, 0x060063D8)
     , (850214,  22, 0x3400002B)
     , (850214,  50, 0x06006C37);


-- ===========================================
-- Tier 5 — Glyph of Extraction VI (WCID 850215)
-- Reserved for Level 5 spell extraction.
-- Base price: 30,000 pyreals
-- ===========================================
INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850215, 'glyphextraction_6', 44, NOW()) /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850215,   1,        128)
     , (850215,   5,          1)
     , (850215,   8,          1)
     , (850215,   9,          0)
     , (850215,  11,        250)
     , (850215,  12,          1)
     , (850215,  13,          1)
     , (850215,  14,          1)
     , (850215,  15,      30000)
     , (850215,  16,     524296)
     , (850215,  19,      30000)
     , (850215,  33,          0)
     , (850215,  93,       1044)
     , (850215,  94,     560015)
     , (850215, 114,          0)
     , (850215,  18,       128) /* UiEffects - Magical */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850215,  22, True)
     , (850215,  69, True);

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850215,  39,    0.75);

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850215,   1, 'Glyph of Extraction')
     , (850215,  14, 'Use this on a spell-bearing item to attempt extracting Level 5 spells only.')
     , (850215,  15, 'A prismatic glyph carved with ancient extraction runes.')
     , (850215,  16, 'A prismatic glyph carved with ancient extraction runes. This variant is tuned to extract only Level 5 spells.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850215,   1, 0x020013AE)
     , (850215,   3, 0x20000014)
     , (850215,   6, 0x04000BEF)
     , (850215,   7, 0x10000146)
     , (850215,   8, 0x060063D8)
     , (850215,  22, 0x3400002B)
     , (850215,  50, 0x06006C38);


-- ===========================================
-- Tier 6 — Glyph of Extraction VII (WCID 850216)
-- Reserved for Level 6 spell extraction.
-- Base price: 35,000 pyreals
-- ===========================================
INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850216, 'glyphextraction_7', 44, NOW()) /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850216,   1,        128)
     , (850216,   5,          1)
     , (850216,   8,          1)
     , (850216,   9,          0)
     , (850216,  11,        250)
     , (850216,  12,          1)
     , (850216,  13,          1)
     , (850216,  14,          1)
     , (850216,  15,      35000)
     , (850216,  16,     524296)
     , (850216,  19,      35000)
     , (850216,  33,          0)
     , (850216,  93,       1044)
     , (850216,  94,     560015)
     , (850216, 114,          0)
     , (850216,  18,       128) /* UiEffects - Magical */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850216,  22, True)
     , (850216,  69, True);

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850216,  39,    0.75);

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850216,   1, 'Glyph of Extraction')
     , (850216,  14, 'Use this on a spell-bearing item to attempt extracting Level 6 spells only.')
     , (850216,  15, 'A prismatic glyph carved with ancient extraction runes.')
     , (850216,  16, 'A prismatic glyph carved with ancient extraction runes. This variant is tuned to extract only Level 6 spells.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850216,   1, 0x020013AE)
     , (850216,   3, 0x20000014)
     , (850216,   6, 0x04000BEF)
     , (850216,   7, 0x10000146)
     , (850216,   8, 0x060063D8)
     , (850216,  22, 0x3400002B)
     , (850216,  50, 0x06006C39);


-- ===========================================
-- Tier 7 — Glyph of Extraction VIII (WCID 850217)
-- Reserved for Level 7 spell extraction.
-- Base price: 40,000 pyreals
-- ===========================================
INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850217, 'glyphextraction_8', 44, NOW()) /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850217,   1,        128)
     , (850217,   5,          1)
     , (850217,   8,          1)
     , (850217,   9,          0)
     , (850217,  11,        250)
     , (850217,  12,          1)
     , (850217,  13,          1)
     , (850217,  14,          1)
     , (850217,  15,      40000)
     , (850217,  16,     524296)
     , (850217,  19,      40000)
     , (850217,  33,          0)
     , (850217,  93,       1044)
     , (850217,  94,     560015)
     , (850217, 114,          0)
     , (850217,  18,       128) /* UiEffects - Magical */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850217,  22, True)
     , (850217,  69, True);

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850217,  39,    0.75);

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850217,   1, 'Glyph of Extraction')
     , (850217,  14, 'Use this on a spell-bearing item to attempt extracting Level 7 spells only.')
     , (850217,  15, 'A prismatic glyph carved with ancient extraction runes.')
     , (850217,  16, 'A prismatic glyph carved with ancient extraction runes. This variant is tuned to extract only Level 7 spells.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850217,   1, 0x020013AE)
     , (850217,   3, 0x20000014)
     , (850217,   6, 0x04000BEF)
     , (850217,   7, 0x10000146)
     , (850217,   8, 0x060063D8)
     , (850217,  22, 0x3400002B)
     , (850217,  50, 0x06006C3A);


-- ===========================================
-- Tier 8 — Glyph of Extraction IX (WCID 850218)
-- Reserved for Level 8 spell extraction.
-- Base price: 45,000 pyreals
-- ===========================================
INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850218, 'glyphextraction_9', 44, NOW()) /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850218,   1,        128)
     , (850218,   5,          1)
     , (850218,   8,          1)
     , (850218,   9,          0)
     , (850218,  11,        250)
     , (850218,  12,          1)
     , (850218,  13,          1)
     , (850218,  14,          1)
     , (850218,  15,      45000)
     , (850218,  16,     524296)
     , (850218,  19,      45000)
     , (850218,  33,          0)
     , (850218,  93,       1044)
     , (850218,  94,     560015)
     , (850218, 114,          0)
     , (850218,  18,       128) /* UiEffects - Magical */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850218,  22, True)
     , (850218,  69, True);

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850218,  39,    0.75);

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850218,   1, 'Glyph of Extraction')
     , (850218,  14, 'Use this on a spell-bearing item to attempt extracting Level 8 spells only.')
     , (850218,  15, 'A prismatic glyph carved with ancient extraction runes.')
     , (850218,  16, 'A prismatic glyph carved with ancient extraction runes. This variant is tuned to extract only Level 8 spells.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850218,   1, 0x020013AE)
     , (850218,   3, 0x20000014)
     , (850218,   6, 0x04000BEF)
     , (850218,   7, 0x10000146)
     , (850218,   8, 0x060063D8)
     , (850218,  22, 0x3400002B)
     , (850218,  50, 0x06006C3B);


-- ===========================================
-- Tier 9 — Glyph of Extraction X (WCID 850219)
-- Reserved for Level 9 spell extraction.
-- Base price: 50,000 pyreals
-- ===========================================
INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850219, 'glyphextraction_10', 44, NOW()) /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850219,   1,        128)
     , (850219,   5,          1)
     , (850219,   8,          1)
     , (850219,   9,          0)
     , (850219,  11,        250)
     , (850219,  12,          1)
     , (850219,  13,          1)
     , (850219,  14,          1)
     , (850219,  15,      50000)
     , (850219,  16,     524296)
     , (850219,  19,      50000)
     , (850219,  33,          0)
     , (850219,  93,       1044)
     , (850219,  94,     560015)
     , (850219, 114,          0)
     , (850219,  18,       128) /* UiEffects - Magical */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850219,  22, True)
     , (850219,  69, True);

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850219,  39,    0.75);

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850219,   1, 'Glyph of Extraction')
     , (850219,  14, 'Use this on a spell-bearing item to attempt extracting Level 9 spells.')
     , (850219,  15, 'A prismatic glyph carved with ancient extraction runes.')
     , (850219,  16, 'A prismatic glyph carved with ancient extraction runes. This variant is tuned for Level 9 spells.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850219,   1, 0x020013AE)
     , (850219,   3, 0x20000014)
     , (850219,   6, 0x04000BEF)
     , (850219,   7, 0x10000146)
     , (850219,   8, 0x060063D8)
     , (850219,  22, 0x3400002B)
     , (850219,  50, 0x06006C3C);
>>>>>>> 1dfeadeb (feat(SpellSiphon): add Glyph of Extraction tiered items (0-9))
