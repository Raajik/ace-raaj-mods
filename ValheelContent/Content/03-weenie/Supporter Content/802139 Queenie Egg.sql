DELETE FROM `weenie` WHERE `class_Id` = 802139;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802139, 'queenieegg', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802139,   1,        128) /* ItemType - Misc */
     , (802139,   5,         50) /* EncumbranceVal */
     , (802139,  16,          8) /* ItemUseable - Contained */
     , (802139,  19,        600) /* Value */
     , (802139,  33,          1) /* Bonded - Bonded */
     , (802139,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802139,  94,         16) /* TargetType - Creature */
     , (802139, 114,          1) /* Attuned - Attuned */
     , (802139, 266,     802138) /* PetClass - Amelia's Pet Gargoyle */
     , (802139, 280,         60) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802139,  22, True ) /* Inscribable */
     , (802139,  69, False) /* IsSellable */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802139, 167,      60) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802139,   1, 'Queenie Egg') /* Name */
     , (802139,  14, 'Grasp this amulet to summon or dismiss Queenie.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802139,   1,   33557217) /* Setup */
     , (802139,   3,  536870932) /* SoundTable */
     , (802139,   8,  100671764) /* Icon */
     , (802139,  22,  872415275) /* PhysicsEffectTable */;
