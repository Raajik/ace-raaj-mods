DELETE FROM `weenie` WHERE `class_Id` = 1000049;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000049, 'ArramoraTumerokHornDualPipes3', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000049,   1,        128) /* ItemType - Misc */
     , (1000049,   8,        500) /* Mass */
     , (1000049,  16,         32) /* ItemUseable - Remote */
     , (1000049,  19,          0) /* Value */
     , (1000049,  38,         50) /* ResistLockpick */
     , (1000049,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000049,   1, True ) /* Stuck */
     , (1000049,  11, False) /* IgnoreCollisions */
     , (1000049,  12, True ) /* ReportCollisions */
     , (1000049,  13, False) /* Ethereal */
     , (1000049,  14, False) /* GravityStatus */
     , (1000049,  19, True ) /* Attackable */
     , (1000049,  24, True ) /* UiHidden */
     , (1000049,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000049,  11,     300) /* ResetInterval */
     , (1000049,  39,       1.25) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000049,   1, 'Tumerok Horn Dual Pipes 3') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000049,   1,   33557829) /* Setup */
     , (1000049,   2,  150995418) /* MotionTable */
     , (1000049,   3,  536871119) /* SoundTable */
     , (1000049,   8,  100689885) /* Icon */
     , (1000049,  22,  872415325) /* PhysicsEffectTable */;
