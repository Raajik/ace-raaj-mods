DELETE FROM `weenie` WHERE `class_Id` = 802087;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802087, 'frostwand', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802087,   1,      32768) /* ItemType - Caster */
     , (802087,   3,         82) /* PaletteTemplate - PinkPurple */
     , (802087,   5,         50) /* EncumbranceVal */
     , (802087,   8,         25) /* Mass */
     , (802087,   9,   16777216) /* ValidLocations - Held */
     , (802087,  16,          1) /* ItemUseable - No */
     , (802087,  19,     200000) /* Value */
     , (802087,  46,        512) /* DefaultCombatStyle - Magic */
     , (802087,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802087,  94,         16) /* TargetType - Creature */
     , (802087, 150,        103) /* HookPlacement - Hook */
     , (802087, 151,          2) /* HookType - Wall */
     , (802087, 169,   84281091) /* TsysMutationData */
	 , (802087, 179,        128) /* Imbued Effect - Acid Rend */
     , (802087, 353,         12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802087,  11, True ) /* IgnoreCollisions */
     , (802087,  13, True ) /* Ethereal */
     , (802087,  14, True ) /* GravityStatus */
     , (802087,  19, True ) /* Attackable */
     , (802087,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802087,  29,       1) /* WeaponDefense */
     , (802087, 144,       0) /* ManaConversionMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802087,   1, 'Frost Wand') /* Name */
     , (802087,  14, 'Use this item to cast its spell.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802087,   1,   33554812) /* Setup */
     , (802087,   3,  536870932) /* SoundTable */
     , (802087,   6,   67111919) /* PaletteBase */
     , (802087,   7,  268435758) /* ClothingBase */
     , (802087,   8,  100668792) /* Icon */
     , (802087,  22,  872415275) /* PhysicsEffectTable */
     , (802087,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (802087,  36,  234881046) /* MutateFilter */
     , (802087,  46,  939524144) /* TsysMutationFilter */
	 , (802087,  52,  100676435) /* IconUnderlay */;
