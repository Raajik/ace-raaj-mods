DELETE FROM `weenie` WHERE `class_Id` = 801938;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801938, 'Kingdom of Dominion Dragon Pet', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801938,   1,        128) /* ItemType - Misc */
     , (801938,   5,         50) /* EncumbranceVal */
     , (801938,  16,          8) /* ItemUseable - Contained */
     , (801938,  18,          0) /* UiEffects - Fire */
     , (801938,  19,        600) /* Value */
     , (801938,  33,          0) /* Bonded - Normal */
     , (801938,  91,         -1) /* MaxStructure */
     , (801938,  92,         -1) /* Structure */
     , (801938,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801938,  94,         16) /* TargetType - Creature */
     , (801938, 114,          0) /* Attuned - Normal */
     , (801938, 124,          2) /* Version */
     , (801938, 266,     801935) /* PetClass - Black Ice */
     , (801938, 280,        213) /* SharedCooldown */
     , (801938, 362,          3) /* SummoningMastery - Naturalist */
     , (801938, 366,         14) /* UseRequiresSkill */
     , (801938, 367,        700) /* UseRequiresSkillLevel */
     , (801938, 368,         14) /* UseRequiresSkillSpec */
     , (801938, 369,        500) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801938,  22, True ) /* Inscribable */
     , (801938,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801938,  39,     0.4) /* DefaultScale */
     , (801938, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801938,   1, 'Kingdom of Dominion Dragon Pet') /* Name */
     , (801938,  14, 'Use this siphon to summon or dismiss your pet dragon.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801938,   1,   33554817) /* Setup */
     , (801938,   3,  536870932) /* SoundTable */
     , (801938,   6,   67111919) /* PaletteBase */
     , (801938,   8,  100674306) /* Icon */
     , (801938,  22,  872415275) /* PhysicsEffectTable */
     , (801938,  52,  100689896) /* IconUnderlay */;
