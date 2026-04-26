DELETE FROM `weenie` WHERE `class_Id` = 300014;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300014, 'testessence', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300014,   1,        128) /* ItemType - Misc */
     , (300014,   5,         50) /* EncumbranceVal */
     , (300014,  16,          8) /* ItemUseable - Contained */
     , (300014,  18,         32) /* UiEffects - Fire */
     , (300014,  19,        600) /* Value */
     , (300014,  33,          0) /* Bonded - Normal */
     , (300014,  91,         50) /* MaxStructure */
     , (300014,  92,         50) /* Structure */
     , (300014,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (300014,  94,         16) /* TargetType - Creature */
     , (300014, 114,          0) /* Attuned - Normal */
     , (300014, 124,          2) /* Version */
     , (300014, 266,     300016) /* PetClass - testPet */
     , (300014, 280,        213) /* SharedCooldown */
     , (300014, 362,          3) /* SummoningMastery - Naturalist */
     , (300014, 366,         54) /* UseRequiresSkill */
     , (300014, 367,        580) /* UseRequiresSkillLevel */
     , (300014, 368,         54) /* UseRequiresSkillSpec */
     , (300014, 369,        300) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300014,  22, True ) /* Inscribable */
     , (300014,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300014,  39,     0.4) /* DefaultScale */
     , (300014, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300014,   1, 'Pocket Olthoi') /* Name */
     , (300014,  14, 'Use this essence to summon or dismiss your Pocket Olthoi.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300014,   1,   33554817) /* Setup */
     , (300014,   3,  536870932) /* SoundTable */
     , (300014,   6,   67111919) /* PaletteBase */
     , (300014,   8,  100667450) /* Icon */
     , (300014,  22,  872415275) /* PhysicsEffectTable */
     , (300014,  50,  26325) /* IconOverlay */
     , (300014,  52,  100693024) /* IconUnderlay */;
