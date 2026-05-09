DELETE FROM `weenie` WHERE `class_Id` = 801798;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801798, 'Nether Turret Siphon', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801798,   1,        128) /* ItemType - Misc */
     , (801798,   5,         50) /* EncumbranceVal */
     , (801798,  16,          8) /* ItemUseable - Contained */
     , (801798,  18,          0) /* UiEffects - Fire */
     , (801798,  19,        600) /* Value */
     , (801798,  33,          0) /* Bonded - Normal */
     , (801798,  91,         100) /* MaxStructure */
     , (801798,  92,         100) /* Structure */
     , (801798,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801798,  94,         16) /* TargetType - Creature */
     , (801798, 114,          0) /* Attuned - Normal */
     , (801798, 124,          2) /* Version */
     , (801798, 266,     801797) /* PetClass - Black Ice */
     , (801798, 280,        213) /* SharedCooldown */
     , (801798, 362,          3) /* SummoningMastery - Naturalist */
     , (801798, 366,         43) /* UseRequiresSkill */
     , (801798, 367,       1000) /* UseRequiresSkillLevel */
     , (801798, 368,         43) /* UseRequiresSkillSpec */
     , (801798, 369,        500) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801798,  22, True ) /* Inscribable */
     , (801798,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801798,  39,     0.4) /* DefaultScale */
     , (801798, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801798,   1, 'Nether Turret Siphon') /* Name */
     , (801798,  14, 'Use this siphon to summon or dismiss Nether Turret.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801798,   1,   33554817) /* Setup */
     , (801798,   3,  536870932) /* SoundTable */
     , (801798,   6,   67111919) /* PaletteBase */
     , (801798,   8,  100690733) /* Icon */
     , (801798,  22,  872415275) /* PhysicsEffectTable */
     /* , (801798,  50,      26326) /* IconOverlay */
     , (801798,  52,  100689896) /* IconUnderlay */;
