DELETE FROM `weenie` WHERE `class_Id` = 801482;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801482, 'PunkinsHead', 21, '2021-11-01 00:00:00') /* Container */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801482,   1,        512) /* ItemType - Container */
     , (801482,   5,          1) /* EncumbranceVal */
     , (801482,   6,        102) /* ItemsCapacity */
     , (801482,   7,          0) /* ContainersCapacity */
     , (801482,   9,          0) /* ValidLocations - None */
     , (801482,  16,         56) /* ItemUseable - ContainedViewedRemote */
     , (801482,  18,         32) /* UiEffects - Fire */
     , (801482,  19,          1) /* Value */
     , (801482,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801482,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801482,  39,     1.3) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801482,   1, 'Punkin''s Head') /* Name */
     , (801482,  14, 'Use this item to close it.') /* Use */
     , (801482,  16, 'A hollowed out head of Punkin with some straps so it can be used to carry things.') /* LongDesc */
     , (801482,  33, 'PunkinHeadTimer') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801482,   1,   33556809) /* Setup */
     , (801482,   3,  536870932) /* SoundTable */
     , (801482,   6,   67112968) /* PaletteBase */
     , (801482,   8,  100671019) /* Icon */
     , (801482,  22,  872415275) /* PhysicsEffectTable */;
