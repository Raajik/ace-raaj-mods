DELETE FROM `weenie` WHERE `class_Id` = 802086;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802086, 'acidwand', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802086,   1,      32768) /* ItemType - Caster */
     , (802086,   3,         82) /* PaletteTemplate - PinkPurple */
     , (802086,   5,         50) /* EncumbranceVal */
     , (802086,   8,         25) /* Mass */
     , (802086,   9,   16777216) /* ValidLocations - Held */
     , (802086,  16,          1) /* ItemUseable - No */
     , (802086,  19,     200000) /* Value */
     , (802086,  46,        512) /* DefaultCombatStyle - Magic */
     , (802086,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802086,  94,         16) /* TargetType - Creature */
     , (802086, 150,        103) /* HookPlacement - Hook */
     , (802086, 151,          2) /* HookType - Wall */
     , (802086, 169,   84281091) /* TsysMutationData */
	 , (802086, 179,         64) /* Imbued Effect - Acid Rend */
     , (802086, 353,         12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802086,  11, True ) /* IgnoreCollisions */
     , (802086,  13, True ) /* Ethereal */
     , (802086,  14, True ) /* GravityStatus */
     , (802086,  19, True ) /* Attackable */
     , (802086,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802086,  29,       1) /* WeaponDefense */
     , (802086, 144,       0) /* ManaConversionMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802086,   1, 'Acid Wand') /* Name */
     , (802086,  14, 'Use this item to cast its spell.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802086,   1,   33554812) /* Setup */
     , (802086,   3,  536870932) /* SoundTable */
     , (802086,   6,   67111919) /* PaletteBase */
     , (802086,   7,  268435758) /* ClothingBase */
     , (802086,   8,  100668792) /* Icon */
     , (802086,  22,  872415275) /* PhysicsEffectTable */
     , (802086,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (802086,  36,  234881046) /* MutateFilter */
     , (802086,  46,  939524144) /* TsysMutationFilter */
	 , (802086,  52,  100676437) /* IconUnderlay */;
