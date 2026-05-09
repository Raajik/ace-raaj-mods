DELETE FROM `weenie` WHERE `class_Id` = 802265;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802265, 'Destructive Wizard NP', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802265,   1,       256) /* ItemType - Gem */
     , (802265,   3,         39) /* PaletteTemplate - Black */
     , (802265,   5,          5) /* EncumbranceVal */
     , (802265,   8,          5) /* Mass */
     , (802265,  11,          1) /* MaxStackSize */
     , (802265,  12,          1) /* StackSize */
     , (802265,  13,          5) /* StackUnitEncumbrance */
     , (802265,  14,          5) /* StackUnitMass */
     , (802265,  15,        250) /* StackUnitValue */
     , (802265,  16,          1) /* ItemUseable - Contained */
     , (802265,  18,          0) /* UiEffects - Lightning */
     , (802265,  19,        250) /* Value */
     , (802265,  33,          1) /* Bonded - Bonded */
     , (802265,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802265,  94,         16) /* TargetType - Creature */
     , (802265, 106,        325) /* ItemSpellcraft */
     , (802265, 107,      10000) /* ItemCurMana */
     , (802265, 108,      10000) /* ItemMaxMana */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802265,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802265,   1, 'Destructive Wizard NP (LR)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802265,   1,   33554809) /* Setup */
     , (802265,   3,  536870932) /* SoundTable */
     , (802265,   6,   67111919) /* PaletteBase */
     , (802265,   8,  100688622) /* Icon */
     , (802265,  22,  872415275) /* PhysicsEffectTable */;
