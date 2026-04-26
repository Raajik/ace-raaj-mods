DELETE FROM `weenie` WHERE `class_Id` = 801226;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801226, 'Token of Higher Luminance', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801226,   1,       2048) /* ItemType - Gem */
     , (801226,   5,          5) /* EncumbranceVal */
     , (801226,  16,          1) /* ItemUseable - No */
     , (801226,  19,          0) /* Value */
     , (801226,  33,          1) /* Bonded - Bonded */
     , (801226,  65,        101) /* Placement - Resting */
     , (801226,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801226, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801226,   1, False) /* Stuck */
     , (801226,  11, True ) /* IgnoreCollisions */
     , (801226,  13, True ) /* Ethereal */
     , (801226,  14, True ) /* GravityStatus */
     , (801226,  19, True ) /* Attackable */
     , (801226,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801226,   1, 'Token of Higher Luminance') /* Name */
     , (801226,  14, 'This token may be traded to Nalicana, the Seer of the Yalain, in Asheron''s Castle, in order to spend 15,000,000 Luminance to gain an Maximum Luminance capacity to 30,000,000.  This augmentation may be used once.') /* Use */
     , (801226,  15, 'A pyreal token marked with intricate runes.  The carvings glow with a faint light.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801226,   1,   33557280) /* Setup */
     , (801226,   3,  536870932) /* SoundTable */
     , (801226,   7,  268437442) /* ClothingBase */
     , (801226,   8,  100691592) /* Icon */
     , (801226,  22,  872415275) /* PhysicsEffectTable */;
