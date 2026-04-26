DELETE FROM `weenie` WHERE `class_Id` = 1000208;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000208, 'OpenBagofGrain', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000208,   1,        128) /* ItemType - Misc */
     , (1000208,   8,        500) /* Mass */
     , (1000208,  16,          0) /* ItemUseable - Remote */
     , (1000208,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000208,   1, True ) /* Stuck */
     , (1000208,  11, False) /* IgnoreCollisions */
     , (1000208,  12, True ) /* ReportCollisions */
     , (1000208,  13, False) /* Ethereal */
     , (1000208,  14, False) /* GravityStatus */
     , (1000208,  19, True ) /* Attackable */
     , (1000208,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000208,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000208,   1, 'OpenBagofGrain') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000208,   1,   33559182) /* Setup */
     /* , (1000208,   2,  150995197) /* MotionTable */;
