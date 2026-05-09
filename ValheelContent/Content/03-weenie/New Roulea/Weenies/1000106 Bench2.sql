DELETE FROM `weenie` WHERE `class_Id` = 1000106;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000106, 'bench2', 1, '2020-01-08 07:59:45') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000106,   1,        128) /* ItemType - Misc */
     , (1000106,   5,         50) /* EncumbranceVal */
     , (1000106,   8,         25) /* Mass */
     , (1000106,   9,          0) /* ValidLocations - None */
     , (1000106,  16,          1) /* ItemUseable - No */
     , (1000106,  19,       3226) /* Value */
     , (1000106,  53,        101) /* PlacementPosition - Resting */
     , (1000106,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (1000106, 150,        103) /* HookPlacement - Hook */
     , (1000106, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000106,   1, True ) /* Stuck */
     , (1000106,  11, True ) /* IgnoreCollisions */
     , (1000106,  13, False) /* Ethereal */
     , (1000106,  14, True ) /* GravityStatus */
     , (1000106,  19, True ) /* Attackable */
     , (1000106,  22, True ) /* Inscribable */
     , (1000106,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000106,  44,      -1) /* TimeToRot */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000106,   1, 'Bench') /* Name */
     , (1000106,  15, 'This item can be used on an item hook.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000106,   1,   33554720) /* Setup */
     , (1000106,   8,  100668111) /* Icon */;
