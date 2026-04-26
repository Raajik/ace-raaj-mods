DELETE FROM `weenie` WHERE `class_Id` = 802085;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802085, 'bluntwand', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802085,   1,      32768) /* ItemType - Caster */
     , (802085,   3,         82) /* PaletteTemplate - PinkPurple */
     , (802085,   5,         50) /* EncumbranceVal */
     , (802085,   8,         25) /* Mass */
     , (802085,   9,   16777216) /* ValidLocations - Held */
     , (802085,  16,          1) /* ItemUseable - No */
     , (802085,  19,     200000) /* Value */
     , (802085,  46,        512) /* DefaultCombatStyle - Magic */
     , (802085,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802085,  94,         16) /* TargetType - Creature */
     , (802085, 150,        103) /* HookPlacement - Hook */
     , (802085, 151,          2) /* HookType - Wall */
     , (802085, 169,   84281091) /* TsysMutationData */
	 , (802085, 179,         32) /* Imbued Effect - Acid Rend */
     , (802085, 353,         12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802085,  11, True ) /* IgnoreCollisions */
     , (802085,  13, True ) /* Ethereal */
     , (802085,  14, True ) /* GravityStatus */
     , (802085,  19, True ) /* Attackable */
     , (802085,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802085,  29,       1) /* WeaponDefense */
     , (802085, 144,       0) /* ManaConversionMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802085,   1, 'Bludgeoning Wand') /* Name */
     , (802085,  14, 'Use this item to cast its spell.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802085,   1,   33554812) /* Setup */
     , (802085,   3,  536870932) /* SoundTable */
     , (802085,   6,   67111919) /* PaletteBase */
     , (802085,   7,  268435758) /* ClothingBase */
     , (802085,   8,  100668792) /* Icon */
     , (802085,  22,  872415275) /* PhysicsEffectTable */
     , (802085,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (802085,  36,  234881046) /* MutateFilter */
     , (802085,  46,  939524144) /* TsysMutationFilter */
	 , (802085,  52,  100676442) /* IconUnderlay */;
