DELETE FROM `weenie` WHERE `class_Id` = 802232;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802232, 'Heavy Handed NP', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802232,   1,       256) /* ItemType - Gem */
     , (802232,   3,         39) /* PaletteTemplate - Black */
     , (802232,   5,          5) /* EncumbranceVal */
     , (802232,   8,          5) /* Mass */
     , (802232,  11,          1) /* MaxStackSize */
     , (802232,  12,          1) /* StackSize */
     , (802232,  13,          5) /* StackUnitEncumbrance */
     , (802232,  14,          5) /* StackUnitMass */
     , (802232,  15,        250) /* StackUnitValue */
     , (802232,  16,          1) /* ItemUseable - Contained */
     , (802232,  18,          0) /* UiEffects - Lightning */
     , (802232,  19,        250) /* Value */
     , (802232,  33,          1) /* Bonded - Bonded */
     , (802232,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802232,  94,         16) /* TargetType - Creature */
     , (802232, 106,        325) /* ItemSpellcraft */
     , (802232, 107,      10000) /* ItemCurMana */
     , (802232, 108,      10000) /* ItemMaxMana */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802232,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802232,   1, 'Heavy Handed NP (LR)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802232,   1,   33554809) /* Setup */
     , (802232,   3,  536870932) /* SoundTable */
     , (802232,   6,   67111919) /* PaletteBase */
     , (802232,   8,  100688622) /* Icon */
     , (802232,  22,  872415275) /* PhysicsEffectTable */;
