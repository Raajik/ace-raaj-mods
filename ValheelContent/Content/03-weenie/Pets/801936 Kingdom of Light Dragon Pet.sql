DELETE FROM `weenie` WHERE `class_Id` = 801936;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801936, 'Kingdom of Light Dragon Pet', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801936,   1,        128) /* ItemType - Misc */
     , (801936,   5,         50) /* EncumbranceVal */
     , (801936,  16,          8) /* ItemUseable - Contained */
     , (801936,  18,          0) /* UiEffects - Fire */
     , (801936,  19,        600) /* Value */
     , (801936,  33,          0) /* Bonded - Normal */
     , (801936,  91,         -1) /* MaxStructure */
     , (801936,  92,         -1) /* Structure */
     , (801936,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801936,  94,         16) /* TargetType - Creature */
     , (801936, 114,          0) /* Attuned - Normal */
     , (801936, 124,          2) /* Version */
     , (801936, 266,     801933) /* PetClass - Black Ice */
     , (801936, 280,        213) /* SharedCooldown */
     , (801936, 362,          3) /* SummoningMastery - Naturalist */
     , (801936, 366,         14) /* UseRequiresSkill */
     , (801936, 367,        700) /* UseRequiresSkillLevel */
     , (801936, 368,         14) /* UseRequiresSkillSpec */
     , (801936, 369,        500) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801936,  22, True ) /* Inscribable */
     , (801936,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801936,  39,     0.4) /* DefaultScale */
     , (801936, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801936,   1, 'Kingdom of Light Dragon Pet') /* Name */
     , (801936,  14, 'Use this siphon to summon or dismiss your pet dragon.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801936,   1,   33554817) /* Setup */
     , (801936,   3,  536870932) /* SoundTable */
     , (801936,   6,   67111919) /* PaletteBase */
     , (801936,   8,  100674306) /* Icon */
     , (801936,  22,  872415275) /* PhysicsEffectTable */
     , (801936,  52,  100689896) /* IconUnderlay */;
