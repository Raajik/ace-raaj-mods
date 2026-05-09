DELETE FROM `weenie` WHERE `class_Id` = 800426;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800426, 'Elorin''s Shield', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800426,   1,          2) /* ItemType - Armor */
     , (800426,   5,        300) /* EncumbranceVal */
     , (800426,   9,    2097152) /* ValidLocations - Shield */
     , (800426,  16,          1) /* ItemUseable - No */
     , (800426,  28,         50) /* ArmorLevel */
     , (800426,  33,          1) /* Bonded - Destroy */
     , (800426,  51,          4) /* CombatUse - Shield */
     , (800426,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800426, 114,          2) /* Attuned - Attuned */
     , (800426, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800426,  23, True ) /* DestroyOnSell */
     , (800426,  69, False) /* IsSellable */
     , (800426,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800426,  13,     0.1) /* ArmorModVsSlash */
     , (800426,  14,     0.1) /* ArmorModVsPierce */
     , (800426,  15,     0.1) /* ArmorModVsBludgeon */
     , (800426,  16,     0.1) /* ArmorModVsCold */
     , (800426,  17,     0.1) /* ArmorModVsFire */
     , (800426,  18,     0.1) /* ArmorModVsAcid */
     , (800426,  19,     0.1) /* ArmorModVsElectric */
     , (800426,  39,     2.3) /* DefaultScale */
     , (800426, 159,     0.1) /* AbsorbMagicDamage */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800426,   1, 'Elorin''s Shield') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800426,   1,   33560665) /* Setup */
     , (800426,   3,  536870932) /* SoundTable */
     , (800426,   8,  100690261) /* Icon */
     , (800426,  22,  872415275) /* PhysicsEffectTable */;
