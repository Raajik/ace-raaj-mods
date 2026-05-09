DELETE FROM `weenie` WHERE `class_Id` = 801081;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801081, 'TP Orb Lightning', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801081,   1,      32768) /* ItemType - Caster */
     , (801081,   5,         50) /* EncumbranceVal */
     , (801081,   8,         50) /* Mass */
     , (801081,   9,   16777216) /* ValidLocations - Held */
     , (801081,  16,          1) /* ItemUseable - No */
     , (801081,  18,          64) /* UiEffects - Magical */
     , (801081,  19,          10) /* Value */
     , (801081,  33,          1) /* Bonded - Bonded */
     , (801081,  45,         64) /* DamageType - Pierce */
     , (801081,  46,        512) /* DefaultCombatStyle - Magic */
     , (801081,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801081,  94,         16) /* TargetType - Creature */
     , (801081, 106,        999) /* ItemSpellcraft */
     , (801081, 107,        800) /* ItemCurMana */
     , (801081, 108,        800) /* ItemMaxMana */
     , (801081, 114,          1) /* Attuned - Attuned */
     , (801081, 159,         34) /* WieldSkillType - WarMagic	 */
     , (801081, 160,        390) /* WieldDifficulty */
	 , (801081, 179,    256) /* ImbuedEffect - Phantasmal */
     , (801081, 353,         12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801081,  11, True ) /* IgnoreCollisions */
     , (801081,  13, True ) /* Ethereal */
     , (801081,  14, True ) /* GravityStatus */
     , (801081,  22, True ) /* Inscribable */
     , (801081,  65, True ) /* IgnoreMagicResist */
     , (801081,  66, True ) /* IgnoreMagicArmor */
     , (801081,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801081,   5,  -0.033) /* ManaRate */
     , (801081,  29,    1.20) /* WeaponDefense */
     , (801081,  39,       1) /* DefaultScale */
     , (801081,  76,     0.7) /* Translucency */
     , (801081, 136,     1.1) /* CriticalMultiplier */
     , (801081, 144,     0.3) /* ManaConversionMod */
     , (801081, 147,     0.3) /* CriticalFrequency */
     , (801081, 152,     1.1) /* ElementalDamageMod */
	 , (801081, 156,      .3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801081,   1, 'Tradewind''s Path Lightning Orb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801081,   1,   33558916) /* Setup */
     , (801081,   3,  536870932) /* SoundTable */
     , (801081,   6,   67111919) /* PaletteBase */
     , (801081,   7,  268436199) /* ClothingBase */
     , (801081,   8,  100677063) /* Icon */
     , (801081,  22,  872415275) /* PhysicsEffectTable */
     , (801081,  52,  100689403) /* IconUnderlay */
	 , (801081,  55,       4451) /* ProcSpell - Arcane Pyramid */;
