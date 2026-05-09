DELETE FROM `weenie` WHERE `class_Id` = 803262;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803262, 'Totem of Offense Essence', 70, '2024-01-22 12:01:26') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803262,   1,        128) /* ItemType - Misc */
     , (803262,   5,         50) /* EncumbranceVal */
     , (803262,  16,          8) /* ItemUseable - Contained */
     , (803262,  18,          1) /* UiEffects - Fire */
     , (803262,  19,        600) /* Value */
     , (803262,  33,          0) /* Bonded - Normal */
     , (803262,  91,        100) /* MaxStructure */
     , (803262,  92,        100) /* Structure */
     , (803262,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803262,  94,         16) /* TargetType - Creature */
     , (803262, 114,          0) /* Attuned - Normal */
     , (803262, 124,          2) /* Version */
     , (803262, 266,     803261) /* PetClass - Pocket Olthoi */
     /* , (803262, 280,        900) /* SharedCooldown */
     , (803262, 362,          1) /* SummoningMastery - Naturalist */
     , (803262, 366,         54) /* UseRequiresSkill */
     , (803262, 367,        650) /* UseRequiresSkillLevel */
     , (803262, 368,         54) /* UseRequiresSkillSpec */
     , (803262, 369,        275) /* UseRequiresLevel */
     , (803262, 370,        450) /* GearDamageRating */
     , (803262, 371,        450) /* GearDamageResistRating */
     , (803262, 372,        450) /* GearCritRating */
     , (803262, 373,        450) /* GearCritResistRating */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803262,  22, True ) /* Inscribable */
     , (803262,  63, False ) /* UnlimitedUse */
     , (803262,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803262,  39,     0.4) /* DefaultScale */
     , (803262, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803262,   1, 'Crystal of Offense Essence') /* Name */
     , (803262,  14, 'This Essence will allow you to summon up to three companions for battle.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803262,   1, 0x02000181) /* Setup */
     , (803262,   3, 0x20000014) /* SoundTable */
     , (803262,   6, 0x04000BEF) /* PaletteBase */
     , (803262,   8, 0x06001B4B) /* Icon */
     , (803262,  22, 0x3400002B) /* PhysicsEffectTable */
     /* , (803262,  50, 0x06006C38) /* IconOverlay */
     , (803262,  52, 0x060011F4) /* IconUnderlay */;
