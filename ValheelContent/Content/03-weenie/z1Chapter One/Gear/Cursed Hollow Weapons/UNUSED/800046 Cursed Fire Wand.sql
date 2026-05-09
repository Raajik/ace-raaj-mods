DELETE FROM `weenie` WHERE `class_Id` = 800046;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800046, 'cursedfire', 35, '2021-11-01 00:00:00') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800046,   1,      32768) /* ItemType - Caster */
     , (800046,   3,         14) /* PaletteTemplate - LootGenRed */
     , (800046,   5,        150) /* EncumbranceVal */
     , (800046,   9,   16777216) /* ValidLocations - Held */
     , (800046,  16,          1) /* ItemUseable - No */
     , (800046,  18,          1) /* UiEffects - Magical */
     , (800046,  19,          1) /* Value */
     , (800046,  33,          1) /* Bonded - Bonded */
     , (800046,  36,       9999) /* ResistMagic */
     , (800046,  45,         16) /* DamageType - Fire */
     , (800046,  46,        512) /* DefaultCombatStyle - Magic */
     , (800046,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800046,  94,         16) /* TargetType - Creature */
     , (800046, 114,          1) /* Attuned - Attuned */
     , (800046, 151,          2) /* HookType - Wall */
     , (800046, 158,          2) /* WieldRequirements - RawSkill */
     , (800046, 159,         34) /* WieldSkillType - WarMagic	 */
     , (800046, 160,        390) /* WieldDifficulty */
     , (800046, 166,         14) /* SlayerCreatureType - Undead */
	 , (800046, 179,        512) /* ImbuedEffect - Fire */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800046,  22, True ) /* Inscribable */
     , (800046,  69, False) /* IsSellable */
     , (800046,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800046,  29,    1.40) /* WeaponDefense */
     , (800046, 138,       3) /* SlayerDamageBonus */
     , (800046, 144,    0.30) /* ManaConversionMod */
     , (800046, 152,       2) /* ElementalDamageMod */
	 , (800046, 156,      .3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800046,   1, 'Cursed Fire Wand') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800046,   1,   33559826) /* Setup */
     , (800046,   3,  536870932) /* SoundTable */
     , (800046,   6,   67111919) /* PaletteBase */
     , (800046,   7,  268436395) /* ClothingBase */
     , (800046,   8,  100688568) /* Icon */
     , (800046,  22,  872415275) /* PhysicsEffectTable */
	 , (800046,  55,       2745) /* ProcSpell - Fire Bolt VII */;
