DELETE FROM `weenie` WHERE `class_Id` = 1000131;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000131, 'Tradewind Life Stone', 25, '2005-02-09 10:00:00') /* LifeStone */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000131,   1,  268435456) /* ItemType - LifeStone */
     , (1000131,  16,         32) /* ItemUseable - Remote */
     , (1000131,  93,       1040) /* PhysicsState - IgnoreCollisions, Gravity */
     , (1000131, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000131,   1, True ) /* Stuck */
     , (1000131,  12, False) /* ReportCollisions */
     , (1000131,  13, False) /* Ethereal */
     , (1000131,  14, False) /* GravityStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000131,  39,       2) /* DefaultScale */
     , (1000131,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000131,   1, 'Tradewind Life Stone') /* Name */
     , (1000131,  14, 'Use this item to set your resurrection point.') /* Use */
     , (1000131,  18, 'You have attuned your spirit to this Lifestone. You will resurrect here after you die.') /* UseMessage */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000131,   1,   33559677) /* Setup */
     , (1000131,   2, 0x090000A3) /* MotionTable */
     , (1000131,   3, 0x20000059) /* SoundTable */
     , (1000131,   8, 0x06003163) /* Icon */;
