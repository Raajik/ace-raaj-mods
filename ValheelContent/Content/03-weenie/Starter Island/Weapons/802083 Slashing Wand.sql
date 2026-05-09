DELETE FROM `weenie` WHERE `class_Id` = 802083;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802083, 'slashwand', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802083,   1,      32768) /* ItemType - Caster */
     , (802083,   3,         82) /* PaletteTemplate - PinkPurple */
     , (802083,   5,         50) /* EncumbranceVal */
     , (802083,   8,         25) /* Mass */
     , (802083,   9,   16777216) /* ValidLocations - Held */
     , (802083,  16,          1) /* ItemUseable - No */
     , (802083,  19,     200000) /* Value */
     , (802083,  46,        512) /* DefaultCombatStyle - Magic */
     , (802083,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802083,  94,         16) /* TargetType - Creature */
     , (802083, 150,        103) /* HookPlacement - Hook */
     , (802083, 151,          2) /* HookType - Wall */
     , (802083, 169,   84281091) /* TsysMutationData */
	 , (802083, 179,          8) /* Imbued Effect - Acid Rend */
     , (802083, 353,         12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802083,  11, True ) /* IgnoreCollisions */
     , (802083,  13, True ) /* Ethereal */
     , (802083,  14, True ) /* GravityStatus */
     , (802083,  19, True ) /* Attackable */
     , (802083,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802083,  29,       1) /* WeaponDefense */
     , (802083, 144,       0) /* ManaConversionMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802083,   1, 'Slashing Wand') /* Name */
     , (802083,  14, 'Use this item to cast its spell.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802083,   1,   33554812) /* Setup */
     , (802083,   3,  536870932) /* SoundTable */
     , (802083,   6,   67111919) /* PaletteBase */
     , (802083,   7,  268435758) /* ClothingBase */
     , (802083,   8,  100668792) /* Icon */
     , (802083,  22,  872415275) /* PhysicsEffectTable */
     , (802083,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (802083,  36,  234881046) /* MutateFilter */
     , (802083,  46,  939524144) /* TsysMutationFilter */
	 , (802083,  52,  100676444) /* IconUnderlay */;
