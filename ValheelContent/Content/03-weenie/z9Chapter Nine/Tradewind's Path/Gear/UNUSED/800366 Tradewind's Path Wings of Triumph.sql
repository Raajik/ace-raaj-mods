DELETE FROM `weenie` WHERE `class_Id` = 800366;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800366, 'Tradewind''s Path Wings of Triumph', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800366,   1,          4) /* ItemType - Clothing */
     , (800366,   4,     131072) /* ClothingPriority - 131072 */
     , (800366,   5,         10) /* EncumbranceVal */
     , (800366,   9,  134217728) /* ValidLocations - Cloak */
     , (800366,  16,          1) /* ItemUseable - No */
     , (800366,  18,          4096) /* UiEffects - Magical */
     , (800366,  19,      25) /* Value */
     , (800366,  33,          1) /* Bonded - Bonded */
     , (800366,  36,       9999) /* ResistMagic */
     , (800366,  65,        101) /* Placement - Resting */
     , (800366,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800366, 114,          1) /* Attuned - Attuned */
     , (800366, 158,          7) /* WieldRequirements - Level */
     , (800366, 159,          1) /* WieldSkillType - Axe */
     , (800366, 160,        300) /* WieldDifficulty */
     , (800366, 265,         50) /* EquipmentSetId - CloakVoidMagic */
     , (800366, 319,          4) /* ItemMaxLevel */
     , (800366, 320,          2) /* ItemXpStyle - ScalesWithLevel */
     , (800366, 352,          1) /* CloakWeaveProc */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (800366,   4,          0) /* ItemTotalXp */
     , (800366,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800366,   1, False) /* Stuck */
     , (800366,  11, True ) /* IgnoreCollisions */
     , (800366,  13, True ) /* Ethereal */
     , (800366,  14, True ) /* GravityStatus */
     , (800366,  19, True ) /* Attackable */
     , (800366,  22, True ) /* Inscribable */
     , (800366,  99, True ) /* Ivoryable */;
	 	 
INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800366,   1, 'Tradewind''s Path Wings of Triumph') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800366,   1,   33561386) /* Setup */
     , (800366,   3,  536870932) /* SoundTable */
     , (800366,   7,  268437607) /* ClothingBase */
     , (800366,   8,  100693238) /* Icon */
     , (800366,  22,  872415275) /* PhysicsEffectTable */
     , (800366,  50,  100690999) /* IconOverlay */
     , (800366,  55,       4308) /* ProcSpell - Harm Other VIII */;
