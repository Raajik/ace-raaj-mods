DELETE FROM `weenie` WHERE `class_Id` = 802727;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802727, 'GaerlanDrainRing', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802727,   1,          8) /* ItemType - Jewelry */
     , (802727,   3,          2) /* PaletteTemplate - Blue */
     , (802727,   5,         30) /* EncumbranceVal */
     , (802727,   8,         20) /* Mass */
     , (802727,   9,     786432) /* ValidLocations - FingerWear */
     , (802727,  16,          1) /* ItemUseable - No */
     , (802727,  19,         50) /* Value */
     , (802727,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802727, 169,   33948417) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802727,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802727,  39,     0.5) /* DefaultScale */
     , (802727,  156,      1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802727,   1, 'Gaerlan Drain Ring') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802727,   1,   33554690) /* Setup */
     , (802727,   3,  536870932) /* SoundTable */
     , (802727,   6,   67111919) /* PaletteBase */
     , (802727,   7,  268435754) /* ClothingBase */
     , (802727,   8,  100668562) /* Icon */
     , (802727,  22,  872415275) /* PhysicsEffectTable */
     , (802727,  36,  234881046) /* MutateFilter */
	 , (802727,  55,       6194) /* ProcSpell - Fire Bomb */;
