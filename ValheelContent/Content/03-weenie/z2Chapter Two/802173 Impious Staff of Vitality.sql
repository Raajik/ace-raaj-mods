DELETE FROM `weenie` WHERE `class_Id` = 802173;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802173, 'Impious Staff of Vitality', 35, '2019-12-31 02:33:19') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802173,   1,      32768) /* ItemType - Caster */
     , (802173,   5,         50) /* EncumbranceVal */
     , (802173,   9,   16777216) /* ValidLocations - Held */
     , (802173,  16,    6291464) /* ItemUseable - SourceContainedTargetRemoteNeverWalk */
     , (802173,  18,          1) /* UiEffects - Magical */
     , (802173,  19,         20) /* Value */
     , (802173,  33,          1) /* Bonded - Bonded */
     , (802173,  45,    2147483647) /* DamageType - Undef */
     , (802173,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (802173,  94,         16) /* TargetType - Creature */
     , (802173, 106,        475) /* ItemSpellcraft */
     , (802173, 107,       2700) /* ItemCurMana */
     , (802173, 108,       2700) /* ItemMaxMana */
     , (802173, 114,          1) /* Attuned - Attuned */
     , (802173, 117,        250) /* ItemManaCost */
     , (802173, 151,          2) /* HookType - Wall */
     , (802173, 158,          7) /* WieldRequirements - Level */
     , (802173, 159,          1) /* WieldSkillType - Axe */
     , (802173, 160,        200) /* WieldDifficulty */
     , (802173, 179,          4) /* ImbuedEffect - ArmorRending */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802173,  11, True ) /* IgnoreCollisions */
     , (802173,  13, True ) /* Ethereal */
     , (802173,  14, True ) /* GravityStatus */
     , (802173,  15, True ) /* LightsStatus */
     , (802173,  19, True ) /* Attackable */
     , (802173,  22, True ) /* Inscribable */
     , (802173,  65, True ) /* IgnoreMagicResist */
     , (802173,  66, True ) /* IgnoreMagicArmor */
     , (802173,  69, False) /* IsSellable */
     , (802173,  85, True ) /* AppraisalHasAllowedWielder */
     , (802173,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802173,   5,   -0.05) /* ManaRate */
     , (802173,  29,     1.2) /* WeaponDefense */
     , (802173,  39,    0.65) /* DefaultScale */
     , (802173,  76,    0.65) /* Translucency */
     , (802173, 136,     1.3) /* CriticalMultiplier */
     , (802173, 144,    0.15) /* ManaConversionMod */
     , (802173, 147,     0.3) /* CriticalFrequency */
     , (802173, 152,     1.2) /* ElementalDamageMod */
     , (802173, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802173,   1, 'Impious Staff of Vitality') /* Name */
     , (802173,  15, 'A staff that has a chance to heal you when it hits.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802173,   1,   33557877) /* Setup */
     , (802173,   3,  536870932) /* SoundTable */
     , (802173,   6,   67111919) /* PaletteBase */
     , (802173,   7,  268436442) /* ClothingBase */
     , (802173,   8,  100673510) /* Icon */
     , (802173,  22,  872415275) /* PhysicsEffectTable */
     , (802173,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (802173,  52,  100689896) /* IconUnderlay */
     , (802173,  55,       1237) /* ProcSpell - Drain Health Other I */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802173,  2101,      2)  /* Aura of Cragstone's Will */
     , (802173,  2117,      2)  /* Aura of Mystic's Blessing */
     , (802173,  2534,      2)  /* Major War Magic Aptitude */
     , (802173,  2581,      2)  /* Minor Focus */
     , (802173,  2584,      2)  /* Minor Willpower */
     , (802173,  3259,      2)  /* Aura of Infected Spirit Caress */;
