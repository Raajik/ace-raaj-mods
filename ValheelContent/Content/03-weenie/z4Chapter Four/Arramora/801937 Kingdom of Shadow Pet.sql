DELETE FROM `weenie` WHERE `class_Id` = 801937;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801937, 'Kingdom of Shadow Dragon Pet', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801937,   1,        128) /* ItemType - Misc */
     , (801937,   5,         50) /* EncumbranceVal */
     , (801937,  16,          8) /* ItemUseable - Contained */
     , (801937,  18,          0) /* UiEffects - Fire */
     , (801937,  19,        600) /* Value */
     , (801937,  33,          0) /* Bonded - Normal */
     , (801937,  91,         -1) /* MaxStructure */
     , (801937,  92,         -1) /* Structure */
     , (801937,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801937,  94,         16) /* TargetType - Creature */
     , (801937, 114,          0) /* Attuned - Normal */
     , (801937, 124,          2) /* Version */
     , (801937, 266,     801934) /* PetClass - Black Ice */
     , (801937, 280,        213) /* SharedCooldown */
     , (801937, 362,          3) /* SummoningMastery - Naturalist */
     , (801937, 366,         14) /* UseRequiresSkill */
     , (801937, 367,        700) /* UseRequiresSkillLevel */
     , (801937, 368,         14) /* UseRequiresSkillSpec */
     , (801937, 369,        500) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801937,  22, True ) /* Inscribable */
     , (801937,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801937,  39,     0.4) /* DefaultScale */
     , (801937, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801937,   1, 'Kingdom of Shadow Dragon Pet') /* Name */
     , (801937,  14, 'Use this siphon to summon or dismiss your pet dragon.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801937,   1,   33554817) /* Setup */
     , (801937,   3,  536870932) /* SoundTable */
     , (801937,   6,   67111919) /* PaletteBase */
     , (801937,   8,  100674306) /* Icon */
     , (801937,  22,  872415275) /* PhysicsEffectTable */
     , (801937,  52,  100689896) /* IconUnderlay */;
