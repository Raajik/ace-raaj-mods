DELETE FROM `weenie` WHERE `class_Id` = 800045;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800045, 'cursedfrost', 35, '2021-11-01 00:00:00') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800045,   1,      32768) /* ItemType - Caster */
     , (800045,   3,         14) /* PaletteTemplate - LootGenRed */
     , (800045,   5,        150) /* EncumbranceVal */
     , (800045,   9,   16777216) /* ValidLocations - Held */
     , (800045,  16,          1) /* ItemUseable - No */
     , (800045,  18,          1) /* UiEffects - Magical */
     , (800045,  19,          1) /* Value */
     , (800045,  33,          1) /* Bonded - Bonded */
     , (800045,  36,       9999) /* ResistMagic */
     , (800045,  45,         16) /* DamageType - Fire */
     , (800045,  46,        512) /* DefaultCombatStyle - Magic */
     , (800045,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800045,  94,         16) /* TargetType - Creature */
     , (800045, 114,          1) /* Attuned - Attuned */
     , (800045, 151,          2) /* HookType - Wall */
     , (800045, 158,          2) /* WieldRequirements - RawSkill */
     , (800045, 159,         34) /* WieldSkillType - WarMagic	 */
     , (800045, 160,        390) /* WieldDifficulty */
     , (800045, 166,         14) /* SlayerCreatureType - Undead */
	 , (800045, 179,        128) /* ImbuedEffect - Frost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800045,  22, True ) /* Inscribable */
     , (800045,  69, False) /* IsSellable */
     , (800045,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800045,  29,    1.40) /* WeaponDefense */
     , (800045, 138,       3) /* SlayerDamageBonus */
     , (800045, 144,    0.30) /* ManaConversionMod */
     , (800045, 152,       2) /* ElementalDamageMod */
	 , (800045, 156,      .3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800045,   1, 'Cursed Frost Wand') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800045,   1,   33559826) /* Setup */
     , (800045,   3,  536870932) /* SoundTable */
     , (800045,   6,   67111919) /* PaletteBase */
     , (800045,   7,  268436395) /* ClothingBase */
     , (800045,   8,  100688568) /* Icon */
     , (800045,  22,  872415275) /* PhysicsEffectTable */
	 , (800045,  55,       2731) /* ProcSpell - Fire Bolt VII */;
