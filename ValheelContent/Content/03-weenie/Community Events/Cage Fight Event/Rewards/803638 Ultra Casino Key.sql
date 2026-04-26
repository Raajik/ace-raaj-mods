DELETE FROM `weenie` WHERE `class_Id` = 803638;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803638, 'UltraCasinoKey', 22, '2021-11-01 00:00:00') /* Key */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803638,   1,      16384) /* ItemType - Key */
     , (803638,   5,        500) /* EncumbranceVal */
     , (803638,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (803638,  19,          0) /* Value */
     , (803638,  33,          1) /* Bonded - Bonded */
     , (803638,  91,          1) /* MaxStructure */
     , (803638,  92,          1) /* Structure */
     , (803638,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803638,  94,        640) /* TargetType - LockableMagicTarget */
     , (803638, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803638,  22, True ) /* Inscribable */
     , (803638,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803638,  39,       3) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803638,   1, 'Ultra Casino Key') /* Name */
     , (803638,  13, 'ultracasinokey') /* KeyCode */
     , (803638,  16, 'A large golden key that opens the Ultra Casino Chest.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803638,   1,   33557005) /* Setup */
     , (803638,   3,  536870932) /* SoundTable */
     , (803638,   8,  100671519) /* Icon */
     , (803638,  22,  872415275) /* PhysicsEffectTable */;
