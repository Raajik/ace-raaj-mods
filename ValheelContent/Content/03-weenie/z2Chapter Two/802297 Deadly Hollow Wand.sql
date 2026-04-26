DELETE FROM `weenie` WHERE `class_Id` = 802297;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802297, 'Deadly Hollow Wand', 35, '2019-12-31 02:33:19') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802297,   1,      32768) /* ItemType - Caster */
     , (802297,   5,         50) /* EncumbranceVal */
     , (802297,   9,   16777216) /* ValidLocations - Held */
     , (802297,  16,    6291464) /* ItemUseable - SourceContainedTargetRemoteNeverWalk */
     , (802297,  18,          1) /* UiEffects - Magical */
     , (802297,  19,         20) /* Value */
     , (802297,  33,          1) /* Bonded - Bonded */
     /*, (802297,  45,    2147483647) /* DamageType - Undef */
     , (802297,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (802297,  94,         16) /* TargetType - Creature */
     , (802297, 106,        475) /* ItemSpellcraft */
     , (802297, 107,       2700) /* ItemCurMana */
     , (802297, 108,       2700) /* ItemMaxMana */
     , (802297, 114,          1) /* Attuned - Attuned */
     , (802297, 117,        250) /* ItemManaCost */
     , (802297, 151,          2) /* HookType - Wall */
     , (802297, 158,          7) /* WieldRequirements - Level */
     , (802297, 159,          1) /* WieldSkillType - Axe */
     , (802297, 160,        200) /* WieldDifficulty */
     /*, (802297, 179,          4) /* ImbuedEffect - ArmorRending */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802297,  11, True ) /* IgnoreCollisions */
     , (802297,  13, True ) /* Ethereal */
     , (802297,  14, True ) /* GravityStatus */
     , (802297,  15, True ) /* LightsStatus */
     , (802297,  19, True ) /* Attackable */
     , (802297,  22, True ) /* Inscribable */
     , (802297,  65, True ) /* IgnoreMagicResist */
     , (802297,  66, True ) /* IgnoreMagicArmor */
     , (802297,  69, False) /* IsSellable */
     , (802297,  85, True ) /* AppraisalHasAllowedWielder */
     , (802297,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802297,   5,   -0.05) /* ManaRate */
     , (802297,  29,     1.2) /* WeaponDefense */
     , (802297,  39,    0.65) /* DefaultScale */
     , (802297,  76,    0.65) /* Translucency */
     , (802297, 136,     1.3) /* CriticalMultiplier */
     , (802297, 144,    0.15) /* ManaConversionMod */
     , (802297, 147,     0.3) /* CriticalFrequency */
     , (802297, 152,     1.2) /* ElementalDamageMod */
     , (802297, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802297,   1, 'Deadly Hollow Wand') /* Name */
     , (802297,  15, 'Not your normal Hollow Wand.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802297,   1,   33556647) /* Setup */
     , (802297,   3,  536870932) /* SoundTable */
     , (802297,   6,   67111919) /* PaletteBase */
     , (802297,   7,  268436442) /* ClothingBase */
     , (802297,   8,  100673510) /* Icon */
     , (802297,  22,  872415275) /* PhysicsEffectTable */
     , (802297,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (802297,  52,  100689896) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802297,  2101,      2)  /* Aura of Cragstone's Will */
     , (802297,  2117,      2)  /* Aura of Mystic's Blessing */
     , (802297,  2534,      2)  /* Major War Magic Aptitude */
     , (802297,  2581,      2)  /* Minor Focus */
     , (802297,  2584,      2)  /* Minor Willpower */
     , (802297,  3259,      2)  /* Aura of Infected Spirit Caress */;
