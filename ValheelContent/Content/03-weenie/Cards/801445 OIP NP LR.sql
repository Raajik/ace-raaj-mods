DELETE FROM `weenie` WHERE `class_Id` = 801445;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801445, 'One Inch Punch2', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801445,   1,       256) /* ItemType - Gem */
     , (801445,   3,         39) /* PaletteTemplate - Black */
     , (801445,   5,          5) /* EncumbranceVal */
     , (801445,   8,          5) /* Mass */
     , (801445,  11,          1) /* MaxStackSize */
     , (801445,  12,          1) /* StackSize */
     , (801445,  13,          5) /* StackUnitEncumbrance */
     , (801445,  14,          5) /* StackUnitMass */
     , (801445,  15,        250) /* StackUnitValue */
     , (801445,  16,          1) /* ItemUseable - Contained */
     , (801445,  18,          0) /* UiEffects - Lightning */
     , (801445,  19,        250) /* Value */
     , (801445,  33,          1) /* Bonded - Bonded */
     , (801445,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801445,  94,         16) /* TargetType - Creature */
     , (801445, 106,        325) /* ItemSpellcraft */
     , (801445, 107,      10000) /* ItemCurMana */
     , (801445, 108,      10000) /* ItemMaxMana */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801445,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801445,   1, 'One Inch Punch NP (LR)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801445,   1,   33554809) /* Setup */
     , (801445,   3,  536870932) /* SoundTable */
     , (801445,   6,   67111919) /* PaletteBase */
     , (801445,   8,  100688622) /* Icon */
     , (801445,  22,  872415275) /* PhysicsEffectTable */;
