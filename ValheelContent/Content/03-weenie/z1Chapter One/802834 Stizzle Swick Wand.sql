DELETE FROM `weenie` WHERE `class_Id` = 802834;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802834, 'StizzleSwickWand', 35, '2021-11-01 00:00:00') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802834,   1,      32768) /* ItemType - Caster */
     , (802834,   5,        150) /* EncumbranceVal */
     , (802834,   8,         10) /* Mass */
     , (802834,   9,   16777216) /* ValidLocations - Held */
     , (802834,  16,    6291464) /* ItemUseable - SourceContainedTargetRemoteNeverWalk */
     , (802834,  18,          1) /* UiEffects - Magical */
     , (802834,  19,       8000) /* Value */
     , (802834,  33,          1) /* Bonded - Bonded */
     , (802834,  36,       9999) /* ResistMagic */
     , (802834,  46,        512) /* DefaultCombatStyle - Magic */
     , (802834,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802834,  94,         16) /* TargetType - Creature */
     , (802834, 106,        325) /* ItemSpellcraft */
     , (802834, 107,        800) /* ItemCurMana */
     , (802834, 108,        800) /* ItemMaxMana */
     , (802834, 109,         50) /* ItemDifficulty */
     , (802834, 114,          1) /* Attuned - Attuned */
     , (802834, 117,         60) /* ItemManaCost */
     , (802834, 150,        103) /* HookPlacement - Hook */
     , (802834, 151,          2) /* HookType - Wall */
     , (802834, 158,          2) /* WieldRequirements - RawSkill */
     , (802834, 159,         33) /* WieldSkillType - LifeMagic */
     , (802834, 160,        300) /* WieldDifficulty */
     , (802834, 166,         31) /* SlayerCreatureType - Human */
     , (802834, 179,      16384) /* ImbuedEffect - NetherRending */
     , (802834, 353,         12) /* WeaponType - Magic */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802834,  22, True ) /* Inscribable */
     , (802834,  69, False) /* IsSellable */
     , (802834,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802834,   5,  -0.033) /* ManaRate */
     , (802834,  29,    1.25) /* WeaponDefense */
     , (802834,  39,       1) /* DefaultScale */
     , (802834,  76,     0.7) /* Translucency */
     , (802834, 136,     1.3) /* CriticalMultiplier */
     , (802834, 138,       3) /* SlayerDamageBonus */
     , (802834, 144,     0.3) /* ManaConversionMod */
     , (802834, 147,     0.2) /* CriticalFrequency */
     , (802834, 152,     1.2) /* ElementalDamageMod */
     , (802834, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802834,   1, 'Stizzle Swick') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802834,   1,   33558300) /* Setup */
     , (802834,   3,  536870932) /* SoundTable */
     , (802834,   8,  100674265) /* Icon */
     , (802834,  22,  872415275) /* PhysicsEffectTable */
     , (802834,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (802834,  28,       2970) /* Spell - Hunter's Lash */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802834,   616,      2)  /* Life Magic Mastery Other VI */
     , (802834,   640,      2)  /* War Magic Mastery Other VI */
     , (802834,  1426,      2)  /* Focus Self VI */
     , (802834,  1450,      2)  /* Willpower Self VI */
     , (802834,  2691,      2)  /* Moderate Mana Conversion Prowess */
     , (802834,  55,       5354) /* ProcSpell - Ring of Skulls II */;
