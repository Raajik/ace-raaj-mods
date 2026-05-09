DELETE FROM `weenie` WHERE `class_Id` = 802432;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802432, 'VengefulGuardianEssence', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802432,   1,        128) /* ItemType - Misc */
     , (802432,   5,         50) /* EncumbranceVal */
     , (802432,  16,          8) /* ItemUseable - Contained */
     , (802432,  18,          2) /* UiEffects - Fire */
     , (802432,  19,        600) /* Value */
     , (802432,  33,          0) /* Bonded - Normal */
     , (802432,  91,         50) /* MaxStructure */
     , (802432,  92,         50) /* Structure */
     , (802432,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802432,  94,         16) /* TargetType - Creature */
     , (802432, 114,          0) /* Attuned - Normal */
     , (802432, 124,          2) /* Version */
     , (802432, 266,     802430) /* PetClass - Pocket Olthoi */
    /* , (802432, 280,        213) /* SharedCooldown */
     , (802432, 362,          1) /* SummoningMastery - Naturalist */
     , (802432, 366,         54) /* UseRequiresSkill */
     , (802432, 367,        680) /* UseRequiresSkillLevel */
     , (802432, 368,         43) /* UseRequiresSkillSpec */
     , (802432, 369,        600) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802432,  22, True ) /* Inscribable */
     , (802432,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802432,  39,     0.4) /* DefaultScale */
    /* , (802432, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802432,   1, 'Vengeful Guardian Essence') /* Name */
     , (802432,  14, 'This Essence will allow you to summon up to three companions for battle.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802432,   1,   33554817) /* Setup */
     , (802432,   3,  536870932) /* SoundTable */
     , (802432,   6,   67111919) /* PaletteBase */
     , (802432,   8,  100677371) /* Icon */
     , (802432,  22,  872415275) /* PhysicsEffectTable */
     , (802432,  50,  100667552) /* IconOverlay */
     , (802432,  52,  100667892) /* IconUnderlay */;
