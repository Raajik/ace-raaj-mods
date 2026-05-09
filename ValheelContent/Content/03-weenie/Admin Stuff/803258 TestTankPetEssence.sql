DELETE FROM `weenie` WHERE `class_Id` = 803258;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803258, 'TestTankPetEssence', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803258,   1,        128) /* ItemType - Misc */
     , (803258,   5,         50) /* EncumbranceVal */
     , (803258,  16,          8) /* ItemUseable - Contained */
     , (803258,  18,          1) /* UiEffects - Fire */
     , (803258,  19,        600) /* Value */
     , (803258,  33,          0) /* Bonded - Normal */
     , (803258,  91,         50) /* MaxStructure */
     , (803258,  92,         50) /* Structure */
     , (803258,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803258,  94,         16) /* TargetType - Creature */
     , (803258, 114,          0) /* Attuned - Normal */
     , (803258, 124,          2) /* Version */
     , (803258, 266,     803257) /* PetClass - Pocket Olthoi */
    /* , (803258, 280,        213) /* SharedCooldown */
     , (803258, 362,          1) /* SummoningMastery - Naturalist */
     , (803258, 366,         54) /* UseRequiresSkill */
     , (803258, 367,        1000) /* UseRequiresSkillLevel */
     , (803258, 368,         54) /* UseRequiresSkillSpec */
     , (803258, 369,        700) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803258,  22, True ) /* Inscribable */
     , (803258,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803258,  39,     0.4) /* DefaultScale */
    /* , (803258, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803258,   1, 'TestTankPetEssence') /* Name */
     /* , (803258,  14, 'This Essence will allow you to summon up to three companions for battle.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803258,   1,   33554817) /* Setup */
     , (803258,   3,  536870932) /* SoundTable */
     , (803258,   6,   67111919) /* PaletteBase */
     , (803258,   8,  100677371) /* Icon */
     , (803258,  22,  872415275) /* PhysicsEffectTable */
     , (803258,  50,  100691000) /* IconOverlay */
     , (803258,  52,  100667892) /* IconUnderlay */;
