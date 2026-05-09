DELETE FROM `weenie` WHERE `class_Id` = 801084;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801084, 'TP Orb Blunt', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801084,   1,      32768) /* ItemType - Caster */
     , (801084,   5,         50) /* EncumbranceVal */
     , (801084,   8,         50) /* Mass */
     , (801084,   9,   16777216) /* ValidLocations - Held */
     , (801084,  16,          1) /* ItemUseable - No */
     , (801084,  18,          512) /* UiEffects - Magical */
     , (801084,  19,          10) /* Value */
     , (801084,  33,          1) /* Bonded - Bonded */
     , (801084,  45,         4) /* DamageType - Pierce */
     , (801084,  46,        512) /* DefaultCombatStyle - Magic */
     , (801084,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801084,  94,         16) /* TargetType - Creature */
     , (801084, 106,        999) /* ItemSpellcraft */
     , (801084, 107,        800) /* ItemCurMana */
     , (801084, 108,        800) /* ItemMaxMana */
     , (801084, 114,          1) /* Attuned - Attuned */
     , (801084, 159,         34) /* WieldSkillType - WarMagic	 */
     , (801084, 160,        390) /* WieldDifficulty */
	 , (801084, 179,    32) /* ImbuedEffect - Phantasmal */
     , (801084, 353,         12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801084,  11, True ) /* IgnoreCollisions */
     , (801084,  13, True ) /* Ethereal */
     , (801084,  14, True ) /* GravityStatus */
     , (801084,  22, True ) /* Inscribable */
     , (801084,  65, True ) /* IgnoreMagicResist */
     , (801084,  66, True ) /* IgnoreMagicArmor */
     , (801084,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801084,   5,  -0.033) /* ManaRate */
     , (801084,  29,    1.20) /* WeaponDefense */
     , (801084,  39,       1) /* DefaultScale */
     , (801084,  76,     0.7) /* Translucency */
     , (801084, 136,     1.1) /* CriticalMultiplier */
     , (801084, 144,     0.3) /* ManaConversionMod */
     , (801084, 147,     0.3) /* CriticalFrequency */
     , (801084, 152,     1.1) /* ElementalDamageMod */
	 , (801084, 156,      .3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801084,   1, 'Tradewind''s Path Bludgeoning Orb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801084,   1,   33558916) /* Setup */
     , (801084,   3,  536870932) /* SoundTable */
     , (801084,   6,   67111919) /* PaletteBase */
     , (801084,   7,  268436199) /* ClothingBase */
     , (801084,   8,  100677063) /* Icon */
     , (801084,  22,  872415275) /* PhysicsEffectTable */
     , (801084,  52,  100689403) /* IconUnderlay */
	 , (801084,  55,       4455) /* ProcSpell - Arcane Pyramid */;
