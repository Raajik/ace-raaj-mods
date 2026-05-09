DELETE FROM `weenie` WHERE `class_Id` = 800312;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800312, 'Bael''Zharon Touched Weeping Wand', 35, '2021-11-01 00:00:00') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800312,   1,      32768) /* ItemType - Caster */
     , (800312,   5,        150) /* EncumbranceVal */
     , (800312,   8,         10) /* Mass */
     , (800312,   9,   16777216) /* ValidLocations - Held */
     , (800312,  16,    6291464) /* ItemUseable - SourceContainedTargetRemoteNeverWalk */
     , (800312,  18,          1) /* UiEffects - Magical */
     , (800312,  19,          1) /* Value */
     , (800312,  33,          1) /* Bonded - Bonded */
     , (800312,  36,       9999) /* ResistMagic */
     , (800312,  46,        512) /* DefaultCombatStyle - Magic */
     , (800312,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800312,  94,         16) /* TargetType - Creature */
     , (800312, 106,        325) /* ItemSpellcraft */
     , (800312, 107,        800) /* ItemCurMana */
     , (800312, 108,        800) /* ItemMaxMana */
     , (800312, 109,        350) /* ItemDifficulty */
     , (800312, 114,          1) /* Attuned - Attuned */
     , (800312, 117,         60) /* ItemManaCost */
     , (800312, 150,        103) /* HookPlacement - Hook */
     , (800312, 151,          2) /* HookType - Wall */
     , (800312, 158,          7) /* WieldRequirements - RawSkill */
     , (800312, 159,         33) /* WieldSkillType - LifeMagic */
     , (800312, 160,        275) /* WieldDifficulty */
     , (800312, 166,         31) /* SlayerCreatureType - Human */
	 , (800312, 179,          4) /* Imbued Effect - Armor Rending */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800312,  22, True ) /* Inscribable */
     , (800312,  69, False) /* IsSellable */
     , (800312,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800312,   5,  -0.025) /* ManaRate */
     , (800312,  21,       0) /* WeaponLength */
     , (800312,  22,     0.5) /* DamageVariance */
     , (800312,  26,       0) /* MaximumVelocity */
     , (800312,  29,    1.25) /* WeaponDefense */
     , (800312,  62,    1.25) /* WeaponOffense */
     , (800312,  63,     1.2) /* DamageMod */
     , (800312, 138,     3.4) /* SlayerDamageBonus */
     , (800312, 151,       1) /* IgnoreShield */
     , (800312, 155,       1) /* IgnoreArmor */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800312,   1, 'Bael''Zharon Touched Weeping Wand') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800312,   1,   33558300) /* Setup */
     , (800312,   3,  536870932) /* SoundTable */
     , (800312,   8,  100674265) /* Icon */
     , (800312,  22,  872415275) /* PhysicsEffectTable */
     , (800312,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (800312,  28,       2970) /* Spell - Hunter's Lash */
     , (800312,  36,  234881046) /* MutateFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800312,   6060,      2)  /* Legendary Life Magic */;
