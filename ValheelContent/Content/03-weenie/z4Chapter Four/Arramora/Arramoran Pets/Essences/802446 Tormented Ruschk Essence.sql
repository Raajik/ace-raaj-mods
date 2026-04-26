DELETE FROM `weenie` WHERE `class_Id` = 802446;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802446, 'Tormented Ruschk Essence', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802446,   1,        128) /* ItemType - Misc */
     , (802446,   5,         50) /* EncumbranceVal */
     , (802446,  16,          8) /* ItemUseable - Contained */
     , (802446,  18,         64) /* UiEffects - Fire */
     , (802446,  19,        600) /* Value */
     , (802446,  33,          0) /* Bonded - Normal */
     , (802446,  91,         50) /* MaxStructure */
     , (802446,  92,         50) /* Structure */
     , (802446,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802446,  94,         16) /* TargetType - Creature */
     , (802446, 114,          0) /* Attuned - Normal */
     , (802446, 124,          2) /* Version */
     , (802446, 266,     802443) /* PetClass - Pocket Olthoi */
    /* , (802446, 280,        213) /* SharedCooldown */
     , (802446, 362,          3) /* SummoningMastery - Naturalist */
     , (802446, 366,         54) /* UseRequiresSkill */
     , (802446, 367,        680) /* UseRequiresSkillLevel */
     , (802446, 368,         43) /* UseRequiresSkillSpec */
     , (802446, 369,        600) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802446,  22, True ) /* Inscribable */
     , (802446,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802446,  39,     0.4) /* DefaultScale */
    /* , (802446, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802446,   1, 'Tormented Ruschk Essence') /* Name */
     , (802446,  14, 'This Essence will allow you to summon up to three companions for battle.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802446,   1,   33554817) /* Setup */
     , (802446,   3,  536870932) /* SoundTable */
     , (802446,   6,   67111919) /* PaletteBase */
     , (802446,   8,  100677373) /* Icon */
     , (802446,  22,  872415275) /* PhysicsEffectTable */
     , (802446,  50,  100667552) /* IconOverlay */
     , (802446,  52,  100667892) /* IconUnderlay */;
