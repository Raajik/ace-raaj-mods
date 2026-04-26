DELETE FROM `weenie` WHERE `class_Id` = 880008;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (880008, 'thebanderlinghead', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (880008,   1,        128) /* ItemType - Misc */
     , (880008,   5,        400) /* EncumbranceVal */
     , (880008,   8,        600) /* Mass */
     , (880008,   9,          0) /* ValidLocations - None */
     , (880008,  16,          1) /* ItemUseable - No */
     , (880008,  19,          0) /* Value */
     , (880008,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (880008, 150,        103) /* HookPlacement - Hook */
     , (880008, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (880008,  22, True ) /* Inscribable */
     , (880008,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (880008,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (880008,   1, 'Banderling Head') /* Name */
     , (880008,  16, 'A battered, beaten and bloody Banderling head.') /* LongDesc */
     , (880008,  33, 'BanderlingHeadPickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (880008,   1, 0x02000956) /* Setup */
     , (880008,   3, 0x20000014) /* SoundTable */
     , (880008,   8, 0x06001E35) /* Icon */
     , (880008,  22, 0x3400002B) /* PhysicsEffectTable */
     , (880008,  36, 0x0E000016) /* MutateFilter */;
