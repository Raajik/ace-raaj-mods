DELETE FROM `weenie` WHERE `class_Id` = 1000023;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000023, 'festivallight1gha12', 29, '2020-01-08 07:59:44') /* LightSource */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000023,   1,       1024) /* ItemType - Useless */
     , (1000023,   5,        100) /* EncumbranceVal */
     , (1000023,   8,         50) /* Mass */
     , (1000023,   9,          0) /* ValidLocations - None */
     , (1000023,  16,          1) /* ItemUseable - No */
     , (1000023,  19,        500) /* Value */
     , (1000023,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (1000023, 150,        103) /* HookPlacement - Hook */
     , (1000023, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000023,   1, True ) /* Stuck */
     , (1000023,  11, True ) /* IgnoreCollisions */
     , (1000023,  13, True ) /* Ethereal */
     , (1000023,  14, True ) /* GravityStatus */
     , (1000023,  15, True ) /* LightsStatus */
     , (1000023,  19, True ) /* Attackable */
     , (1000023,  22, True ) /* Inscribable */
     , (1000023,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000023,  39, 4) /* DefaultScale */
     , (1000023,  44,      -1) /* TimeToRot */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000023,   1, 'Gharu''ndim Festival Light') /* Name */
     , (1000023,  15, 'You can use this item on floor and yard hooks.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000023,   1,   33556231) /* Setup */
     , (1000023,   3,  536870932) /* SoundTable */
     , (1000023,   8,  100672425) /* Icon */
     , (1000023,  22,  872415275) /* PhysicsEffectTable */;
