DELETE FROM `weenie` WHERE `class_Id` = 800041;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800041, 'cursedpierce', 35, '2021-11-01 00:00:00') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800041,   1,      32768) /* ItemType - Caster */
     , (800041,   3,         14) /* PaletteTemplate - LootGenRed */
     , (800041,   5,        150) /* EncumbranceVal */
     , (800041,   9,   16777216) /* ValidLocations - Held */
     , (800041,  16,          1) /* ItemUseable - No */
     , (800041,  18,          1) /* UiEffects - Magical */
     , (800041,  19,          1) /* Value */
     , (800041,  33,          1) /* Bonded - Bonded */
     , (800041,  36,       9999) /* ResistMagic */
     , (800041,  45,         16) /* DamageType - Fire */
     , (800041,  46,        512) /* DefaultCombatStyle - Magic */
     , (800041,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800041,  94,         16) /* TargetType - Creature */
     , (800041, 114,          1) /* Attuned - Attuned */
     , (800041, 151,          2) /* HookType - Wall */
     , (800041, 158,          2) /* WieldRequirements - RawSkill */
     , (800041, 159,         34) /* WieldSkillType - WarMagic	 */
     , (800041, 160,        390) /* WieldDifficulty */
     , (800041, 166,         14) /* SlayerCreatureType - Undead */
	 , (800041, 179,         16) /* ImbuedEffect - Piercing */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800041,  22, True ) /* Inscribable */
     , (800041,  69, False) /* IsSellable */
     , (800041,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800041,  29,    1.40) /* WeaponDefense */
     , (800041, 138,       3) /* SlayerDamageBonus */
     , (800041, 144,    0.30) /* ManaConversionMod */
     , (800041, 152,       2) /* ElementalDamageMod */
	 , (800041, 156,      .3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800041,   1, 'Cursed Piercing Wand') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800041,   1,   33559826) /* Setup */
     , (800041,   3,  536870932) /* SoundTable */
     , (800041,   6,   67111919) /* PaletteBase */
     , (800041,   7,  268436395) /* ClothingBase */
     , (800041,   8,  100688568) /* Icon */
     , (800041,  22,  872415275) /* PhysicsEffectTable */
	 , (800041,  55,       2724) /* ProcSpell - Fire Bolt VII */;
