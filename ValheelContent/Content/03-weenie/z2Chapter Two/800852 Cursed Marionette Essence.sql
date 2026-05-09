DELETE FROM `weenie` WHERE `class_Id` = 800852;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800852, 'Cursed Marionette Essence', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800852,   1,        128) /* ItemType - Misc */
     , (800852,   5,         50) /* EncumbranceVal */
     , (800852,  16,          8) /* ItemUseable - Contained */
     , (800852,  18,          0) /* UiEffects - Fire */
     , (800852,  19,        600) /* Value */
     , (800852,  33,          0) /* Bonded - Normal */
     , (800852,  91,         50) /* MaxStructure */
     , (800852,  92,         50) /* Structure */
     , (800852,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800852,  94,         16) /* TargetType - Creature */
     , (800852, 114,          0) /* Attuned - Normal */
     , (800852, 124,          2) /* Version */
     , (800852, 266,     800851) /* PetClass - Cursed Marionette */
     , (800852, 280,        213) /* SharedCooldown */
     , (800852, 362,          2) /* SummoningMastery - Naturalist */
     , (800852, 366,         54) /* UseRequiresSkill */
     , (800852, 367,        580) /* UseRequiresSkillLevel */
     , (800852, 368,         54) /* UseRequiresSkillSpec */
     , (800852, 369,        300) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800852,  22, True ) /* Inscribable */
     , (800852,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800852,  39,     0.4) /* DefaultScale */
     , (800852, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800852,   1, 'Cursed Marionette') /* Name */
     , (800852,  14, 'Use this essence to summon or dismiss your Cursed Marionette.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800852,   1,   33554817) /* Setup */
     , (800852,   3,  536870932) /* SoundTable */
     , (800852,   6,   67111919) /* PaletteBase */
     , (800852,   8,  100667450) /* Icon */
     , (800852,  22,  872415275) /* PhysicsEffectTable */
     , (800852,  50,  28708) /* IconOverlay */
     , (800852,  52,  100689896) /* IconUnderlay */;
