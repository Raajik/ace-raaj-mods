DELETE FROM `weenie` WHERE `class_Id` = 802275;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802275, 'paradoxtouchedolthoiwandvoid', 35, '2021-11-01 00:00:00') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802275,   1,      32768) /* ItemType - Caster */
     , (802275,   5,        200) /* EncumbranceVal */
     , (802275,   9,   16777216) /* ValidLocations - Held */
     , (802275,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (802275,  18,          1) /* UiEffects - Magical */
     , (802275,  19,         10) /* Value */
     , (802275,  33,          1) /* Bonded - Bonded */
     , (802275,  45,       1024) /* DamageType - Pierce */
     , (802275,  46,        512) /* DefaultCombatStyle - Magic */
     , (802275,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802275,  94,         16) /* TargetType - Creature */
     , (802275, 106,        450) /* ItemSpellcraft */
     , (802275, 107,      10000) /* ItemCurMana */
     , (802275, 108,      10000) /* ItemMaxMana */
     , (802275, 114,          1) /* Attuned - Attuned */
     , (802275, 151,          2) /* HookType - Wall */
     , (802275, 158,          2) /* WieldRequirements - RawSkill */
     , (802275, 159,         43) /* WieldSkillType - LifeMagic */
     , (802275, 160,        355) /* WieldDifficulty */
     , (802275, 166,          1) /* SlayerCreatureType - Olthoi */
     , (802275, 263,       1024) /* ResistanceModifierType */
     , (802275, 353,          0) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802275,  22, True ) /* Inscribable */
     , (802275,  69, False) /* IsSellable */
     , (802275,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802275,   5,  -0.033) /* ManaRate */
     , (802275,  29,    1.15) /* WeaponDefense */
     , (802275,  39,     1.5) /* DefaultScale */
     , (802275, 138,       2) /* SlayerDamageBonus */
     , (802275, 144,     0.2) /* ManaConversionMod */
     , (802275, 147,     0.3) /* CriticalFrequency */
     , (802275, 152,     1.1) /* ElementalDamageMod */
     , (802275, 157,       1) /* ResistanceModifier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802275,   1, 'Paradox-touched Olthoi Void Wand') /* Name */
     , (802275,  16, 'A wand, crafted from the remains of the stronger Paradox-touched Olthoi. Something about the nature of these creatures makes the weapon naturally deadlier versus normal Olthoi.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802275,   1,   33561081) /* Setup */
     , (802275,   3,  536870932) /* SoundTable */
     , (802275,   8,  100691347) /* Icon */
     , (802275,  22,  872415275) /* PhysicsEffectTable */
     , (802275,  28,       5352) /* Spell - Shock Wave IV */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802275,  2101,      2)  /* Aura of Cragstone's Will */
     , (802275,  3259,      2)  /* Aura of Infected Spirit Caress */;
