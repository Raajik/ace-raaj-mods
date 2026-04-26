DELETE FROM `weenie` WHERE `class_Id` = 802603;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802603, 'HavensLight2', 1, '2020-01-08 07:59:45') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802603,   1,        128) /* ItemType - Misc */
     , (802603,   5,       9000) /* EncumbranceVal */
     , (802603,   8,       5800) /* Mass */
     , (802603,  16,          1) /* ItemUseable - No */
     , (802603,  19,          0) /* Value */
     , (802603,  81,          1) /* MaxGeneratedObjects */
     , (802603,  82,          1) /* InitGeneratedObjects */
     , (802603,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (802603, 133,          0) /* ShowableOnRadar - ShowAlways */
     , (802603, 142,          1) /* GeneratorTimeType - RealTime */
     , (802603, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802603,   1, True ) /* Stuck */
     , (802603,  12, True ) /* ReportCollisions */
     , (802603,  13, False) /* Ethereal */
     , (802603,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802603,  39,     0.3) /* DefaultScale */
     , (802603,  41,      60) /* RegenerationInterval */
     , (802603,  43,       0) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802603,   1, 'Haven''s Light') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802603,   1,   33556034) /* Setup */
     , (802603,   8,  100670208) /* Icon */;