DELETE FROM `weenie` WHERE `class_Id` = 800044;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800044, 'cursedelectric', 35, '2021-11-01 00:00:00') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800044,   1,      32768) /* ItemType - Caster */
     , (800044,   3,         14) /* PaletteTemplate - LootGenRed */
     , (800044,   5,        150) /* EncumbranceVal */
     , (800044,   9,   16777216) /* ValidLocations - Held */
     , (800044,  16,          1) /* ItemUseable - No */
     , (800044,  18,          1) /* UiEffects - Magical */
     , (800044,  19,          1) /* Value */
     , (800044,  33,          1) /* Bonded - Bonded */
     , (800044,  36,       9999) /* ResistMagic */
     , (800044,  45,         16) /* DamageType - Fire */
     , (800044,  46,        512) /* DefaultCombatStyle - Magic */
     , (800044,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800044,  94,         16) /* TargetType - Creature */
     , (800044, 114,          1) /* Attuned - Attuned */
     , (800044, 151,          2) /* HookType - Wall */
     , (800044, 158,          2) /* WieldRequirements - RawSkill */
     , (800044, 159,         34) /* WieldSkillType - WarMagic	 */
     , (800044, 160,        390) /* WieldDifficulty */
     , (800044, 166,         14) /* SlayerCreatureType - Undead */
	 , (800044, 179,        256) /* ImbuedEffect - Electric */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800044,  22, True ) /* Inscribable */
     , (800044,  69, False) /* IsSellable */
     , (800044,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800044,  29,    1.40) /* WeaponDefense */
     , (800044, 138,       3) /* SlayerDamageBonus */
     , (800044, 144,    0.30) /* ManaConversionMod */
     , (800044, 152,       2) /* ElementalDamageMod */
	 , (800044, 156,      .3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800044,   1, 'Cursed Electric Wand') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800044,   1,   33559826) /* Setup */
     , (800044,   3,  536870932) /* SoundTable */
     , (800044,   6,   67111919) /* PaletteBase */
     , (800044,   7,  268436395) /* ClothingBase */
     , (800044,   8,  100688568) /* Icon */
     , (800044,  22,  872415275) /* PhysicsEffectTable */
	 , (800044,  55,       2738) /* ProcSpell - Fire Bolt VII */;
