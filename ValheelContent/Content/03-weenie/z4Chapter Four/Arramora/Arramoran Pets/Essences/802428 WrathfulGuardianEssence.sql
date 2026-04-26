DELETE FROM `weenie` WHERE `class_Id` = 802428;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802428, 'WrathfulGuardianEssence', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802428,   1,        128) /* ItemType - Misc */
     , (802428,   5,         50) /* EncumbranceVal */
     , (802428,  16,          8) /* ItemUseable - Contained */
     , (802428,  18,         64) /* UiEffects - Fire */
     , (802428,  19,        600) /* Value */
     , (802428,  33,          0) /* Bonded - Normal */
     , (802428,  91,         50) /* MaxStructure */
     , (802428,  92,         50) /* Structure */
     , (802428,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802428,  94,         16) /* TargetType - Creature */
     , (802428, 114,          0) /* Attuned - Normal */
     , (802428, 124,          2) /* Version */
     , (802428, 266,     801337) /* PetClass - Pocket Olthoi */
    /* , (802428, 280,        213) /* SharedCooldown */
     , (802428, 362,          2) /* SummoningMastery - Naturalist */
     , (802428, 366,         54) /* UseRequiresSkill */
     , (802428, 367,        680) /* UseRequiresSkillLevel */
     , (802428, 368,         43) /* UseRequiresSkillSpec */
     , (802428, 369,        600) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802428,  22, True ) /* Inscribable */
     , (802428,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802428,  39,     0.4) /* DefaultScale */
    /* , (802428, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802428,   1, 'Wrathful Guardian Essence') /* Name */
     , (802428,  14, 'This Essence will allow you to summon up to three companions for battle.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802428,   1,   33554817) /* Setup */
     , (802428,   3,  536870932) /* SoundTable */
     , (802428,   6,   67111919) /* PaletteBase */
     , (802428,   8,  100677371) /* Icon */
     , (802428,  22,  872415275) /* PhysicsEffectTable */
     , (802428,  50,  100677371) /* IconOverlay */
     , (802428,  52,  100693024) /* IconUnderlay */;
