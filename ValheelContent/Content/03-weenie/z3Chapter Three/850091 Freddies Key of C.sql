DELETE FROM `weenie` WHERE `class_Id` = 850091;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850091, 'ace850091-freddieskeyofc', 22, '2021-11-01 00:00:00') /* Key */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850091,   1,      16384) /* ItemType - Key */
     , (850091,   5,         30) /* EncumbranceVal */
     , (850091,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (850091,  18,         64) /* UiEffects - Lightning */
     , (850091,  19,          7) /* Value */
     , (850091,  33,          1) /* Bonded - Bonded */
     , (850091,  91,          1) /* MaxStructure */
     , (850091,  92,          1) /* Structure */
     , (850091,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (850091,  94,        640) /* TargetType - LockableMagicTarget */
     , (850091, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850091,  22, False) /* Inscribable */
     , (850091,  23, True ) /* DestroyOnSell */
     , (850091,  69, False) /* IsSellable */
     , (850091,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850091,   1, 'Freddie''s Key of C') /* Name */
     , (850091,  13, 'freddieschest') /* KeyCode */
     , (850091,  14, 'Use this key to open Freddie''s Forgotten chest.') /* Use */
     , (850091,  16, 'Everything sounds better in the Key of C.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850091,   1, 0x02000160) /* Setup */
     , (850091,   3, 0x20000014) /* SoundTable */
     , (850091,   8, 0x06007547) /* Icon */
     , (850091,  22, 0x3400002B) /* PhysicsEffectTable */;