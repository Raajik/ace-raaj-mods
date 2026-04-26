DELETE FROM `weenie` WHERE `class_Id` = 1000047;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000047, 'ArramoraTumerokHornDualPipes1', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000047,   1,        128) /* ItemType - Misc */
     , (1000047,   8,        500) /* Mass */
     , (1000047,  16,         32) /* ItemUseable - Remote */
     , (1000047,  19,          0) /* Value */
     , (1000047,  38,         50) /* ResistLockpick */
     , (1000047,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000047,   1, True ) /* Stuck */
     , (1000047,  11, False) /* IgnoreCollisions */
     , (1000047,  12, True ) /* ReportCollisions */
     , (1000047,  13, False) /* Ethereal */
     , (1000047,  14, False) /* GravityStatus */
     , (1000047,  19, True ) /* Attackable */
     , (1000047,  24, True ) /* UiHidden */
     , (1000047,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000047,  11,     300) /* ResetInterval */
     , (1000047,  39,       0.75) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000047,   1, 'Tumerok Horn Dual Pipes 1') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000047,   1,   33557826) /* Setup */
     , (1000047,   2,  150995418) /* MotionTable */
     , (1000047,   3,  536871119) /* SoundTable */
     , (1000047,   8,  100689885) /* Icon */
     , (1000047,  22,  872415325) /* PhysicsEffectTable */;
