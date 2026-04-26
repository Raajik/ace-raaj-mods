DELETE FROM `weenie` WHERE `class_Id` = 802088;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802088, 'electricwand', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802088,   1,      32768) /* ItemType - Caster */
     , (802088,   3,         82) /* PaletteTemplate - PinkPurple */
     , (802088,   5,         50) /* EncumbranceVal */
     , (802088,   8,         25) /* Mass */
     , (802088,   9,   16777216) /* ValidLocations - Held */
     , (802088,  16,          1) /* ItemUseable - No */
     , (802088,  19,     200000) /* Value */
     , (802088,  46,        512) /* DefaultCombatStyle - Magic */
     , (802088,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802088,  94,         16) /* TargetType - Creature */
     , (802088, 150,        103) /* HookPlacement - Hook */
     , (802088, 151,          2) /* HookType - Wall */
     , (802088, 169,   84281091) /* TsysMutationData */
	 , (802088, 179,        256) /* Imbued Effect - Acid Rend */
     , (802088, 353,         12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802088,  11, True ) /* IgnoreCollisions */
     , (802088,  13, True ) /* Ethereal */
     , (802088,  14, True ) /* GravityStatus */
     , (802088,  19, True ) /* Attackable */
     , (802088,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802088,  29,       1) /* WeaponDefense */
     , (802088, 144,       0) /* ManaConversionMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802088,   1, 'Electric Wand') /* Name */
     , (802088,  14, 'Use this item to cast its spell.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802088,   1,   33554812) /* Setup */
     , (802088,   3,  536870932) /* SoundTable */
     , (802088,   6,   67111919) /* PaletteBase */
     , (802088,   7,  268435758) /* ClothingBase */
     , (802088,   8,  100668792) /* Icon */
     , (802088,  22,  872415275) /* PhysicsEffectTable */
     , (802088,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (802088,  36,  234881046) /* MutateFilter */
     , (802088,  46,  939524144) /* TsysMutationFilter */
	 , (802088,  52,  100676436) /* IconUnderlay */;
