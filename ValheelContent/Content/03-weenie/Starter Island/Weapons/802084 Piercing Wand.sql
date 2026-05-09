DELETE FROM `weenie` WHERE `class_Id` = 802084;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802084, 'piercewand', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802084,   1,      32768) /* ItemType - Caster */
     , (802084,   3,         82) /* PaletteTemplate - PinkPurple */
     , (802084,   5,         50) /* EncumbranceVal */
     , (802084,   8,         25) /* Mass */
     , (802084,   9,   16777216) /* ValidLocations - Held */
     , (802084,  16,          1) /* ItemUseable - No */
     , (802084,  19,     200000) /* Value */
     , (802084,  46,        512) /* DefaultCombatStyle - Magic */
     , (802084,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802084,  94,         16) /* TargetType - Creature */
     , (802084, 150,        103) /* HookPlacement - Hook */
     , (802084, 151,          2) /* HookType - Wall */
     , (802084, 169,   84281091) /* TsysMutationData */
	 , (802084, 179,         16) /* Imbued Effect - Acid Rend */
     , (802084, 353,         12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802084,  11, True ) /* IgnoreCollisions */
     , (802084,  13, True ) /* Ethereal */
     , (802084,  14, True ) /* GravityStatus */
     , (802084,  19, True ) /* Attackable */
     , (802084,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802084,  29,       1) /* WeaponDefense */
     , (802084, 144,       0) /* ManaConversionMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802084,   1, 'Piercing Wand') /* Name */
     , (802084,  14, 'Use this item to cast its spell.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802084,   1,   33554812) /* Setup */
     , (802084,   3,  536870932) /* SoundTable */
     , (802084,   6,   67111919) /* PaletteBase */
     , (802084,   7,  268435758) /* ClothingBase */
     , (802084,   8,  100668792) /* Icon */
     , (802084,  22,  872415275) /* PhysicsEffectTable */
     , (802084,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (802084,  36,  234881046) /* MutateFilter */
     , (802084,  46,  939524144) /* TsysMutationFilter */
	 , (802084,  52,  100676443) /* IconUnderlay */;
