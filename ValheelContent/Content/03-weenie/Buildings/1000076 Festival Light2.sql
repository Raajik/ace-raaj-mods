DELETE FROM `weenie` WHERE `class_Id` = 1000076;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000076, 'festivallight1gha3', 29, '2020-01-08 07:59:44') /* LightSource */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000076,   1,       1024) /* ItemType - Useless */
     , (1000076,   5,        100) /* EncumbranceVal */
     , (1000076,   8,         50) /* Mass */
     , (1000076,   9,          0) /* ValidLocations - None */
     , (1000076,  16,          1) /* ItemUseable - No */
     , (1000076,  19,        500) /* Value */
     , (1000076,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (1000076, 150,        103) /* HookPlacement - Hook */
     , (1000076, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000076,   1, True ) /* Stuck */
     , (1000076,  11, True ) /* IgnoreCollisions */
     , (1000076,  13, True ) /* Ethereal */
     , (1000076,  14, True ) /* GravityStatus */
     , (1000076,  15, True ) /* LightsStatus */
     , (1000076,  19, True ) /* Attackable */
     , (1000076,  22, True ) /* Inscribable */
     , (1000076,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000076,  39,     0.8) /* DefaultScale */
     , (1000076,  44,      -1) /* TimeToRot */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000076,   1, 'Festival Light') /* Name */
     , (1000076,  15, 'You can use this item on floor and yard hooks.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000076,   1,   33556249) /* Setup */
     , (1000076,   3,  536870932) /* SoundTable */
     , (1000076,   8,  100672425) /* Icon */
     , (1000076,  22,  872415275) /* PhysicsEffectTable */;
