DELETE FROM `weenie` WHERE `class_Id` = 801094;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801094, 'TP Orb Nether', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801094,   1,      32768) /* ItemType - Caster */
     , (801094,   5,         50) /* EncumbranceVal */
     , (801094,   8,         50) /* Mass */
     , (801094,   9,   16777216) /* ValidLocations - Held */
     , (801094,  16,          1) /* ItemUseable - No */
     , (801094,  18,       4096) /* UiEffects - Magical */
     , (801094,  19,         70) /* Value */
     , (801094,  33,          1) /* Bonded - Bonded */
     , (801094,  45,       1024) /* DamageType - Fire */
     , (801094,  46,        512) /* DefaultCombatStyle - Magic */
     , (801094,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801094,  94,         16) /* TargetType - Creature */
     , (801094, 106,        999) /* ItemSpellcraft */
     , (801094, 107,        800) /* ItemCurMana */
     , (801094, 108,        800) /* ItemMaxMana */
     , (801094, 114,          1) /* Attuned - Attuned */
     , (801094, 159,         34) /* WieldSkillType - WarMagic	 */
     , (801094, 160,        390) /* WieldDifficulty */
	 , (801094, 179,      16384) /* ImbuedEffect - Phantasmal */
     , (801094, 353,         12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801094,  11, True ) /* IgnoreCollisions */
     , (801094,  13, True ) /* Ethereal */
     , (801094,  14, True ) /* GravityStatus */
     , (801094,  22, True ) /* Inscribable */
     , (801094,  65, True ) /* IgnoreMagicResist */
     , (801094,  66, True ) /* IgnoreMagicArmor */
     , (801094,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801094,   5,  -0.033) /* ManaRate */
     , (801094,  29,     1.4) /* WeaponDefense */
     , (801094,  39,       1) /* DefaultScale */
     , (801094,  76,       1) /* Translucency */
     , (801094, 144,     0.3) /* ManaConversionMod */
     , (801094, 152,       1.5) /* ElementalDamageMod */
	 , (801094, 156,      .3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801094,   1, 'Tradewind''s Path Nether Orb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801094,   1,   33558916) /* Setup */
     , (801094,   3,  536870932) /* SoundTable */
     , (801094,   6,   67111919) /* PaletteBase */
     , (801094,   7,  268436199) /* ClothingBase */
     , (801094,   8,  100677063) /* Icon */
     , (801094,  22,  872415275) /* PhysicsEffectTable */
     , (801094,  52,  100689403) /* IconUnderlay */
	 , (801094,  55,       5356) /* ProcSpell - Arcane Pyramid */;
