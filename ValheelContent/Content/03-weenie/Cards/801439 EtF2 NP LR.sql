DELETE FROM `weenie` WHERE `class_Id` = 801439;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801439, 'Eternal Focus2', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801439,   1,       256) /* ItemType - Gem */
     , (801439,   3,         39) /* PaletteTemplate - Black */
     , (801439,   5,          5) /* EncumbranceVal */
     , (801439,   8,          5) /* Mass */
     , (801439,  11,          1) /* MaxStackSize */
     , (801439,  12,          1) /* StackSize */
     , (801439,  13,          5) /* StackUnitEncumbrance */
     , (801439,  14,          5) /* StackUnitMass */
     , (801439,  15,        250) /* StackUnitValue */
     , (801439,  16,          1) /* ItemUseable - Contained */
     , (801439,  18,          0) /* UiEffects - Lightning */
     , (801439,  19,        250) /* Value */
     , (801439,  33,          1) /* Bonded - Bonded */
     , (801439,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801439,  94,         16) /* TargetType - Creature */
     , (801439, 106,        325) /* ItemSpellcraft */
     , (801439, 107,      10000) /* ItemCurMana */
     , (801439, 108,      10000) /* ItemMaxMana */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801439,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801439,   1, 'Eternal Focus NP (LR)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801439,   1,   33554809) /* Setup */
     , (801439,   3,  536870932) /* SoundTable */
     , (801439,   6,   67111919) /* PaletteBase */
     , (801439,   8,  100688622) /* Icon */
     , (801439,  22,  872415275) /* PhysicsEffectTable */;
