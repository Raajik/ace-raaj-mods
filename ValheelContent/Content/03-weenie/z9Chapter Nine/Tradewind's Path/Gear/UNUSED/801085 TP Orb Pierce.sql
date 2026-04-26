DELETE FROM `weenie` WHERE `class_Id` = 801085;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801085, 'TP Orb Pierce', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801085,   1,      32768) /* ItemType - Caster */
     , (801085,   5,         50) /* EncumbranceVal */
     , (801085,   8,         50) /* Mass */
     , (801085,   9,   16777216) /* ValidLocations - Held */
     , (801085,  16,          1) /* ItemUseable - No */
     , (801085,  18,       2048) /* UiEffects - Magical */
     , (801085,  19,         10) /* Value */
     , (801085,  33,          1) /* Bonded - Bonded */
     , (801085,  45,          2) /* DamageType - Pierce */
     , (801085,  46,        512) /* DefaultCombatStyle - Magic */
     , (801085,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801085,  94,         16) /* TargetType - Creature */
     , (801085, 106,        999) /* ItemSpellcraft */
     , (801085, 107,        800) /* ItemCurMana */
     , (801085, 108,        800) /* ItemMaxMana */
     , (801085, 114,          1) /* Attuned - Attuned */
     , (801085, 159,         34) /* WieldSkillType - WarMagic	 */
     , (801085, 160,        390) /* WieldDifficulty */
	 , (801085, 179,         16) /* ImbuedEffect - Phantasmal */
     , (801085, 353,         12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801085,  11, True ) /* IgnoreCollisions */
     , (801085,  13, True ) /* Ethereal */
     , (801085,  14, True ) /* GravityStatus */
     , (801085,  22, True ) /* Inscribable */
     , (801085,  65, True ) /* IgnoreMagicResist */
     , (801085,  66, True ) /* IgnoreMagicArmor */
     , (801085,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801085,   5,  -0.033) /* ManaRate */
     , (801085,  29,    1.20) /* WeaponDefense */
     , (801085,  39,       1) /* DefaultScale */
     , (801085,  76,     0.7) /* Translucency */
     , (801085, 136,     1.1) /* CriticalMultiplier */
     , (801085, 144,     0.3) /* ManaConversionMod */
     , (801085, 147,     0.3) /* CriticalFrequency */
     , (801085, 152,     1.1) /* ElementalDamageMod */
	 , (801085, 156,      .3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801085,   1, 'Tradewind''s Path Piercing Orb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801085,   1,   33558916) /* Setup */
     , (801085,   3,  536870932) /* SoundTable */
     , (801085,   6,   67111919) /* PaletteBase */
     , (801085,   7,  268436199) /* ClothingBase */
     , (801085,   8,  100677063) /* Icon */
     , (801085,  22,  872415275) /* PhysicsEffectTable */
     , (801085,  52,  100689403) /* IconUnderlay */
	 , (801085,  55,       4443) /* ProcSpell - Arcane Pyramid */;
