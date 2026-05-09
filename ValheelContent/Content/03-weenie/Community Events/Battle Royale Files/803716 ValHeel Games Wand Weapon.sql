DELETE FROM `weenie` WHERE `class_Id` = 803716;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803716, 'ValHeelGamesWand', 35, '2021-11-01 00:00:00') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803716,   1,      32768) /* ItemType - Caster */
     , (803716,   5,        150) /* EncumbranceVal */
     , (803716,   9,   16777216) /* ValidLocations - Held */
     , (803716,  16,    6291464) /* ItemUseable - SourceContainedTargetRemoteNeverWalk */
     , (803716,  19,      20000) /* Value */
     , (803716,  33,          1) /* Bonded - Bonded */
     , (803716,  36,       9999) /* ResistMagic */
     , (803716,  46,        512) /* DefaultCombatStyle - Magic */
     , (803716,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803716,  94,         16) /* TargetType - Creature */
     , (803716, 106,        325) /* ItemSpellcraft */
     , (803716, 107,        800) /* ItemCurMana */
     , (803716, 108,        800) /* ItemMaxMana */
     , (803716, 109,         50) /* ItemDifficulty */
     , (803716, 114,          1) /* Attuned - Attuned */
     , (803716, 117,         60) /* ItemManaCost */
     , (803716, 150,        103) /* HookPlacement - Hook */
     , (803716, 151,          2) /* HookType - Wall */
     , (803716, 158,          2) /* WieldRequirements - RawSkill */
     , (803716, 159,         33) /* WieldSkillType - LifeMagic */
     , (803716, 160,        200) /* WieldDifficulty */
     , (803716, 166,         31) /* SlayerCreatureType - Human */
     , (803716, 353,          0) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803716,  22, True ) /* Inscribable */
     , (803716,  23, True ) /* DestroyOnSell */
     , (803716,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803716,   5,  -0.025) /* ManaRate */
     , (803716,  39,     1.5) /* DefaultScale */
     , (803716, 138,     1.4) /* SlayerDamageBonus */
     , (803716, 144,    0.02) /* ManaConversionMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803716,   1, 'ValHeel Games Wand') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803716,   1,   33560677) /* Setup */
     , (803716,   3,  536870932) /* SoundTable */
     , (803716,   7,  268437355) /* ClothingBase */
     , (803716,   8,  100690411) /* Icon */
     , (803716,  22,  872415275) /* PhysicsEffectTable */
     , (803716,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803716,  28,       2970) /* Spell - Hunter's Lash */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803716,  2067,      2)  /* Inner Calm */
     , (803716,  2091,      2)  /* Mind Blossom */
     , (803716,  2266,      2)  /* Harlune's Boon */
     , (803716,  2322,      2)  /* Hieromancer's Boon */
     , (803716,  2525,      2)  /* Major Mana Conversion Prowess */;
