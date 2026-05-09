DELETE FROM `weenie` WHERE `class_Id` = 800685;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800685, 'Crystalized Tree', 26, '2005-02-09 10:00:00') /* Switch */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800685,   1,        128) /* ItemType - Misc */
     , (800685,   5,       6000) /* EncumbranceVal */
     , (800685,   8,       3000) /* Mass */
     , (800685,  16,         48) /* ItemUseable - ViewedRemote */
     , (800685,  19,        200) /* Value */
     , (800685,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (800685,  94,        128) /* TargetType - Misc */
     , (800685, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800685,   1, True ) /* Stuck */
     , (800685,  12, True ) /* ReportCollisions */
     , (800685,  13, False) /* Ethereal */
     , (800685,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800685,  39,     5) /* DefaultScale */
     , (800685,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800685,   1, 'Crystalized Tree') /* Name */
     , (800685,  14, 'Use a Pickaxe to chop this tree down and collect the wood.') /* Use */
     , (800685,  15, 'A tall tree encapsulated in Vhroma''n Crystal.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800685,   1,   33559506) /* Setup */
     , (800685,   2,  150995140) /* MotionTable */
     , (800685,   3,  536870985) /* SoundTable */
     , (800685,   8,  100671332) /* Icon */
     , (800685,  22,  872415275) /* PhysicsEffectTable */;
