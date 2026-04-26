DELETE FROM `weenie` WHERE `class_Id` = 800047;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800047, 'cursednether', 35, '2021-11-01 00:00:00') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800047,   1,      32768) /* ItemType - Caster */
     , (800047,   3,         14) /* PaletteTemplate - LootGenRed */
     , (800047,   5,        150) /* EncumbranceVal */
     , (800047,   9,   16777216) /* ValidLocations - Held */
     , (800047,  16,          1) /* ItemUseable - No */
     , (800047,  18,          1) /* UiEffects - Magical */
     , (800047,  19,          1) /* Value */
     , (800047,  33,          1) /* Bonded - Bonded */
     , (800047,  36,       9999) /* ResistMagic */
     , (800047,  45,         16) /* DamageType - Fire */
     , (800047,  46,        512) /* DefaultCombatStyle - Magic */
     , (800047,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800047,  94,         16) /* TargetType - Creature */
     , (800047, 114,          1) /* Attuned - Attuned */
     , (800047, 151,          2) /* HookType - Wall */
     , (800047, 158,          2) /* WieldRequirements - RawSkill */
     , (800047, 159,         34) /* WieldSkillType - WarMagic	 */
     , (800047, 160,        390) /* WieldDifficulty */
     , (800047, 166,         14) /* SlayerCreatureType - Undead */
	 , (800047, 179,      16384) /* ImbuedEffect - Nether */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800047,  22, True ) /* Inscribable */
     , (800047,  69, False) /* IsSellable */
     , (800047,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800047,  29,    1.40) /* WeaponDefense */
     , (800047, 138,       3) /* SlayerDamageBonus */
     , (800047, 144,    0.30) /* ManaConversionMod */
     , (800047, 152,       2) /* ElementalDamageMod */
	 , (800047, 156,      .3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800047,   1, 'Cursed Nether Wand') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800047,   1,   33559826) /* Setup */
     , (800047,   3,  536870932) /* SoundTable */
     , (800047,   6,   67111919) /* PaletteBase */
     , (800047,   7,  268436395) /* ClothingBase */
     , (800047,   8,  100688568) /* Icon */
     , (800047,  22,  872415275) /* PhysicsEffectTable */
	 , (800047,  55,       5367) /* ProcSpell - Fire Bolt VII */;
