DELETE FROM `weenie` WHERE `class_Id` = 802089;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802089, 'firewand', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802089,   1,      32768) /* ItemType - Caster */
     , (802089,   3,         82) /* PaletteTemplate - PinkPurple */
     , (802089,   5,         50) /* EncumbranceVal */
     , (802089,   8,         25) /* Mass */
     , (802089,   9,   16777216) /* ValidLocations - Held */
     , (802089,  16,          1) /* ItemUseable - No */
     , (802089,  19,     200000) /* Value */
     , (802089,  46,        512) /* DefaultCombatStyle - Magic */
     , (802089,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802089,  94,         16) /* TargetType - Creature */
     , (802089, 150,        103) /* HookPlacement - Hook */
     , (802089, 151,          2) /* HookType - Wall */
     , (802089, 169,   84281091) /* TsysMutationData */
	 , (802089, 179,        512) /* Imbued Effect - Acid Rend */
     , (802089, 353,         12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802089,  11, True ) /* IgnoreCollisions */
     , (802089,  13, True ) /* Ethereal */
     , (802089,  14, True ) /* GravityStatus */
     , (802089,  19, True ) /* Attackable */
     , (802089,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802089,  29,       1) /* WeaponDefense */
     , (802089, 144,       0) /* ManaConversionMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802089,   1, 'Fire Wand') /* Name */
     , (802089,  14, 'Use this item to cast its spell.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802089,   1,   33554812) /* Setup */
     , (802089,   3,  536870932) /* SoundTable */
     , (802089,   6,   67111919) /* PaletteBase */
     , (802089,   7,  268435758) /* ClothingBase */
     , (802089,   8,  100668792) /* Icon */
     , (802089,  22,  872415275) /* PhysicsEffectTable */
     , (802089,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (802089,  36,  234881046) /* MutateFilter */
     , (802089,  46,  939524144) /* TsysMutationFilter */
	 , (802089,  52,  100676441) /* IconUnderlay */;
