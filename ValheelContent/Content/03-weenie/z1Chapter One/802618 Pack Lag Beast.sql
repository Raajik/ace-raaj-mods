DELETE FROM `weenie` WHERE `class_Id` = 802618;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802618, 'ace802618-packlagbeast', 1, '2021-08-19 13:30:34') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802618,   1,       2048) /* ItemType - Gem */
     , (802618,   3,         20) /* PaletteTemplate - Silver */
     , (802618,   5,         10) /* EncumbranceVal */
     , (802618,   8,         10) /* Mass */
     , (802618,   9,          0) /* ValidLocations - None */
     , (802618,  16,          1) /* ItemUseable - No */
     , (802618,  19,         10) /* Value */
     , (802618,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802618,  94,         16) /* TargetType - Creature */
     , (802618, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802618,  22, True ) /* Inscribable */
     , (802618,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802618,  12,     0.5) /* Shade */
     , (802618,  39,     0.4) /* DefaultScale */
     , (802618,  44,      -1) /* TimeToRot */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802618,   1, 'Pack Lag Beast') /* Name */
     , (802618,  16, 'This is probably the most interesting of Pack Dolls, using genuine illusion spells to simulate the look of the legendary Lag Beast of Dereth!') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802618,   1,   33556211) /* Setup */
     , (802618,   2,  150994993) /* MotionTable */
     , (802618,   6,   67113135) /* PaletteBase */
     , (802618,   7,  268436135) /* ClothingBase */
     , (802618,   8,  100670285) /* Icon */
     , (802618,  22,  872415274) /* PhysicsEffectTable */
     , (802618,  36,  234881046) /* MutateFilter */;
