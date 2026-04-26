DELETE FROM `weenie` WHERE `class_Id` = 802299;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802299, 'Mirra Infused Hollow Wand of Force', 35, '2019-12-31 02:33:19') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802299,   1,      32768) /* ItemType - Caster */
     , (802299,   5,         50) /* EncumbranceVal */
     , (802299,   9,   16777216) /* ValidLocations - Held */
     , (802299,  16,    6291464) /* ItemUseable - SourceContainedTargetRemoteNeverWalk */
     , (802299,  18,          1) /* UiEffects - Magical */
     , (802299,  19,      15000) /* Value */
     , (802299,  33,          1) /* Bonded - Bonded */
     , (802299,  45,       2147483647) /* DamageType - Undef */
     , (802299,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (802299,  94,         16) /* TargetType - Creature */
     , (802299, 106,        475) /* ItemSpellcraft */
     , (802299, 107,       2700) /* ItemCurMana */
     , (802299, 108,       2700) /* ItemMaxMana */
     , (802299, 114,          1) /* Attuned - Attuned */
     , (802299, 117,        250) /* ItemManaCost */
     , (802299, 151,          2) /* HookType - Wall */
     , (802299, 158,          7) /* WieldRequirements - Level */
     , (802299, 159,          1) /* WieldSkillType - Axe */
     , (802299, 160,       1000) /* WieldDifficulty */
     , (802299, 179,      2147483647) /* ImbuedEffect - ArmorRending */
     , (802299, 292,          3) /* Cleaving */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802299,  11, True ) /* IgnoreCollisions */
     , (802299,  13, True ) /* Ethereal */
     , (802299,  14, True ) /* GravityStatus */
     , (802299,  15, True ) /* LightsStatus */
     , (802299,  19, True ) /* Attackable */
     , (802299,  22, True ) /* Inscribable */
     , (802299,  65, True ) /* IgnoreMagicResist */
     , (802299,  66, True ) /* IgnoreMagicArmor */
     , (802299,  69, False) /* IsSellable */
     , (802299,  85, True ) /* AppraisalHasAllowedWielder */
     , (802299,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802299,   5,   -0.05) /* ManaRate */
     , (802299,  29,     1.2) /* WeaponDefense */
     , (802299,  39,    0.65) /* DefaultScale */
     , (802299,  76,    0.65) /* Translucency */
     , (802299, 136,     1.3) /* CriticalMultiplier */
     , (802299, 144,    0.15) /* ManaConversionMod */
     , (802299, 147,     0.3) /* CriticalFrequency */
     , (802299, 152,     1.8) /* ElementalDamageMod */
     , (802299, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802299,   1, 'Mirra Infused Hollow Wand of Force') /* Name */
     , (802299,  15, 'Not your normal Hollow Wand.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802299,   1,   33556647) /* Setup */
     , (802299,   3,  536870932) /* SoundTable */
     , (802299,   6,   67111919) /* PaletteBase */
     , (802299,   7,  268436442) /* ClothingBase */
     , (802299,   8,  100673510) /* Icon */
     , (802299,  22,  872415275) /* PhysicsEffectTable */
     , (802299,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
	 , (802299,  55,       5356) /* ProcSpell - Incantation of Nether Bolt */;


