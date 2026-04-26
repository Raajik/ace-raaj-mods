DELETE FROM `weenie` WHERE `class_Id` = 802605;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802605, 'well2', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802605,   1,    4194304) /* ItemType - CraftCookingBase */
     , (802605,   5,       6000) /* EncumbranceVal */
     , (802605,   8,       3000) /* Mass */
     , (802605,  16,         48) /* ItemUseable - ViewedRemote */
     , (802605,  19,        200) /* Value */
     , (802605,  53,        101) /* PlacementPosition - Resting */
     , (802605,  83,       4096) /* ActivationResponse - CastSpell */
     , (802605,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (802605, 119,          1) /* Active */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802605,   1, True ) /* Stuck */
     , (802605,  11, True ) /* IgnoreCollisions */
     , (802605,  12, True ) /* ReportCollisions */
     , (802605,  13, False) /* Ethereal */
     , (802605,  14, True ) /* GravityStatus */
     , (802605,  19, True ) /* Attackable */
     , (802605,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802605,  11,      10) /* ResetInterval */
     , (802605,  39,       1) /* DefaultScale */
     , (802605,  44,      -1) /* TimeToRot */
     , (802605,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802605,   1, 'Well') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802605,   1,   33554816) /* Setup */
     , (802605,   3,  536870932) /* SoundTable */
     , (802605,   8,  100667466) /* Icon */
     , (802605,  22,  872415275) /* PhysicsEffectTable */
     , (802605,  28,       4022) /* Spell - Zombie's Persistence */;
