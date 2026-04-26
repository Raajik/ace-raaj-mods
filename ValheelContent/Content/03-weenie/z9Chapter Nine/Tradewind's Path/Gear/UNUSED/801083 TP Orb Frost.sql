DELETE FROM `weenie` WHERE `class_Id` = 801083;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801083, 'TP Orb Frost', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801083,   1,      32768) /* ItemType - Caster */
     , (801083,   5,         50) /* EncumbranceVal */
     , (801083,   8,         50) /* Mass */
     , (801083,   9,   16777216) /* ValidLocations - Held */
     , (801083,  16,          1) /* ItemUseable - No */
     , (801083,  18,          128) /* UiEffects - Magical */
     , (801083,  19,          10) /* Value */
     , (801083,  33,          1) /* Bonded - Bonded */
     , (801083,  45,         8) /* DamageType - Pierce */
     , (801083,  46,        512) /* DefaultCombatStyle - Magic */
     , (801083,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801083,  94,         16) /* TargetType - Creature */
     , (801083, 106,        999) /* ItemSpellcraft */
     , (801083, 107,        800) /* ItemCurMana */
     , (801083, 108,        800) /* ItemMaxMana */
     , (801083, 114,          1) /* Attuned - Attuned */
     , (801083, 159,         34) /* WieldSkillType - WarMagic	 */
     , (801083, 160,        390) /* WieldDifficulty */
	 , (801083, 179,        128) /* ImbuedEffect - Cold */
     , (801083, 353,         12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801083,  11, True ) /* IgnoreCollisions */
     , (801083,  13, True ) /* Ethereal */
     , (801083,  14, True ) /* GravityStatus */
     , (801083,  22, True ) /* Inscribable */
     , (801083,  65, True ) /* IgnoreMagicResist */
     , (801083,  66, True ) /* IgnoreMagicArmor */
     , (801083,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801083,   5,  -0.033) /* ManaRate */
     , (801083,  29,    1.20) /* WeaponDefense */
     , (801083,  39,       1) /* DefaultScale */
     , (801083,  76,     0.7) /* Translucency */
     , (801083, 136,     1.1) /* CriticalMultiplier */
     , (801083, 144,     0.3) /* ManaConversionMod */
     , (801083, 147,     0.3) /* CriticalFrequency */
     , (801083, 152,     1.1) /* ElementalDamageMod */
	 , (801083, 156,      .3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801083,   1, 'Tradewind''s Path Frost Orb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801083,   1,   33558916) /* Setup */
     , (801083,   3,  536870932) /* SoundTable */
     , (801083,   6,   67111919) /* PaletteBase */
     , (801083,   7,  268436199) /* ClothingBase */
     , (801083,   8,  100677063) /* Icon */
     , (801083,  22,  872415275) /* PhysicsEffectTable */
     , (801083,  52,  100689403) /* IconUnderlay */
	 , (801083,  55,       4447) /* ProcSpell - Arcane Pyramid */;
