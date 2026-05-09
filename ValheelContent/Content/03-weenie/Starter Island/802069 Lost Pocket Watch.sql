DELETE FROM `weenie` WHERE `class_Id` = 802069;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802069, 'lostpocketwatch', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802069,   1,        128) /* ItemType - Jewelry */
     , (802069,   3,         21) /* PaletteTemplate - Gold */
     , (802069,   5,        100) /* EncumbranceVal */
     , (802069,   8,         60) /* Mass */
     , (802069,  16,          1) /* ItemUseable - No */
     , (802069,  19,        100) /* Value */
     , (802069,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802069, 169,   33687297) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802069,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802069,  39,    0.67) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802069,   1, 'Lost Pocket Watch') /* Name */
     , (802069,  33, 'LostPocketWatch') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802069,   1,   33554680) /* Setup */
     , (802069,   3,  536870932) /* SoundTable */
     , (802069,   6,   67111919) /* PaletteBase */
     , (802069,   7,  268437373) /* ClothingBase */
     , (802069,   8,  100690592) /* Icon */
     , (802069,  36,  234881046) /* MutateFilter */;
