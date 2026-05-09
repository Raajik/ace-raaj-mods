DELETE FROM `weenie` WHERE `class_Id` = 802444;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802444, 'Viscious Ruschk Essence', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802444,   1,        128) /* ItemType - Misc */
     , (802444,   5,         50) /* EncumbranceVal */
     , (802444,  16,          8) /* ItemUseable - Contained */
     , (802444,  18,         1) /* UiEffects - Fire */
     , (802444,  19,        600) /* Value */
     , (802444,  33,          0) /* Bonded - Normal */
     , (802444,  91,         50) /* MaxStructure */
     , (802444,  92,         50) /* Structure */
     , (802444,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802444,  94,         16) /* TargetType - Creature */
     , (802444, 114,          0) /* Attuned - Normal */
     , (802444, 124,          2) /* Version */
     , (802444, 266,     802441) /* PetClass - Pocket Olthoi */
    /* , (802444, 280,        213) /* SharedCooldown */
     , (802444, 362,          3) /* SummoningMastery - Naturalist */
     , (802444, 366,         54) /* UseRequiresSkill */
     , (802444, 367,        680) /* UseRequiresSkillLevel */
     , (802444, 368,         43) /* UseRequiresSkillSpec */
     , (802444, 369,        600) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802444,  22, True ) /* Inscribable */
     , (802444,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802444,  39,     0.4) /* DefaultScale */
    /* , (802444, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802444,   1, 'Viscious Ruschk Essence') /* Name */
     , (802444,  14, 'This Essence will allow you to summon up to three companions for battle.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802444,   1,   33554817) /* Setup */
     , (802444,   3,  536870932) /* SoundTable */
     , (802444,   6,   67111919) /* PaletteBase */
     , (802444,   8,  100677373) /* Icon */
     , (802444,  22,  872415275) /* PhysicsEffectTable */
     , (802444,  50,  100667552) /* IconOverlay */
     , (802444,  52,  100667892) /* IconUnderlay */;
