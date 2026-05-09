DELETE FROM `weenie` WHERE `class_Id` = 803550;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803550, 'Pocket Tank Essence (10000)', 70, '2024-01-22 12:01:26') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803550,   1,        128) /* ItemType - Misc */
     , (803550,   5,         50) /* EncumbranceVal */
     , (803550,  16,          8) /* ItemUseable - Contained */
     , (803550,  18,          1) /* UiEffects - Fire */
     , (803550,  19,     500000) /* Value */
     , (803550,  33,          0) /* Bonded - Normal */
     , (803550,  91,        100) /* MaxStructure */
     , (803550,  92,        100) /* Structure */
     , (803550,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803550,  94,         16) /* TargetType - Creature */
     , (803550, 114,          0) /* Attuned - Normal */
     , (803550, 124,          2) /* Version */
     , (803550, 266,     803551) /* PetClass - Pocket Olthoi */
     /* , (803550, 280,        900) /* SharedCooldown */
     , (803550, 362,          1) /* SummoningMastery - Naturalist */
     , (803550, 366,         54) /* UseRequiresSkill */
     , (803550, 367,        850) /* UseRequiresSkillLevel */
     , (803550, 368,         54) /* UseRequiresSkillSpec */
     , (803550, 369,      10000) /* UseRequiresLevel */
     , (803550, 370,       1000) /* GearDamageRating */
     , (803550, 371,       1000) /* GearDamageResistRating */
     , (803550, 372,       1000) /* GearCritRating */
     , (803550, 373,       1000) /* GearCritResistRating */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803550,  22, True ) /* Inscribable */
     , (803550,  63, False ) /* UnlimitedUse */
     , (803550,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803550,  39,     0.4) /* DefaultScale */
     , (803550, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803550,   1, 'Crystal of Defense Essence') /* Name */
     , (803550,  14, 'This Essence will allow you to summon up to three companions for battle.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803550,   1, 0x02000181) /* Setup */
     , (803550,   3, 0x20000014) /* SoundTable */
     , (803550,   6, 0x04000BEF) /* PaletteBase */
     , (803550,   8, 0x06001B4B) /* Icon */
     , (803550,  22, 0x3400002B) /* PhysicsEffectTable */
     /* , (803550,  50, 0x06006C38) /* IconOverlay */
     , (803550,  52, 0x060011F4) /* IconUnderlay */;
