DELETE FROM `weenie` WHERE `class_Id` = 800227;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800227, 'hue knight essence', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800227,   1,        128) /* ItemType - Misc */
     , (800227,   5,         50) /* EncumbranceVal */
     , (800227,  16,          8) /* ItemUseable - Contained */
     , (800227,  18,         32) /* UiEffects - Fire */
     , (800227,  19,      10000) /* Value */
     , (800227,  33,          0) /* Bonded - Normal */
     , (800227,  91,         50) /* MaxStructure */
     , (800227,  92,         50) /* Structure */
     , (800227,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800227,  94,         16) /* TargetType - Creature */
     , (800227, 114,          0) /* Attuned - Normal */
     , (800227, 124,          2) /* Version */
     , (800227, 266,     800228) /* PetClass - Hue Knight */
     , (800227, 280,        213) /* SharedCooldown */
     , (800227, 362,          3) /* SummoningMastery - Naturalist */
     , (800227, 366,         54) /* UseRequiresSkill */
     , (800227, 367,        580) /* UseRequiresSkillLevel */
     , (800227, 368,         54) /* UseRequiresSkillSpec */
     , (800227, 369,        275) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800227,  22, True ) /* Inscribable */
     , (800227,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800227,  39,     0.4) /* DefaultScale */
     , (800227, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800227,   1, 'Hue Knight Essence') /* Name */
     , (800227,  14, 'Use this essence to summon or dismiss the Hue Knight.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800227,   1,   33554817) /* Setup */
     , (800227,   3,  536870932) /* SoundTable */
     , (800227,   6,   67111919) /* PaletteBase */
     , (800227,   8,  100667450) /* Icon */
     , (800227,  22,  872415275) /* PhysicsEffectTable */
     , (800227,  50,  100693032) /* IconOverlay */
     , (800227,  52,  100693024) /* IconUnderlay */;
