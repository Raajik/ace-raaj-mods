DELETE FROM `weenie` WHERE `class_Id` = 801082;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801082, 'TP Orb Acid', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801082,   1,      32768) /* ItemType - Caster */
     , (801082,   5,         50) /* EncumbranceVal */
     , (801082,   8,         50) /* Mass */
     , (801082,   9,   16777216) /* ValidLocations - Held */
     , (801082,  16,          1) /* ItemUseable - No */
     , (801082,  18,          256) /* UiEffects - Magical */
     , (801082,  19,          10) /* Value */
     , (801082,  33,          1) /* Bonded - Bonded */
     , (801082,  45,         32) /* DamageType - Pierce */
     , (801082,  46,        512) /* DefaultCombatStyle - Magic */
     , (801082,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801082,  94,         16) /* TargetType - Creature */
     , (801082, 106,        999) /* ItemSpellcraft */
     , (801082, 107,        800) /* ItemCurMana */
     , (801082, 108,        800) /* ItemMaxMana */
     , (801082, 114,          1) /* Attuned - Attuned */
     , (801082, 159,         34) /* WieldSkillType - WarMagic	 */
     , (801082, 160,        390) /* WieldDifficulty */
	 , (801082, 179,    64) /* ImbuedEffect - Phantasmal */
     , (801082, 353,         12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801082,  11, True ) /* IgnoreCollisions */
     , (801082,  13, True ) /* Ethereal */
     , (801082,  14, True ) /* GravityStatus */
     , (801082,  22, True ) /* Inscribable */
     , (801082,  65, True ) /* IgnoreMagicResist */
     , (801082,  66, True ) /* IgnoreMagicArmor */
     , (801082,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801082,   5,  -0.033) /* ManaRate */
     , (801082,  29,    1.20) /* WeaponDefense */
     , (801082,  39,       1) /* DefaultScale */
     , (801082,  76,     0.7) /* Translucency */
     , (801082, 136,     1.1) /* CriticalMultiplier */
     , (801082, 144,     0.3) /* ManaConversionMod */
     , (801082, 147,     0.3) /* CriticalFrequency */
     , (801082, 152,     1.1) /* ElementalDamageMod */
	 , (801082, 156,      .3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801082,   1, 'Tradewind''s Path Acid Orb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801082,   1,   33558916) /* Setup */
     , (801082,   3,  536870932) /* SoundTable */
     , (801082,   6,   67111919) /* PaletteBase */
     , (801082,   7,  268436199) /* ClothingBase */
     , (801082,   8,  100677063) /* Icon */
     , (801082,  22,  872415275) /* PhysicsEffectTable */
     , (801082,  52,  100689403) /* IconUnderlay */
	 , (801082,  55,       4433) /* ProcSpell - Arcane Pyramid */;
