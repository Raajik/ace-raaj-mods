DELETE FROM `weenie` WHERE `class_Id` = 800101;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800101, 'corrodeddirelandstablet', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800101,   1,        128) /* ItemType - Misc */
     , (800101,   3,         83) /* PaletteTemplate - Amber */
     , (800101,   5,          1) /* EncumbranceVal */
     , (800101,  11,          1) /* MaxStackSize */
     , (800101,  12,          1) /* StackSize */
     , (800101,  13,          1) /* StackUnitEncumbrance */
     , (800101,  15,          1) /* StackUnitValue */
     , (800101,  16,          1) /* ItemUseable - No */
     , (800101,  19,          1) /* Value */
     , (800101,  33,          1) /* Bonded - Bonded */
     , (800101,  65,        101) /* Placement - Resting */
     , (800101,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800101, 114,          2) /* Attuned - Attuned */
     , (800101, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800101,   1, False) /* Stuck */
     , (800101,  11, True ) /* IgnoreCollisions */
     , (800101,  13, True ) /* Ethereal */
     , (800101,  14, True ) /* GravityStatus */
     , (800101,  19, True ) /* Attackable */
     , (800101,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800101,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800101,   1, 'Corroded Direlands Tablet') /* Name */
     , (800101,  15, 'Fort Tethana Gate Sentry - URGENT! We are under siege by a swarm of infected olthoi! Please send help as soon as possible!') /* ShortDesc */
     , (800101,  33, 'CorrodedDirelandsTablet') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800101,   1,   33561255) /* Setup */
     , (800101,   3,  536870932) /* SoundTable */
     , (800101,   8,  100691956) /* Icon */
     , (800101,  22,  872415275) /* PhysicsEffectTable */;
