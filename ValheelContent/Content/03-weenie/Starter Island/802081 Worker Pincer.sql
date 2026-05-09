DELETE FROM `weenie` WHERE `class_Id` = 802081;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802081, 'OlthoiWorkerPincer', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802081,   1,        128) /* ItemType - Misc */
     , (802081,   5,        100) /* EncumbranceVal */
     , (802081,   8,        100) /* Mass */
     , (802081,   9,          0) /* ValidLocations - None */
     , (802081,  16,          1) /* ItemUseable - No */
     , (802081,  19,          0) /* Value */
     , (802081,  33,          1) /* Bonded - Bonded */
     , (802081,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802081, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802081,  22, True ) /* Inscribable */
     , (802081,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802081,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802081,   1, 'Worker Pincer') /* Name */
     , (802081,  16, 'The pincer off of an Olthoi Worker.') /* LongDesc */
     , (802081,  33, 'WorkerPincer') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802081,   1,   33554817) /* Setup */
     , (802081,   3,  536870932) /* SoundTable */
     , (802081,   8,  100672037) /* Icon */
     , (802081,  22,  872415275) /* PhysicsEffectTable */;
