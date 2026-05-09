DELETE FROM `weenie` WHERE `class_Id` = 300104;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300104, 'ringmasterhead', 1, '2021-11-17 16:56:08') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300104,   1,        128) /* ItemType - Misc */
     , (300104,   5,        200) /* EncumbranceVal */
     , (300104,  16,          1) /* ItemUseable - No */
     , (300104,  19,          0) /* Value */
     , (300104,  33,          1) /* Bonded - Bonded */
     , (300104,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (300104, 114,          2) /* Attuned - Attuned */
     , (300104, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300104,  11, True ) /* IgnoreCollisions */
     , (300104,  13, True ) /* Ethereal */
     , (300104,  14, True ) /* GravityStatus */
     , (300104,  19, True ) /* Attackable */
     , (300104,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300104,   1, 'Ringmaster''s Head') /* Name */
     , (300104,  16, 'The head of the Ringmaster.') /* LongDesc */
     , (300104,  33, 'RingMasterHead') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300104,   1,   33559764) /* Setup */
     , (300104,   3,  536870932) /* SoundTable */
     , (300104,   8,  100688428) /* Icon */
     , (300104,  22,  872415275) /* PhysicsEffectTable */;
