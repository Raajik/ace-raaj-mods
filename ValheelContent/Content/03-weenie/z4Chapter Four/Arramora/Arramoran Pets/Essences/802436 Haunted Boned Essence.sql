DELETE FROM `weenie` WHERE `class_Id` = 802436;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802436, 'Haunted Boned Essence', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802436,   1,        128) /* ItemType - Misc */
     , (802436,   5,         50) /* EncumbranceVal */
     , (802436,  16,          8) /* ItemUseable - Contained */
     , (802436,  18,         64) /* UiEffects - Fire */
     , (802436,  19,        600) /* Value */
     , (802436,  33,          0) /* Bonded - Normal */
     , (802436,  91,         50) /* MaxStructure */
     , (802436,  92,         50) /* Structure */
     , (802436,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802436,  94,         16) /* TargetType - Creature */
     , (802436, 114,          0) /* Attuned - Normal */
     , (802436, 124,          2) /* Version */
     , (802436, 266,     802435) /* PetClass - Pocket Olthoi */
    /* , (802436, 280,        213) /* SharedCooldown */
     , (802436, 362,          2) /* SummoningMastery - Naturalist */
     , (802436, 366,         54) /* UseRequiresSkill */
     , (802436, 367,        680) /* UseRequiresSkillLevel */
     , (802436, 368,         43) /* UseRequiresSkillSpec */
     , (802436, 369,        600) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802436,  22, True ) /* Inscribable */
     , (802436,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802436,  39,     0.4) /* DefaultScale */
    /* , (802436, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802436,   1, 'Haunted Boned Essence') /* Name */
     , (802436,  14, 'This Essence will allow you to summon up to three companions for battle.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802436,   1,   33554817) /* Setup */
     , (802436,   3,  536870932) /* SoundTable */
     , (802436,   6,   67111919) /* PaletteBase */
     , (802436,   8,  100669124) /* Icon */
     , (802436,  22,  872415275) /* PhysicsEffectTable */
     , (802436,  50,  100667552) /* IconOverlay */
     , (802436,  52,  100667892) /* IconUnderlay */;
