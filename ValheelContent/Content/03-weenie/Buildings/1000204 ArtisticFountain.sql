DELETE FROM `weenie` WHERE `class_Id` = 1000204;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000204, 'ArtisticFountain', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000204,   1,        128) /* ItemType - Misc */
     , (1000204,   8,        500) /* Mass */
     , (1000204,  16,          0) /* ItemUseable - Remote */
     , (1000204,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000204,   1, True ) /* Stuck */
     , (1000204,  11, False) /* IgnoreCollisions */
     , (1000204,  12, True ) /* ReportCollisions */
     , (1000204,  13, False) /* Ethereal */
     , (1000204,  14, False) /* GravityStatus */
     , (1000204,  19, True ) /* Attackable */
     , (1000204,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000204,  39,     1.25) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000204,   1, 'ArtisticFountain') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000204,   1,   33559098) /* Setup */
     /* , (1000204,   2,  150995197) /* MotionTable */;
