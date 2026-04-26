DELETE FROM `weenie` WHERE `class_Id` = 801449;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801449, 'Master of the Great Sword2', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801449,   1,       256) /* ItemType - Gem */
     , (801449,   3,         39) /* PaletteTemplate - Black */
     , (801449,   5,          5) /* EncumbranceVal */
     , (801449,   8,          5) /* Mass */
     , (801449,  11,          1) /* MaxStackSize */
     , (801449,  12,          1) /* StackSize */
     , (801449,  13,          5) /* StackUnitEncumbrance */
     , (801449,  14,          5) /* StackUnitMass */
     , (801449,  15,        250) /* StackUnitValue */
     , (801449,  16,          1) /* ItemUseable - Contained */
     , (801449,  18,          0) /* UiEffects - Lightning */
     , (801449,  19,        250) /* Value */
     , (801449,  33,          1) /* Bonded - Bonded */
     , (801449,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801449,  94,         16) /* TargetType - Creature */
     , (801449, 106,        325) /* ItemSpellcraft */
     , (801449, 107,      10000) /* ItemCurMana */
     , (801449, 108,      10000) /* ItemMaxMana */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801449,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801449,   1, 'Master of the Great Sword NP (LR)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801449,   1,   33554809) /* Setup */
     , (801449,   3,  536870932) /* SoundTable */
     , (801449,   6,   67111919) /* PaletteBase */
     , (801449,   8,  100688622) /* Icon */
     , (801449,  22,  872415275) /* PhysicsEffectTable */;
