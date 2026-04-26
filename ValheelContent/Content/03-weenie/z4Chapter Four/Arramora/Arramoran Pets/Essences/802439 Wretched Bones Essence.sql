DELETE FROM `weenie` WHERE `class_Id` = 802439;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802439, 'Wretched Boned Essence', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802439,   1,        128) /* ItemType - Misc */
     , (802439,   5,         50) /* EncumbranceVal */
     , (802439,  16,          8) /* ItemUseable - Contained */
     , (802439,  18,         2) /* UiEffects - Fire */
     , (802439,  19,        600) /* Value */
     , (802439,  33,          0) /* Bonded - Normal */
     , (802439,  91,         50) /* MaxStructure */
     , (802439,  92,         50) /* Structure */
     , (802439,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802439,  94,         16) /* TargetType - Creature */
     , (802439, 114,          0) /* Attuned - Normal */
     , (802439, 124,          2) /* Version */
     , (802439, 266,     802437) /* PetClass - Pocket Olthoi */
    /* , (802439, 280,        213) /* SharedCooldown */
     , (802439, 362,          2) /* SummoningMastery - Naturalist */
     , (802439, 366,         54) /* UseRequiresSkill */
     , (802439, 367,        680) /* UseRequiresSkillLevel */
     , (802439, 368,         43) /* UseRequiresSkillSpec */
     , (802439, 369,        600) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802439,  22, True ) /* Inscribable */
     , (802439,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802439,  39,     0.4) /* DefaultScale */
    /* , (802439, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802439,   1, 'Wretched Boned Essence') /* Name */
     , (802439,  14, 'This Essence will allow you to summon up to three companions for battle.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802439,   1,   33554817) /* Setup */
     , (802439,   3,  536870932) /* SoundTable */
     , (802439,   6,   67111919) /* PaletteBase */
     , (802439,   8,  100669124) /* Icon */
     , (802439,  22,  872415275) /* PhysicsEffectTable */
     , (802439,  50,  100667552) /* IconOverlay */
     , (802439,  52,  100667892) /* IconUnderlay */;
