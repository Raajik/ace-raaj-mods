DELETE FROM `weenie` WHERE `class_Id` = 801446;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801446, 'Halo Shield of Fortitude2', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801446,   1,       256) /* ItemType - Gem */
     , (801446,   3,         39) /* PaletteTemplate - Black */
     , (801446,   5,          5) /* EncumbranceVal */
     , (801446,   8,          5) /* Mass */
     , (801446,  11,          1) /* MaxStackSize */
     , (801446,  12,          1) /* StackSize */
     , (801446,  13,          5) /* StackUnitEncumbrance */
     , (801446,  14,          5) /* StackUnitMass */
     , (801446,  15,        250) /* StackUnitValue */
     , (801446,  16,          1) /* ItemUseable - Contained */
     , (801446,  18,          0) /* UiEffects - Lightning */
     , (801446,  19,        250) /* Value */
     , (801446,  33,          1) /* Bonded - Bonded */
     , (801446,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801446,  94,         16) /* TargetType - Creature */
     , (801446, 106,        325) /* ItemSpellcraft */
     , (801446, 107,      10000) /* ItemCurMana */
     , (801446, 108,      10000) /* ItemMaxMana */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801446,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801446,   1, 'Halo-Shield of Fortitude NP (LR)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801446,   1,   33554809) /* Setup */
     , (801446,   3,  536870932) /* SoundTable */
     , (801446,   6,   67111919) /* PaletteBase */
     , (801446,   8,  100688622) /* Icon */
     , (801446,  22,  872415275) /* PhysicsEffectTable */;
