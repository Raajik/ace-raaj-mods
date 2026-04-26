DELETE FROM `weenie` WHERE `class_Id` = 801287;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801287, 'Coffee''less Elorin Essence', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801287,   1,        128) /* ItemType - Misc */
     , (801287,   5,         50) /* EncumbranceVal */
     , (801287,  16,          8) /* ItemUseable - Contained */
     , (801287,  18,          0) /* UiEffects - Fire */
     , (801287,  19,        600) /* Value */
     , (801287,  33,          0) /* Bonded - Normal */
     , (801287,  91,         50) /* MaxStructure */
     , (801287,  92,         50) /* Structure */
     , (801287,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801287,  94,         16) /* TargetType - Creature */
     , (801287, 114,          0) /* Attuned - Normal */
     , (801287, 124,          2) /* Version */
     , (801287, 266,     801288) /* PetClass - Cursed Marionette */
     , (801287, 280,        213) /* SharedCooldown */
     , (801287, 362,          1) /* SummoningMastery - Naturalist */
     , (801287, 366,         54) /* UseRequiresSkill */
     , (801287, 367,        580) /* UseRequiresSkillLevel */
     , (801287, 368,         54) /* UseRequiresSkillSpec */
     , (801287, 369,        300) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801287,  22, True ) /* Inscribable */
     , (801287,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801287,  39,     0.4) /* DefaultScale */
     , (801287, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801287,   1, 'Coffee''Less Elorin Essence') /* Name */
     , (801287,  14, 'Use this essence to summon or dismiss your Coffee''Less Elorin.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801287,   1,   33554817) /* Setup */
     , (801287,   3,  536870932) /* SoundTable */
     , (801287,   6,   67111919) /* PaletteBase */
     , (801287,   8,  100667450) /* Icon */
     , (801287,  22,  872415275) /* PhysicsEffectTable */
     , (801287,  50,  25180) /* IconOverlay */
     , (801287,  52,  100689896) /* IconUnderlay */;
