DELETE FROM `weenie` WHERE `class_Id` = 800184;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800184, 'champion scepter of asheron', 35, '2022-02-10 05:08:07') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800184,   1,      32768) /* ItemType - Caster */
     , (800184,   3,          8) /* PaletteTemplate - Green */
     , (800184,   5,        400) /* EncumbranceVal */
     , (800184,   8,         90) /* Mass */
     , (800184,   9,   16777216) /* ValidLocations - Held */
     , (800184,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (800184,  18,          1) /* UiEffects - Magical */
     , (800184,  19,          0) /* Value */
     , (800184,  33,          1) /* Bonded - Bonded */
     , (800184,  45,         16) /* DamageType - Slash, Pierce */
     , (800184,  46,        512) /* DefaultCombatStyle - Magic */
     , (800184,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800184,  94,         16) /* TargetType - Creature */
     , (800184, 106,        999) /* ItemSpellcraft */
     , (800184, 107,       1000) /* ItemCurMana */
     , (800184, 108,       1000) /* ItemMaxMana */
     , (800184, 109,        390) /* ItemDifficulty */
     , (800184, 114,          1) /* Attuned - Attuned */
     , (800184, 150,        103) /* HookPlacement - Hook */
     , (800184, 151,          2) /* HookType - Wall */
     , (800184, 158,          2) /* WieldRequirements - RawSkill */
     , (800184, 159,         34) /* WieldSkillType - Arcane */
     , (800184, 160,        340) /* WieldDifficulty */
     , (800184, 166,         19) /* SlayerCreatureType - Virindi */
     , (800184, 353,         12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800184,  22, True ) /* Inscribable */
     , (800184,  23, True ) /* DestroyOnSell */
     , (800184,  84, True ) /* IgnoreCloIcons */
     , (800184,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800184,   5,  -0.033) /* ManaRate */
     , (800184,  29,    1.27) /* WeaponDefense */
     , (800184,  39,     1.2) /* DefaultScale */
     , (800184, 138,       2) /* SlayerDamageBonus */
     , (800184, 136,     1.2) /* CriticalMultiplier */
     , (800184, 144,    0.35) /* ManaConversionMod */
     , (800184, 147,     0.3) /* CriticalFrequency */
     , (800184, 152,     1.2) /* ElementalDamageMod */
	 , (800184,  156,    0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800184,   1, 'Champion Scepter of Asheron') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800184,   1,   33558796) /* Setup */
     , (800184,   6,   67111919) /* PaletteBase */
     , (800184,   7,  268435755) /* ClothingBase */
     , (800184,   8,  100676589) /* Icon */
     , (800184,  22,  872415275) /* PhysicsEffectTable */
     , (800184,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
	 , (800184,  55,       4423) /* ProcSpell - Flame Arc VII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800184,   211,      2)  /* Mana Renewal Other VI */
     , (800184,   664,      2)  /* Mana Conversion Mastery Other VI */
     , (800184,  1432,      2)  /* Focus Other VI */
     , (800184,  2581,      2)  /* Minor Focus */;
