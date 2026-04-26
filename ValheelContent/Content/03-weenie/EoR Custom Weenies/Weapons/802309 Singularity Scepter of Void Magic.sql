DELETE FROM `weenie` WHERE `class_Id` = 802309;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802309, 'sceptersingularityvoidnew', 35, '2022-02-10 05:08:07') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802309,   1,      32768) /* ItemType - Caster */
     , (802309,   3,          2) /* PaletteTemplate - Blue */
     , (802309,   5,        400) /* EncumbranceVal */
     , (802309,   8,         90) /* Mass */
     , (802309,   9,   16777216) /* ValidLocations - Held */
     , (802309,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (802309,  18,          1) /* UiEffects - Magical */
     , (802309,  19,         10) /* Value */
     , (802309,  33,         -2) /* Bonded - Destroy */
     , (802309,  46,        512) /* DefaultCombatStyle - Magic */
     , (802309,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802309,  94,         16) /* TargetType - Creature */
     , (802309, 106,        200) /* ItemSpellcraft */
     , (802309, 107,       1000) /* ItemCurMana */
     , (802309, 108,       1000) /* ItemMaxMana */
     , (802309, 109,        200) /* ItemDifficulty */
     , (802309, 114,          1) /* Attuned - Attuned */
     , (802309, 150,        103) /* HookPlacement - Hook */
     , (802309, 151,          2) /* HookType - Wall */
     , (802309, 158,          2) /* WieldRequirements - RawSkill */
     , (802309, 159,         43) /* WieldSkillType - VoidMagic */
     , (802309, 160,        225) /* WieldDifficulty */
     , (802309, 166,         19) /* SlayerCreatureType - Virindi */
     , (802309, 353,          0) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802309,  22, True ) /* Inscribable */
     , (802309,  23, True ) /* DestroyOnSell */
     , (802309,  84, True ) /* IgnoreCloIcons */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802309,   5,  -0.033) /* ManaRate */
     , (802309,  29,    1.07) /* WeaponDefense */
     , (802309, 138,     1.8) /* SlayerDamageBonus */
     , (802309, 144,    0.07) /* ManaConversionMod */
     , (802309, 147,    0.25) /* CriticalFrequency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802309,   1, 'Singularity Scepter of Void Magic') /* Name */
     , (802309,  15, 'A scepter imbued with Singularity energy.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802309,   1,   33558794) /* Setup */
     , (802309,   6,   67111919) /* PaletteBase */
     , (802309,   7,  268435755) /* ClothingBase */
     , (802309,   8,  100676591) /* Icon */
     , (802309,  22,  872415275) /* PhysicsEffectTable */
     , (802309,  27, 1073742049) /* UseUserAnimation - UseMagicWand */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802309,   211,      2)  /* Mana Renewal Other VI */
     , (802309,   664,      2)  /* Mana Conversion Mastery Other VI */
     , (802309,  1432,      2)  /* Focus Other VI */;
