DELETE FROM `weenie` WHERE `class_Id` = 1000048;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000048, 'ArramoraTumerokHornDualPipes2', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000048,   1,        128) /* ItemType - Misc */
     , (1000048,   8,        500) /* Mass */
     , (1000048,  16,         32) /* ItemUseable - Remote */
     , (1000048,  19,          0) /* Value */
     , (1000048,  38,         50) /* ResistLockpick */
     , (1000048,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000048,   1, True ) /* Stuck */
     , (1000048,  11, False) /* IgnoreCollisions */
     , (1000048,  12, True ) /* ReportCollisions */
     , (1000048,  13, False) /* Ethereal */
     , (1000048,  14, False) /* GravityStatus */
     , (1000048,  19, True ) /* Attackable */
     , (1000048,  24, True ) /* UiHidden */
     , (1000048,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000048,  11,     300) /* ResetInterval */
     , (1000048,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000048,   1, 'Tumerok Horn Dual Pipes 2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000048,   1,   33557827) /* Setup */
     , (1000048,   2,  150995418) /* MotionTable */
     , (1000048,   3,  536871119) /* SoundTable */
     , (1000048,   8,  100689885) /* Icon */
     , (1000048,  22,  872415325) /* PhysicsEffectTable */;
