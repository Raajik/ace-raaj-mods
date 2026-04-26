DELETE FROM `weenie` WHERE `class_Id` = 802604;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802604, 'festivallight1gha2', 29, '2020-01-08 07:59:44') /* LightSource */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802604,   1,       1024) /* ItemType - Useless */
     , (802604,   5,        100) /* EncumbranceVal */
     , (802604,   8,         50) /* Mass */
     , (802604,   9,          0) /* ValidLocations - None */
     , (802604,  16,          1) /* ItemUseable - No */
     , (802604,  19,        500) /* Value */
     , (802604,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (802604, 150,        103) /* HookPlacement - Hook */
     , (802604, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802604,   1, True ) /* Stuck */
     , (802604,  11, True ) /* IgnoreCollisions */
     , (802604,  13, True ) /* Ethereal */
     , (802604,  14, True ) /* GravityStatus */
     , (802604,  15, True ) /* LightsStatus */
     , (802604,  19, True ) /* Attackable */
     , (802604,  22, True ) /* Inscribable */
     , (802604,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802604,  39,     0.8) /* DefaultScale */
     , (802604,  44,      -1) /* TimeToRot */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802604,   1, 'Gharu''ndim Festival Light') /* Name */
     , (802604,  15, 'You can use this item on floor and yard hooks.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802604,   1,   33556231) /* Setup */
     , (802604,   3,  536870932) /* SoundTable */
     , (802604,   8,  100672425) /* Icon */
     , (802604,  22,  872415275) /* PhysicsEffectTable */;
