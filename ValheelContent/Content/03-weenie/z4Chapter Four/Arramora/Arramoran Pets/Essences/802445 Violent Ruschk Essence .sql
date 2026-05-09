DELETE FROM `weenie` WHERE `class_Id` = 802445;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802445, 'Violent Ruschk Essence', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802445,   1,        128) /* ItemType - Misc */
     , (802445,   5,         50) /* EncumbranceVal */
     , (802445,  16,          8) /* ItemUseable - Contained */
     , (802445,  18,         2) /* UiEffects - Fire */
     , (802445,  19,        600) /* Value */
     , (802445,  33,          0) /* Bonded - Normal */
     , (802445,  91,         50) /* MaxStructure */
     , (802445,  92,         50) /* Structure */
     , (802445,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802445,  94,         16) /* TargetType - Creature */
     , (802445, 114,          0) /* Attuned - Normal */
     , (802445, 124,          2) /* Version */
     , (802445, 266,     802442) /* PetClass - Pocket Olthoi */
    /* , (802445, 280,        213) /* SharedCooldown */
     , (802445, 362,          3) /* SummoningMastery - Naturalist */
     , (802445, 366,         54) /* UseRequiresSkill */
     , (802445, 367,        680) /* UseRequiresSkillLevel */
     , (802445, 368,         43) /* UseRequiresSkillSpec */
     , (802445, 369,        600) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802445,  22, True ) /* Inscribable */
     , (802445,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802445,  39,     0.4) /* DefaultScale */
    /* , (802445, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802445,   1, 'Violent Ruschk Essence') /* Name */
     , (802445,  14, 'This Essence will allow you to summon up to three companions for battle.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802445,   1,   33554817) /* Setup */
     , (802445,   3,  536870932) /* SoundTable */
     , (802445,   6,   67111919) /* PaletteBase */
     , (802445,   8,  100677373) /* Icon */
     , (802445,  22,  872415275) /* PhysicsEffectTable */
     , (802445,  50,  100667552) /* IconOverlay */
     , (802445,  52,  100667892) /* IconUnderlay */;
