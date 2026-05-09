DELETE FROM `weenie` WHERE `class_Id` = 801376;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801376, 'adminlegkey', 22, '2021-11-01 00:00:00') /* Key */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801376,   1,      16384) /* ItemType - Key */
     , (801376,   5,         30) /* EncumbranceVal */
     , (801376,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (801376,  18,         64) /* UiEffects - Lightning */
     , (801376,  19,     100000) /* Value */
     , (801376,  33,          0) /* Bonded - Normal */
     , (801376,  91,         10) /* MaxStructure */
     , (801376,  92,         10) /* Structure */
     , (801376,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801376,  94,        640) /* TargetType - LockableMagicTarget */
     , (801376, 114,          0) /* Attuned - Normal */
     , (801376, 369,        150) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801376,  22, True ) /* Inscribable */
     , (801376,  63, True ) /* UnlimitedUse */
     , (801376,  69, False) /* IsSellable */
     , (801376,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801376,   1, 'Admin Legendary Key') /* Name */
     , (801376,  13, 'keychestleg') /* KeyCode */
     , (801376,  14, 'Use this key to open a Legendary Chest.') /* Use */
     , (801376,  16, 'This key has seen better days.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801376,   1,   33554784) /* Setup */
     , (801376,   3,  536870932) /* SoundTable */
     , (801376,   8,  100693001) /* Icon */
     , (801376,  22,  872415275) /* PhysicsEffectTable */;
