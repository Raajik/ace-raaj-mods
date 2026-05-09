DELETE FROM `weenie` WHERE `class_Id` = 800330;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800330, 'ValHeel Nether Wand', 35, '2021-11-01 00:00:00') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800330,   1,      32768) /* ItemType - Caster */
     , (800330,   5,        150) /* EncumbranceVal */
     , (800330,   9,   16777216) /* ValidLocations - Held */
     , (800330,  16,    6291464) /* ItemUseable - SourceContainedTargetRemoteNeverWalk */
     , (800330,  19,          1) /* Value */
     , (800330,  46,        512) /* DefaultCombatStyle - Magic */
     , (800330,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800330,  94,         16) /* TargetType - Creature */
     , (800330, 106,        325) /* ItemSpellcraft */
     , (800330, 107,        800) /* ItemCurMana */
     , (800330, 108,        800) /* ItemMaxMana */
     , (800330, 117,         60) /* ItemManaCost */
     , (800330, 150,        103) /* HookPlacement - Hook */
     , (800330, 151,          2) /* HookType - Wall */
     , (800330, 158,          7) /* WieldRequirements - Level */
     , (800330, 160,        180) /* WieldDifficulty */
	 , (800330, 179,      16384) /* Imbued Effect - Nether */
     , (800330, 353,          0) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800330,  22, True ) /* Inscribable */
     , (800330,  23, True ) /* DestroyOnSell */
     , (800330,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800330,   5,  -0.025) /* ManaRate */
     , (800330,  39,       1) /* DefaultScale */
     , (800330, 144,    0.02) /* ManaConversionMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800330,   1, 'ValHeel Nether Wand') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800330,   1,   33560677) /* Setup */
     , (800330,   3,  536870932) /* SoundTable */
     , (800330,   8,  100690285) /* Icon */
     , (800330,  22,  872415275) /* PhysicsEffectTable */
     , (800330,  27, 1073742049) /* UseUserAnimation - UseMagicWand */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800330,  2067,      2)  /* Inner Calm */
     , (800330,  2091,      2)  /* Mind Blossom */
     , (800330,  2266,      2)  /* Harlune's Boon */
     , (800330,  2322,      2)  /* Hieromancer's Boon */
     , (800330,  2525,      2)  /* Major Mana Conversion Prowess */;
