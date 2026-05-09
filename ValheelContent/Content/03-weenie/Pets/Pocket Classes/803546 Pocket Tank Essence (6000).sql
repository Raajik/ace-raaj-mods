DELETE FROM `weenie` WHERE `class_Id` = 803546;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803546, 'Pocket Tank Essence (6000)', 70, '2024-01-22 12:01:26') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803546,   1,        128) /* ItemType - Misc */
     , (803546,   5,         50) /* EncumbranceVal */
     , (803546,  16,          8) /* ItemUseable - Contained */
     , (803546,  18,          1) /* UiEffects - Fire */
     , (803546,  19,     200000) /* Value */
     , (803546,  33,          0) /* Bonded - Normal */
     , (803546,  91,        100) /* MaxStructure */
     , (803546,  92,        100) /* Structure */
     , (803546,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803546,  94,         16) /* TargetType - Creature */
     , (803546, 114,          0) /* Attuned - Normal */
     , (803546, 124,          2) /* Version */
     , (803546, 266,     803547) /* PetClass - Pocket Olthoi */
     /* , (803546, 280,        900) /* SharedCooldown */
     , (803546, 362,          1) /* SummoningMastery - Naturalist */
     , (803546, 366,         54) /* UseRequiresSkill */
     , (803546, 367,        850) /* UseRequiresSkillLevel */
     , (803546, 368,         54) /* UseRequiresSkillSpec */
     , (803546, 369,       6000) /* UseRequiresLevel */
     , (803546, 370,        700) /* GearDamageRating */
     , (803546, 371,        700) /* GearDamageResistRating */
     , (803546, 372,        700) /* GearCritRating */
     , (803546, 373,        700) /* GearCritResistRating */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803546,  22, True ) /* Inscribable */
     , (803546,  63, False ) /* UnlimitedUse */
     , (803546,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803546,  39,     0.4) /* DefaultScale */
     , (803546, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803546,   1, 'Crystal of Defense Essence') /* Name */
     , (803546,  14, 'This Essence will allow you to summon up to three companions for battle.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803546,   1, 0x02000181) /* Setup */
     , (803546,   3, 0x20000014) /* SoundTable */
     , (803546,   6, 0x04000BEF) /* PaletteBase */
     , (803546,   8, 0x06001B4B) /* Icon */
     , (803546,  22, 0x3400002B) /* PhysicsEffectTable */
     /* , (803546,  50, 0x06006C38) /* IconOverlay */
     , (803546,  52, 0x060011F4) /* IconUnderlay */;
