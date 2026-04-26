DELETE FROM `weenie` WHERE `class_Id` = 801448;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801448, 'Dodging Expert2', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801448,   1,       256) /* ItemType - Gem */
     , (801448,   3,         39) /* PaletteTemplate - Black */
     , (801448,   5,          5) /* EncumbranceVal */
     , (801448,   8,          5) /* Mass */
     , (801448,  11,          1) /* MaxStackSize */
     , (801448,  12,          1) /* StackSize */
     , (801448,  13,          5) /* StackUnitEncumbrance */
     , (801448,  14,          5) /* StackUnitMass */
     , (801448,  15,        250) /* StackUnitValue */
     , (801448,  16,          1) /* ItemUseable - Contained */
     , (801448,  18,          0) /* UiEffects - Lightning */
     , (801448,  19,        250) /* Value */
     , (801448,  33,          1) /* Bonded - Bonded */
     , (801448,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801448,  94,         16) /* TargetType - Creature */
     , (801448, 106,        325) /* ItemSpellcraft */
     , (801448, 107,      10000) /* ItemCurMana */
     , (801448, 108,      10000) /* ItemMaxMana */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801448,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801448,   1, 'Dodging Expert NP (LR)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801448,   1,   33554809) /* Setup */
     , (801448,   3,  536870932) /* SoundTable */
     , (801448,   6,   67111919) /* PaletteBase */
     , (801448,   8,  100688622) /* Icon */
     , (801448,  22,  872415275) /* PhysicsEffectTable */;
