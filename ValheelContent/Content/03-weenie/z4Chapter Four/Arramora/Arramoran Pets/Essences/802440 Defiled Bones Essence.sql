DELETE FROM `weenie` WHERE `class_Id` = 802440;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802440, 'Defiled Boned Essence', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802440,   1,        128) /* ItemType - Misc */
     , (802440,   5,         50) /* EncumbranceVal */
     , (802440,  16,          8) /* ItemUseable - Contained */
     , (802440,  18,         1) /* UiEffects - Fire */
     , (802440,  19,        600) /* Value */
     , (802440,  33,          0) /* Bonded - Normal */
     , (802440,  91,         50) /* MaxStructure */
     , (802440,  92,         50) /* Structure */
     , (802440,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802440,  94,         16) /* TargetType - Creature */
     , (802440, 114,          0) /* Attuned - Normal */
     , (802440, 124,          2) /* Version */
     , (802440, 266,     802438) /* PetClass - Pocket Olthoi */
    /* , (802440, 280,        213) /* SharedCooldown */
     , (802440, 362,          2) /* SummoningMastery - Naturalist */
     , (802440, 366,         54) /* UseRequiresSkill */
     , (802440, 367,        680) /* UseRequiresSkillLevel */
     , (802440, 368,         43) /* UseRequiresSkillSpec */
     , (802440, 369,        600) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802440,  22, True ) /* Inscribable */
     , (802440,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802440,  39,     0.4) /* DefaultScale */
    /* , (802440, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802440,   1, 'Defiled Boned Essence') /* Name */
     , (802440,  14, 'This Essence will allow you to summon up to three companions for battle.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802440,   1,   33554817) /* Setup */
     , (802440,   3,  536870932) /* SoundTable */
     , (802440,   6,   67111919) /* PaletteBase */
     , (802440,   8,  100669124) /* Icon */
     , (802440,  22,  872415275) /* PhysicsEffectTable */
     , (802440,  50,  100667552) /* IconOverlay */
     , (802440,  52,  100667892) /* IconUnderlay */;
