DELETE FROM `weenie` WHERE `class_Id` = 800327;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800327, 'Mage's Staff of Vitality', 35, '2019-12-31 02:33:19') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800327,   1,      32768) /* ItemType - Caster */
     , (800327,   5,         50) /* EncumbranceVal */
     , (800327,   9,   16777216) /* ValidLocations - Held */
     , (800327,  16,    6291464) /* ItemUseable - SourceContainedTargetRemoteNeverWalk */
     , (800327,  18,          1) /* UiEffects - Magical */
     , (800327,  19,         20) /* Value */
     , (800327,  33,          1) /* Bonded - Bonded */
     , (800327,  45,          0) /* DamageType - Undef */
     , (800327,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800327,  94,         16) /* TargetType - Creature */
     , (800327, 106,        475) /* ItemSpellcraft */
     , (800327, 107,       2700) /* ItemCurMana */
     , (800327, 108,       2700) /* ItemMaxMana */
     , (800327, 114,          1) /* Attuned - Attuned */
     , (800327, 117,        250) /* ItemManaCost */
     , (800327, 151,          2) /* HookType - Wall */
     , (800327, 158,          7) /* WieldRequirements - Level */
     , (800327, 159,          1) /* WieldSkillType - Axe */
     , (800327, 160,        200) /* WieldDifficulty */
     , (800327, 179,          4) /* ImbuedEffect - ArmorRending */
     , (800327, 263,          2) /* ResistanceModifierType */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800327,  11, True ) /* IgnoreCollisions */
     , (800327,  13, True ) /* Ethereal */
     , (800327,  14, True ) /* GravityStatus */
     , (800327,  15, True ) /* LightsStatus */
     , (800327,  19, True ) /* Attackable */
     , (800327,  22, True ) /* Inscribable */
     , (800327,  65, True ) /* IgnoreMagicResist */
     , (800327,  66, True ) /* IgnoreMagicArmor */
     , (800327,  69, False) /* IsSellable */
     , (800327,  85, True ) /* AppraisalHasAllowedWielder */
     , (800327,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800327,   5, -0.0500000007450581) /* ManaRate */
     , (800327,  29,     1.2) /* WeaponDefense */
     , (800327,  39,    0.65) /* DefaultScale */
     , (800327,  76,    0.65) /* Translucency */
     , (800327, 136,       2) /* CriticalMultiplier */
     , (800327, 144,    0.15) /* ManaConversionMod */
     , (800327, 147,     0.3) /* CriticalFrequency */
     , (800327, 152,       4) /* ElementalDamageMod */
     , (800327, 156,     0.1) /* ProcSpellRate */
     , (800327, 157,       2) /* ResistanceModifier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800327,   1, 'Mage''s Staff of Vitality') /* Name */
     , (800327,  15, 'A staff that has a chance to heal you when it hits.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800327,   1,   33560575) /* Setup */
     , (800327,   3,  536870932) /* SoundTable */
     , (800327,   8,  100675639) /* Icon */
     , (800327,  22,  872415275) /* PhysicsEffectTable */
     , (800327,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (800327,  52,  100689896) /* IconUnderlay */
     , (800327,  55,       1237) /* ProcSpell - Drain Health Other I */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800327,  2101,      2)  /* Aura of Cragstone's Will */
     , (800327,  2117,      2)  /* Aura of Mystic's Blessing */
     , (800327,  2534,      2)  /* Major War Magic Aptitude */
     , (800327,  2581,      2)  /* Minor Focus */
     , (800327,  2584,      2)  /* Minor Willpower */
     , (800327,  3259,      2)  /* Aura of Infected Spirit Caress */;
