DELETE FROM `weenie` WHERE `class_Id` = 803283;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803283, 'Pocket Tank Essence 275', 70, '2024-01-22 12:01:26') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803283,   1,        128) /* ItemType - Misc */
     , (803283,   5,         50) /* EncumbranceVal */
     , (803283,  16,          8) /* ItemUseable - Contained */
     , (803283,  18,          1) /* UiEffects - Fire */
     , (803283,  19,      25000) /* Value */
     , (803283,  33,          0) /* Bonded - Normal */
     , (803283,  91,        100) /* MaxStructure */
     , (803283,  92,        100) /* Structure */
     , (803283,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803283,  94,         16) /* TargetType - Creature */
     , (803283, 114,          0) /* Attuned - Normal */
     , (803283, 124,          2) /* Version */
     , (803283, 266,     803282) /* PetClass - Pocket Olthoi */
     /* , (803283, 280,        900) /* SharedCooldown */
     , (803283, 362,          1) /* SummoningMastery - Naturalist */
     , (803283, 366,         54) /* UseRequiresSkill */
     , (803283, 367,        500) /* UseRequiresSkillLevel */
     , (803283, 368,         54) /* UseRequiresSkillSpec */
     , (803283, 369,        275) /* UseRequiresLevel */
     , (803283, 370,        450) /* GearDamageRating */
     , (803283, 371,        450) /* GearDamageResistRating */
     , (803283, 372,        450) /* GearCritRating */
     , (803283, 373,        450) /* GearCritResistRating */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803283,  22, True ) /* Inscribable */
     , (803283,  63, False ) /* UnlimitedUse */
     , (803283,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803283,  39,     0.4) /* DefaultScale */
     , (803283, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803283,   1, 'Crystal of Defense Essence') /* Name */
     , (803283,  14, 'This Essence will allow you to summon up to three companions for battle.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803283,   1, 0x02000181) /* Setup */
     , (803283,   3, 0x20000014) /* SoundTable */
     , (803283,   6, 0x04000BEF) /* PaletteBase */
     , (803283,   8, 0x06001B4B) /* Icon */
     , (803283,  22, 0x3400002B) /* PhysicsEffectTable */
     /* , (803283,  50, 0x06006C38) /* IconOverlay */
     , (803283,  52, 0x060011F4) /* IconUnderlay */;
