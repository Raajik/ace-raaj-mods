DELETE FROM `weenie` WHERE `class_Id` = 802298;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802298, 'Mirra Infused Hollow Wand of the Void', 35, '2019-12-31 02:33:19') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802298,   1,      32768) /* ItemType - Caster */
     , (802298,   5,         50) /* EncumbranceVal */
     , (802298,   9,   16777216) /* ValidLocations - Held */
     , (802298,  16,    6291464) /* ItemUseable - SourceContainedTargetRemoteNeverWalk */
     , (802298,  18,          1) /* UiEffects - Magical */
     , (802298,  19,      15000) /* Value */
     , (802298,  33,          1) /* Bonded - Bonded */
     , (802298,  45,       1024) /* DamageType - Undef */
     , (802298,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (802298,  94,         16) /* TargetType - Creature */
     , (802298, 106,        475) /* ItemSpellcraft */
     , (802298, 107,       2700) /* ItemCurMana */
     , (802298, 108,       2700) /* ItemMaxMana */
     , (802298, 114,          1) /* Attuned - Attuned */
     , (802298, 117,        250) /* ItemManaCost */
     , (802298, 151,          2) /* HookType - Wall */
     , (802298, 158,          7) /* WieldRequirements - Level */
     , (802298, 159,          1) /* WieldSkillType - Axe */
     , (802298, 160,       1000) /* WieldDifficulty */
     , (802298, 179,      16384) /* ImbuedEffect - ArmorRending */
     , (802298, 292,          3) /* Cleaving */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802298,  11, True ) /* IgnoreCollisions */
     , (802298,  13, True ) /* Ethereal */
     , (802298,  14, True ) /* GravityStatus */
     , (802298,  15, True ) /* LightsStatus */
     , (802298,  19, True ) /* Attackable */
     , (802298,  22, True ) /* Inscribable */
     , (802298,  65, True ) /* IgnoreMagicResist */
     , (802298,  66, True ) /* IgnoreMagicArmor */
     , (802298,  69, False) /* IsSellable */
     , (802298,  85, True ) /* AppraisalHasAllowedWielder */
     , (802298,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802298,   5,   -0.05) /* ManaRate */
     , (802298,  29,     1.2) /* WeaponDefense */
     , (802298,  39,    0.65) /* DefaultScale */
     , (802298,  76,    0.65) /* Translucency */
     , (802298, 136,     1.3) /* CriticalMultiplier */
     , (802298, 144,    0.15) /* ManaConversionMod */
     , (802298, 147,     0.3) /* CriticalFrequency */
     , (802298, 152,     1.8) /* ElementalDamageMod */
     , (802298, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802298,   1, 'Mirra Infused Hollow Wand of the Void') /* Name */
     , (802298,  15, 'Not your normal Hollow Wand.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802298,   1,   33556647) /* Setup */
     , (802298,   3,  536870932) /* SoundTable */
     , (802298,   6,   67111919) /* PaletteBase */
     , (802298,   7,  268436442) /* ClothingBase */
     , (802298,   8,  100673510) /* Icon */
     , (802298,  22,  872415275) /* PhysicsEffectTable */
     , (802298,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
	 , (802298,  55,       5356) /* ProcSpell - Incantation of Nether Bolt */;


