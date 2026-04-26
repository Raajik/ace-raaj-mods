DELETE FROM `weenie` WHERE `class_Id` = 802312;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802312, 'Trip Essence', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802312,   1,        128) /* ItemType - Misc */
     , (802312,   5,         50) /* EncumbranceVal */
     , (802312,  16,          8) /* ItemUseable - Contained */
     , (802312,  18,          0) /* UiEffects - Fire */
     , (802312,  19,        600) /* Value */
     , (802312,  33,          0) /* Bonded - Normal */
     , (802312,  91,         50) /* MaxStructure */
     , (802312,  92,         50) /* Structure */
     , (802312,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802312,  94,         16) /* TargetType - Creature */
     , (802312, 114,          0) /* Attuned - Normal */
     , (802312, 124,          2) /* Version */
     , (802312, 266,     802311) /* PetClass - Cursed Marionette */
     , (802312, 362,          1) /* SummoningMastery - Naturalist */
     , (802312, 366,         54) /* UseRequiresSkill */
     , (802312, 367,        580) /* UseRequiresSkillLevel */
     , (802312, 368,         54) /* UseRequiresSkillSpec */
     , (802312, 369,        300) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802312,  22, True ) /* Inscribable */
     , (802312,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802312,  39,     0.4) /* DefaultScale */
     , (802312, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802312,   1, 'Trip Essence') /* Name */
     , (802312,  14, 'Use this essence to summon or dismiss Trip.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802312,   1,   33554817) /* Setup */
     , (802312,   3,  536870932) /* SoundTable */
     , (802312,   6,   67111919) /* PaletteBase */
     , (802312,   8,  100672513) /* Icon */
     , (802312,  22,  872415275) /* PhysicsEffectTable */
     , (802312,  50,  100672513) /* IconOverlay */
     , (802312,  52,  100689896) /* IconUnderlay */;
