DELETE FROM `weenie` WHERE `class_Id` = 800280;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800280, 'ValHeel Wand', 35, '2021-11-01 00:00:00') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800280,   1,      32768) /* ItemType - Caster */
     , (800280,   5,        150) /* EncumbranceVal */
     , (800280,   9,   16777216) /* ValidLocations - Held */
     , (800280,  16,    6291464) /* ItemUseable - SourceContainedTargetRemoteNeverWalk */
     , (800280,  19,          1) /* Value */
     , (800280,  45,          16) /* DamageType - Pierce */
     , (800280,  46,        512) /* DefaultCombatStyle - Magic */
     , (800280,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800280,  94,         16) /* TargetType - Creature */
     , (800280, 106,        325) /* ItemSpellcraft */
     , (800280, 107,        800) /* ItemCurMana */
     , (800280, 108,        800) /* ItemMaxMana */
     , (800280, 117,         60) /* ItemManaCost */
     , (800280, 150,        103) /* HookPlacement - Hook */
     , (800280, 151,          2) /* HookType - Wall */
     , (800280, 158,          7) /* WieldRequirements - Level */
     , (800280, 160,        180) /* WieldDifficulty */
	 , (800280, 179,        512) /* Imbued Effect - Fire */
     , (800280, 353,          0) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800280,  22, True ) /* Inscribable */
     , (800280,  23, True ) /* DestroyOnSell */
     , (800280,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800280,   5,  -0.025) /* ManaRate */
     , (800280,  39,       1) /* DefaultScale */
     , (800280, 144,    0.02) /* ManaConversionMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800280,   1, 'ValHeel Wand') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800280,   1,   33560677) /* Setup */
     , (800280,   3,  536870932) /* SoundTable */
     , (800280,   8,  100690285) /* Icon */
     , (800280,  22,  872415275) /* PhysicsEffectTable */
     , (800280,  27, 1073742049) /* UseUserAnimation - UseMagicWand */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800280,  2067,      2)  /* Inner Calm */
     , (800280,  2091,      2)  /* Mind Blossom */
     , (800280,  2266,      2)  /* Harlune's Boon */
     , (800280,  2322,      2)  /* Hieromancer's Boon */
     , (800280,  2525,      2)  /* Major Mana Conversion Prowess */;
