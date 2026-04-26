DELETE FROM `weenie` WHERE `class_Id` = 802900;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802900, 'LedgerDemon', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802900,   1,        128) /* ItemType - Misc */
     , (802900,   8,        500) /* Mass */
     , (802900,  16,         32) /* ItemUseable - Remote */
     , (802900,  19,          0) /* Value */
     , (802900,  38,         50) /* ResistLockpick */
     , (802900,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802900,   1, True ) /* Stuck */
     , (802900,  11, False) /* IgnoreCollisions */
     , (802900,  12, True ) /* ReportCollisions */
     , (802900,  13, False) /* Ethereal */
     , (802900,  14, False) /* GravityStatus */
     , (802900,  19, True ) /* Attackable */
     , (802900,  24, True ) /* UiHidden */
     , (802900,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802900,  11,     300) /* ResetInterval */
     , (802900,  39,     0.7) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802900,   1, 'LedgerDemon') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802900,   1, 0x020007C3) /* Setup */
     /* , (802900,   2, 0x090000E6) /* MotionTable */
     /* , (802900,   3, 0x20000001) /* SoundTable */
     /* , (802900,   6, 0x0400007E) /* PaletteBase */
     , (802900,   8, 0x06001B00) /* Icon */;
