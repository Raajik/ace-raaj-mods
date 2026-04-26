DELETE FROM `weenie` WHERE `class_Id` = 800449;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800449, 'Rare+ Pack of Trading Cards', 38, '2022-07-30 08:47:50') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800449,   0,          0) /*  */
     , (800449,   1,       2048) /* ItemType - Gem */
     , (800449,   5,          1) /* EncumbranceVal */
     , (800449,  11,          1) /* MaxStackSize */
     , (800449,  12,          1) /* StackSize */
     , (800449,  13,          1) /* StackUnitEncumbrance */
     , (800449,  15,         100) /* StackUnitValue */
     , (800449,  16,          8) /* ItemUseable - Contained */
     , (800449,  18,          1) /* UiEffects - Magical */
     , (800449,  19,         100) /* Value */
     , (800449,  65,        101) /* Placement - Resting */
     , (800449,  83,       2048) /* ActivationResponse - Emote */
     , (800449,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800449,  94,         16) /* TargetType - Creature */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800449,   1, False) /* Stuck */
     , (800449,  11, True ) /* IgnoreCollisions */
     , (800449,  13, True ) /* Ethereal */
     , (800449,  14, True ) /* GravityStatus */
     , (800449,  19, False) /* Attackable */
     , (800449,  22, True ) /* Inscribable */
     , (800449,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800449,   1,     0.5) /* HeartbeatDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800449,   1, 'Rare+ Pack of Trading Cards') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800449,   1, 0x02000179) /* Setup */
     , (800449,   3, 0x20000014) /* SoundTable */
     , (800449,   6, 0x04000BEF) /* PaletteBase */
     , (800449,   8, 0x060062EE) /* Icon */
     , (800449,  22, 0x3400002B) /* PhysicsEffectTable */;
