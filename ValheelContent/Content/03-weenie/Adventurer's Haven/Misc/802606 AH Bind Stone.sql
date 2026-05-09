DELETE FROM `weenie` WHERE `class_Id` = 802606;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802606, 'AHbindstone', 65, '2005-02-09 10:00:00') /* AllegianceBindstone */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802606,   1,  268435456) /* ItemType - LifeStone */
     , (802606,   3,          2) /* PaletteTemplate - Blue */
     , (802606,  16,         32) /* ItemUseable - Remote */
     , (802606,  93,       1040) /* PhysicsState - IgnoreCollisions, Gravity */
     , (802606, 133,          1) /* ShowableOnRadar - ShowNever */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802606,   1, True ) /* Stuck */
     , (802606,  12, False) /* ReportCollisions */
     , (802606,  13, False) /* Ethereal */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802606,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802606,   1, 'Adventurer''s Haven Bind Stone') /* Name */
     , (802606,  14, 'Allegiance monarchs can use this item to set the town recall point for their allegiances.') /* Use */
     , (802606,  18, 'You have attuned your allegiance to this Bindstone.') /* UseMessage */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802606,   1,   33558700) /* Setup */
     , (802606,   2,  150995296) /* MotionTable */
     , (802606,   3,  536870932) /* SoundTable */
     , (802606,   6,   67113296) /* PaletteBase */
     , (802606,   7,  268436821) /* ClothingBase */
     , (802606,   8,  100671884) /* Icon */;
