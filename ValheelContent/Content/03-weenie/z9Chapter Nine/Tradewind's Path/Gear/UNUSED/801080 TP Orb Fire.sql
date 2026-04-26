DELETE FROM `weenie` WHERE `class_Id` = 801080;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801080, 'TP Orb Fire', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801080,   1,      32768) /* ItemType - Caster */
     , (801080,   5,         50) /* EncumbranceVal */
     , (801080,   8,         50) /* Mass */
     , (801080,   9,   16777216) /* ValidLocations - Held */
     , (801080,  16,          1) /* ItemUseable - No */
     , (801080,  18,         32) /* UiEffects - Magical */
     , (801080,  19,         10) /* Value */
     , (801080,  33,          1) /* Bonded - Bonded */
     , (801080,  45,         16) /* DamageType - Fire */
     , (801080,  46,        512) /* DefaultCombatStyle - Magic */
     , (801080,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801080,  94,         16) /* TargetType - Creature */
     , (801080, 106,        999) /* ItemSpellcraft */
     , (801080, 107,        800) /* ItemCurMana */
     , (801080, 108,        800) /* ItemMaxMana */
     , (801080, 114,          1) /* Attuned - Attuned */
     , (801080, 159,         34) /* WieldSkillType - WarMagic	 */
     , (801080, 160,        390) /* WieldDifficulty */
	 , (801080, 179,        512) /* ImbuedEffect - Phantasmal */
     , (801080, 353,         12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801080,  11, True ) /* IgnoreCollisions */
     , (801080,  13, True ) /* Ethereal */
     , (801080,  14, True ) /* GravityStatus */
     , (801080,  22, True ) /* Inscribable */
     , (801080,  65, True ) /* IgnoreMagicResist */
     , (801080,  66, True ) /* IgnoreMagicArmor */
     , (801080,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801080,   5,  -0.033) /* ManaRate */
     , (801080,  29,    1.20) /* WeaponDefense */
     , (801080,  39,       1) /* DefaultScale */
     , (801080,  76,     0.7) /* Translucency */
     , (801080, 136,     1.1) /* CriticalMultiplier */
     , (801080, 144,     0.3) /* ManaConversionMod */
     , (801080, 147,     0.3) /* CriticalFrequency */
     , (801080, 152,     1.1) /* ElementalDamageMod */
	 , (801080, 156,      .3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801080,   1, 'Tradewind''s Path Fire Orb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801080,   1,   33558916) /* Setup */
     , (801080,   3,  536870932) /* SoundTable */
     , (801080,   6,   67111919) /* PaletteBase */
     , (801080,   7,  268436199) /* ClothingBase */
     , (801080,   8,  100677063) /* Icon */
     , (801080,  22,  872415275) /* PhysicsEffectTable */
     , (801080,  52,  100689403) /* IconUnderlay */
	 , (801080,  55,       4439) /* ProcSpell - Arcane Pyramid */;
