DELETE FROM `weenie` WHERE `class_Id` = 801431;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801431, 'Nether Staff of Vitality', 35, '2019-12-31 02:33:19') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801431,   1,      32768) /* ItemType - Caster */
     , (801431,   5,         50) /* EncumbranceVal */
     , (801431,   9,   16777216) /* ValidLocations - Held */
     , (801431,  16,    6291464) /* ItemUseable - SourceContainedTargetRemoteNeverWalk */
     , (801431,  18,          1) /* UiEffects - Magical */
     , (801431,  19,         20) /* Value */
     , (801431,  33,          1) /* Bonded - Bonded */
     , (801431,  45,       1024) /* DamageType - Nether */
     , (801431,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (801431,  94,         16) /* TargetType - Creature */
     , (801431, 106,        475) /* ItemSpellcraft */
     , (801431, 107,       2700) /* ItemCurMana */
     , (801431, 108,       2700) /* ItemMaxMana */
     , (801431, 114,          1) /* Attuned - Attuned */
     , (801431, 117,        250) /* ItemManaCost */
     , (801431, 151,          2) /* HookType - Wall */
     , (801431, 158,          7) /* WieldRequirements - Level */
     , (801431, 159,          1) /* WieldSkillType - Axe */
     , (801431, 160,        200) /* WieldDifficulty */
     , (801431, 179,      16384) /* ImbuedEffect - ArmorRending */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801431,  11, True ) /* IgnoreCollisions */
     , (801431,  13, True ) /* Ethereal */
     , (801431,  14, True ) /* GravityStatus */
     , (801431,  15, True ) /* LightsStatus */
     , (801431,  19, True ) /* Attackable */
     , (801431,  22, True ) /* Inscribable */
     , (801431,  65, True ) /* IgnoreMagicResist */
     , (801431,  66, True ) /* IgnoreMagicArmor */
     , (801431,  69, False) /* IsSellable */
     , (801431,  85, True ) /* AppraisalHasAllowedWielder */
     , (801431,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801431,   5,   -0.05) /* ManaRate */
     , (801431,  29,     1.2) /* WeaponDefense */
     , (801431,  39,    0.65) /* DefaultScale */
     , (801431,  76,    0.65) /* Translucency */
     , (801431, 136,     1.3) /* CriticalMultiplier */
     , (801431, 144,    0.15) /* ManaConversionMod */
     , (801431, 147,     0.3) /* CriticalFrequency */
     , (801431, 152,     1.2) /* ElementalDamageMod */
     , (801431, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801431,   1, 'Nether Staff of Vitality') /* Name */
     , (801431,  15, 'A staff that has a chance to heal you when it hits.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801431,   1,   33560575) /* Setup */
     , (801431,   3,  536870932) /* SoundTable */
     , (801431,   8,  100675639) /* Icon */
     , (801431,  22,  872415275) /* PhysicsEffectTable */
     , (801431,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (801431,  52,  100689896) /* IconUnderlay */
     , (801431,  55,       1237) /* ProcSpell - Drain Health Other I */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801431,  2101,      2)  /* Aura of Cragstone's Will */
     , (801431,  2117,      2)  /* Aura of Mystic's Blessing */
     , (801431,  5428,      2)  /* Major Void Magic Aptitude */
     , (801431,  2581,      2)  /* Minor Focus */
     , (801431,  2584,      2)  /* Minor Willpower */
     , (801431,  3259,      2)  /* Aura of Infected Spirit Caress */;
