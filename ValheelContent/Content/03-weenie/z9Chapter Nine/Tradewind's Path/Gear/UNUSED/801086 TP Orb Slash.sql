DELETE FROM `weenie` WHERE `class_Id` = 801086;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801086, 'TP Orb Slash', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801086,   1,      32768) /* ItemType - Caster */
     , (801086,   5,         50) /* EncumbranceVal */
     , (801086,   8,         50) /* Mass */
     , (801086,   9,   16777216) /* ValidLocations - Held */
     , (801086,  16,          1) /* ItemUseable - No */
     , (801086,  18,          1024) /* UiEffects - Magical */
     , (801086,  19,          10) /* Value */
     , (801086,  33,          1) /* Bonded - Bonded */
     , (801086,  45,         1) /* DamageType - Fire */
     , (801086,  46,        512) /* DefaultCombatStyle - Magic */
     , (801086,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801086,  94,         16) /* TargetType - Creature */
     , (801086, 106,        999) /* ItemSpellcraft */
     , (801086, 107,        800) /* ItemCurMana */
     , (801086, 108,        800) /* ItemMaxMana */
     , (801086, 114,          1) /* Attuned - Attuned */
     , (801086, 159,         34) /* WieldSkillType - WarMagic	 */
     , (801086, 160,        390) /* WieldDifficulty */
	 , (801086, 179,    8) /* ImbuedEffect - Phantasmal */
     , (801086, 353,         12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801086,  11, True ) /* IgnoreCollisions */
     , (801086,  13, True ) /* Ethereal */
     , (801086,  14, True ) /* GravityStatus */
     , (801086,  22, True ) /* Inscribable */
     , (801086,  65, True ) /* IgnoreMagicResist */
     , (801086,  66, True ) /* IgnoreMagicArmor */
     , (801086,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801086,   5,  -0.033) /* ManaRate */
     , (801086,  29,    1.20) /* WeaponDefense */
     , (801086,  39,       1) /* DefaultScale */
     , (801086,  76,     0.7) /* Translucency */
     , (801086, 136,     1.1) /* CriticalMultiplier */
     , (801086, 144,     0.3) /* ManaConversionMod */
     , (801086, 147,     0.3) /* CriticalFrequency */
     , (801086, 152,     1.1) /* ElementalDamageMod */
	 , (801086, 156,      .3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801086,   1, 'Tradewind''s Path Slashing Orb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801086,   1,   33558916) /* Setup */
     , (801086,   3,  536870932) /* SoundTable */
     , (801086,   6,   67111919) /* PaletteBase */
     , (801086,   7,  268436199) /* ClothingBase */
     , (801086,   8,  100677063) /* Icon */
     , (801086,  22,  872415275) /* PhysicsEffectTable */
     , (801086,  52,  100689403) /* IconUnderlay */
	 , (801086,  55,       4457) /* ProcSpell - Arcane Pyramid */;
