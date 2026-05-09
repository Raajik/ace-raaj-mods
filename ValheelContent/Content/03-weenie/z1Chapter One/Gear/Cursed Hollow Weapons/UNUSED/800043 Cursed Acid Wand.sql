DELETE FROM `weenie` WHERE `class_Id` = 800043;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800043, 'cursedacid', 35, '2021-11-01 00:00:00') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800043,   1,      32768) /* ItemType - Caster */
     , (800043,   3,         14) /* PaletteTemplate - LootGenRed */
     , (800043,   5,        150) /* EncumbranceVal */
     , (800043,   9,   16777216) /* ValidLocations - Held */
     , (800043,  16,          1) /* ItemUseable - No */
     , (800043,  18,          1) /* UiEffects - Magical */
     , (800043,  19,          1) /* Value */
     , (800043,  33,          1) /* Bonded - Bonded */
     , (800043,  36,       9999) /* ResistMagic */
     , (800043,  45,         16) /* DamageType - Fire */
     , (800043,  46,        512) /* DefaultCombatStyle - Magic */
     , (800043,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800043,  94,         16) /* TargetType - Creature */
     , (800043, 114,          1) /* Attuned - Attuned */
     , (800043, 151,          2) /* HookType - Wall */
     , (800043, 158,          2) /* WieldRequirements - RawSkill */
     , (800043, 159,         34) /* WieldSkillType - WarMagic	 */
     , (800043, 160,        390) /* WieldDifficulty */
     , (800043, 166,         14) /* SlayerCreatureType - Undead */
	 , (800043, 179,         64) /* ImbuedEffect - Bludgeoning */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800043,  22, True ) /* Inscribable */
     , (800043,  69, False) /* IsSellable */
     , (800043,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800043,  29,    1.40) /* WeaponDefense */
     , (800043, 138,       3) /* SlayerDamageBonus */
     , (800043, 144,    0.30) /* ManaConversionMod */
     , (800043, 152,       2) /* ElementalDamageMod */
	 , (800043, 156,      .3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800043,   1, 'Cursed Acid Wand') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800043,   1,   33559826) /* Setup */
     , (800043,   3,  536870932) /* SoundTable */
     , (800043,   6,   67111919) /* PaletteBase */
     , (800043,   7,  268436395) /* ClothingBase */
     , (800043,   8,  100688568) /* Icon */
     , (800043,  22,  872415275) /* PhysicsEffectTable */
	 , (800043,  55,       2717) /* ProcSpell - Fire Bolt VII */;
