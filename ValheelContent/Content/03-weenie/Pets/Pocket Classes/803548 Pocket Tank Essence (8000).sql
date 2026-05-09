DELETE FROM `weenie` WHERE `class_Id` = 803548;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803548, 'Pocket Tank Essence (8000)', 70, '2024-01-22 12:01:26') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803548,   1,        128) /* ItemType - Misc */
     , (803548,   5,         50) /* EncumbranceVal */
     , (803548,  16,          8) /* ItemUseable - Contained */
     , (803548,  18,          1) /* UiEffects - Fire */
     , (803548,  19,     300000) /* Value */
     , (803548,  33,          0) /* Bonded - Normal */
     , (803548,  91,        100) /* MaxStructure */
     , (803548,  92,        100) /* Structure */
     , (803548,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803548,  94,         16) /* TargetType - Creature */
     , (803548, 114,          0) /* Attuned - Normal */
     , (803548, 124,          2) /* Version */
     , (803548, 266,     803549) /* PetClass - Pocket Olthoi */
     /* , (803548, 280,        900) /* SharedCooldown */
     , (803548, 362,          1) /* SummoningMastery - Naturalist */
     , (803548, 366,         54) /* UseRequiresSkill */
     , (803548, 367,        850) /* UseRequiresSkillLevel */
     , (803548, 368,         54) /* UseRequiresSkillSpec */
     , (803548, 369,       8000) /* UseRequiresLevel */
     , (803548, 370,        850) /* GearDamageRating */
     , (803548, 371,        850) /* GearDamageResistRating */
     , (803548, 372,        850) /* GearCritRating */
     , (803548, 373,        850) /* GearCritResistRating */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803548,  22, True ) /* Inscribable */
     , (803548,  63, False ) /* UnlimitedUse */
     , (803548,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803548,  39,     0.4) /* DefaultScale */
     , (803548, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803548,   1, 'Crystal of Defense Essence') /* Name */
     , (803548,  14, 'This Essence will allow you to summon up to three companions for battle.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803548,   1, 0x02000181) /* Setup */
     , (803548,   3, 0x20000014) /* SoundTable */
     , (803548,   6, 0x04000BEF) /* PaletteBase */
     , (803548,   8, 0x06001B4B) /* Icon */
     , (803548,  22, 0x3400002B) /* PhysicsEffectTable */
     /* , (803548,  50, 0x06006C38) /* IconOverlay */
     , (803548,  52, 0x060011F4) /* IconUnderlay */;
