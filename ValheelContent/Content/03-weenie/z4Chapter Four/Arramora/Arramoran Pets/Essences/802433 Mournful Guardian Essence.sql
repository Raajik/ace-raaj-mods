DELETE FROM `weenie` WHERE `class_Id` = 802433;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802433, 'MournfulGuardianEssence', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802433,   1,        128) /* ItemType - Misc */
     , (802433,   5,         50) /* EncumbranceVal */
     , (802433,  16,          8) /* ItemUseable - Contained */
     , (802433,  18,         64) /* UiEffects - Fire */
     , (802433,  19,        600) /* Value */
     , (802433,  33,          0) /* Bonded - Normal */
     , (802433,  91,         50) /* MaxStructure */
     , (802433,  92,         50) /* Structure */
     , (802433,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802433,  94,         16) /* TargetType - Creature */
     , (802433, 114,          0) /* Attuned - Normal */
     , (802433, 124,          2) /* Version */
     , (802433, 266,     802431) /* PetClass - Pocket Olthoi */
    /* , (802433, 280,        213) /* SharedCooldown */
     , (802433, 362,          1) /* SummoningMastery - Naturalist */
     , (802433, 366,         54) /* UseRequiresSkill */
     , (802433, 367,        680) /* UseRequiresSkillLevel */
     , (802433, 368,         43) /* UseRequiresSkillSpec */
     , (802433, 369,        600) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802433,  22, True ) /* Inscribable */
     , (802433,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802433,  39,     0.4) /* DefaultScale */
    /* , (802433, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802433,   1, 'Mournful Guardian Essence') /* Name */
     , (802433,  14, 'This Essence will allow you to summon up to three companions for battle.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802433,   1,   33554817) /* Setup */
     , (802433,   3,  536870932) /* SoundTable */
     , (802433,   6,   67111919) /* PaletteBase */
     , (802433,   8,  100677371) /* Icon */
     , (802433,  22,  872415275) /* PhysicsEffectTable */
     , (802433,  50,  100667552) /* IconOverlay */
     , (802433,  52,  100667892) /* IconUnderlay */;
