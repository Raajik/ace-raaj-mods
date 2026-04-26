DELETE FROM `weenie` WHERE `class_Id` = 803284;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803284, 'Pocket Tank Essence (3000)', 70, '2024-01-22 12:01:26') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803284,   1,        128) /* ItemType - Misc */
     , (803284,   5,         50) /* EncumbranceVal */
     , (803284,  16,          8) /* ItemUseable - Contained */
     , (803284,  18,          1) /* UiEffects - Fire */
     , (803284,  19,     250000) /* Value */
     , (803284,  33,          0) /* Bonded - Normal */
     , (803284,  91,        100) /* MaxStructure */
     , (803284,  92,        100) /* Structure */
     , (803284,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803284,  94,         16) /* TargetType - Creature */
     , (803284, 114,          0) /* Attuned - Normal */
     , (803284, 124,          2) /* Version */
     , (803284, 266,     803285) /* PetClass - Pocket Olthoi */
     /* , (803284, 280,        900) /* SharedCooldown */
     , (803284, 362,          1) /* SummoningMastery - Naturalist */
     , (803284, 366,         54) /* UseRequiresSkill */
     , (803284, 367,        850) /* UseRequiresSkillLevel */
     , (803284, 368,         54) /* UseRequiresSkillSpec */
     , (803284, 369,       3000) /* UseRequiresLevel */
     , (803284, 370,        550) /* GearDamageRating */
     , (803284, 371,        550) /* GearDamageResistRating */
     , (803284, 372,        550) /* GearCritRating */
     , (803284, 373,        550) /* GearCritResistRating */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803284,  22, True ) /* Inscribable */
     , (803284,  63, False ) /* UnlimitedUse */
     , (803284,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803284,  39,     0.4) /* DefaultScale */
     , (803284, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803284,   1, 'Crystal of Defense Essence') /* Name */
     , (803284,  14, 'This Essence will allow you to summon up to three companions for battle.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803284,   1, 0x02000181) /* Setup */
     , (803284,   3, 0x20000014) /* SoundTable */
     , (803284,   6, 0x04000BEF) /* PaletteBase */
     , (803284,   8, 0x06001B4B) /* Icon */
     , (803284,  22, 0x3400002B) /* PhysicsEffectTable */
     /* , (803284,  50, 0x06006C38) /* IconOverlay */
     , (803284,  52, 0x060011F4) /* IconUnderlay */;
