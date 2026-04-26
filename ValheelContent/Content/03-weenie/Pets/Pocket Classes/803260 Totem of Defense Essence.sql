DELETE FROM `weenie` WHERE `class_Id` = 803260;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803260, 'Totem of Defense Essence', 70, '2024-01-22 12:01:26') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803260,   1,        128) /* ItemType - Misc */
     , (803260,   5,         50) /* EncumbranceVal */
     , (803260,  16,          8) /* ItemUseable - Contained */
     , (803260,  18,          1) /* UiEffects - Fire */
     , (803260,  19,     100000) /* Value */
     , (803260,  33,          0) /* Bonded - Normal */
     , (803260,  91,        100) /* MaxStructure */
     , (803260,  92,        100) /* Structure */
     , (803260,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803260,  94,         16) /* TargetType - Creature */
     , (803260, 114,          0) /* Attuned - Normal */
     , (803260, 124,          2) /* Version */
     , (803260, 266,     803259) /* PetClass - Pocket Olthoi */
     /* , (803260, 280,        900) /* SharedCooldown */
     , (803260, 362,          1) /* SummoningMastery - Naturalist */
     , (803260, 366,         54) /* UseRequiresSkill */
     , (803260, 367,        650) /* UseRequiresSkillLevel */
     , (803260, 368,         54) /* UseRequiresSkillSpec */
     , (803260, 369,       1500) /* UseRequiresLevel */
     , (803260, 370,        500) /* GearDamageRating */
     , (803260, 371,        500) /* GearDamageResistRating */
     , (803260, 372,        500) /* GearCritRating */
     , (803260, 373,        500) /* GearCritResistRating */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803260,  22, True ) /* Inscribable */
     , (803260,  63, False ) /* UnlimitedUse */
     , (803260,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803260,  39,     0.4) /* DefaultScale */
     , (803260, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803260,   1, 'Crystal of Defense Essence') /* Name */
     , (803260,  14, 'This Essence will allow you to summon up to three companions for battle.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803260,   1, 0x02000181) /* Setup */
     , (803260,   3, 0x20000014) /* SoundTable */
     , (803260,   6, 0x04000BEF) /* PaletteBase */
     , (803260,   8, 0x06001B4B) /* Icon */
     , (803260,  22, 0x3400002B) /* PhysicsEffectTable */
     /* , (803260,  50, 0x06006C38) /* IconOverlay */
     , (803260,  52, 0x060011F4) /* IconUnderlay */;
