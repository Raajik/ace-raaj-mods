DELETE FROM `weenie` WHERE `class_Id` = 802269;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802269, 'champion void scepter of asheron', 35, '2022-02-10 05:08:07') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802269,   1,      32768) /* ItemType - Caster */
     , (802269,   3,          8) /* PaletteTemplate - Green */
     , (802269,   5,        400) /* EncumbranceVal */
     , (802269,   8,         90) /* Mass */
     , (802269,   9,   16777216) /* ValidLocations - Held */
     , (802269,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (802269,  18,          1) /* UiEffects - Magical */
     , (802269,  19,          0) /* Value */
     , (802269,  33,          1) /* Bonded - Bonded */
     , (802269,  45,       1024) /* DamageType - Nether */
     , (802269,  46,        512) /* DefaultCombatStyle - Magic */
     , (802269,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802269,  94,         16) /* TargetType - Creature */
     , (802269, 106,        999) /* ItemSpellcraft */
     , (802269, 107,       1000) /* ItemCurMana */
     , (802269, 108,       1000) /* ItemMaxMana */
     , (802269, 109,        390) /* ItemDifficulty */
     , (802269, 114,          1) /* Attuned - Attuned */
     , (802269, 150,        103) /* HookPlacement - Hook */
     , (802269, 151,          2) /* HookType - Wall */
     , (802269, 158,          2) /* WieldRequirements - RawSkill */
     , (802269, 159,         43) /* WieldSkillType - Arcane */
     , (802269, 160,        340) /* WieldDifficulty */
     , (802269, 166,         19) /* SlayerCreatureType - Virindi */
     , (802269, 353,         12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802269,  22, True ) /* Inscribable */
     , (802269,  23, True ) /* DestroyOnSell */
     , (802269,  84, True ) /* IgnoreCloIcons */
     , (802269,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802269,   5,  -0.033) /* ManaRate */
     , (802269,  29,    1.27) /* WeaponDefense */
     , (802269,  39,     1.2) /* DefaultScale */
     , (802269, 138,       2) /* SlayerDamageBonus */
     , (802269, 136,     1.2) /* CriticalMultiplier */
     , (802269, 144,    0.35) /* ManaConversionMod */
     , (802269, 147,     0.3) /* CriticalFrequency */
     , (802269, 152,     1.2) /* ElementalDamageMod */
	 , (802269,  156,    0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802269,   1, 'Champion Void Scepter of Asheron') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802269,   1,   33558796) /* Setup */
     , (802269,   6,   67111919) /* PaletteBase */
     , (802269,   7,  268435755) /* ClothingBase */
     , (802269,   8,  100676589) /* Icon */
     , (802269,  22,  872415275) /* PhysicsEffectTable */
     , (802269,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
	 , (802269,  55,       5355) /* ProcSpell - Nether Bolt VII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802269,   211,      2)  /* Mana Renewal Other VI */
     , (802269,   664,      2)  /* Mana Conversion Mastery Other VI */
     , (802269,  1432,      2)  /* Focus Other VI */
     , (802269,  2581,      2)  /* Minor Focus */;
