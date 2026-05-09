DELETE FROM `weenie` WHERE `class_Id` = 802090;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802090, 'voidwand', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802090,   1,      32768) /* ItemType - Caster */
     , (802090,   3,         82) /* PaletteTemplate - PinkPurple */
     , (802090,   5,         50) /* EncumbranceVal */
     , (802090,   8,         25) /* Mass */
     , (802090,   9,   16777216) /* ValidLocations - Held */
     , (802090,  16,          1) /* ItemUseable - No */
     , (802090,  19,    1400000) /* Value */
     , (802090,  46,        512) /* DefaultCombatStyle - Magic */
     , (802090,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802090,  94,         16) /* TargetType - Creature */
     , (802090, 150,        103) /* HookPlacement - Hook */
     , (802090, 151,          2) /* HookType - Wall */
     , (802090, 169,   84281091) /* TsysMutationData */
	 , (802090, 179,      16384) /* Imbued Effect - Acid Rend */
     , (802090, 353,         12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802090,  11, True ) /* IgnoreCollisions */
     , (802090,  13, True ) /* Ethereal */
     , (802090,  14, True ) /* GravityStatus */
     , (802090,  19, True ) /* Attackable */
     , (802090,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802090,  29,       1) /* WeaponDefense */
     , (802090, 144,       0) /* ManaConversionMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802090,   1, 'Void Wand') /* Name */
     , (802090,  14, 'Use this item to cast its spell.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802090,   1,   33554812) /* Setup */
     , (802090,   3,  536870932) /* SoundTable */
     , (802090,   6,   67111919) /* PaletteBase */
     , (802090,   7,  268435758) /* ClothingBase */
     , (802090,   8,  100668792) /* Icon */
     , (802090,  22,  872415275) /* PhysicsEffectTable */
     , (802090,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (802090,  36,  234881046) /* MutateFilter */
     , (802090,  46,  939524144) /* TsysMutationFilter */
	 , (802090,  52,  100686604) /* IconUnderlay */;
