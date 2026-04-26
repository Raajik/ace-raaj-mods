DELETE FROM `weenie` WHERE `class_Id` = 800678;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800678, 'bigfountain2', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800678,   1,        128) /* ItemType - Misc */
     , (800678,   5,         50) /* EncumbranceVal */
     , (800678,   8,         25) /* Mass */
     , (800678,   9,          0) /* ValidLocations - None */
     , (800678,  16,          1) /* ItemUseable - No */
     , (800678,  19,      20000) /* Value */
     , (800678,  33,          1) /* Bonded - Bonded */
     , (800678,  93,    6292504) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800678,  13, True ) /* Ethereal */
     , (800678,  22, True ) /* Inscribable */
     , (800678,  23, True ) /* DestroyOnSell */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800678,   39,       2) /* HeartbeatInterval */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800678,   1, 'bigfountain') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800678,   1,   33557155) /* Setup */
     , (800678,   8,  100671774) /* Icon */;
