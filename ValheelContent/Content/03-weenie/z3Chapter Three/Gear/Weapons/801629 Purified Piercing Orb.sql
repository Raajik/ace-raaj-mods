DELETE FROM `weenie` WHERE `class_Id` = 801629;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801629, 'purified pierce orb', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801629,   1,      32768) /* ItemType - Caster */
     , (801629,   5,         50) /* EncumbranceVal */
     , (801629,   8,         50) /* Mass */
     , (801629,   9,   16777216) /* ValidLocations - Held */
     , (801629,  16,          1) /* ItemUseable - No */
     , (801629,  18,          1) /* UiEffects - Magical */
     , (801629,  19,          2) /* Value */
     , (801629,  33,          1) /* Bonded - Bonded */
     , (801629,  45,          2) /* DamageType - Pierce */
     , (801629,  46,        512) /* DefaultCombatStyle - Magic */
     , (801629,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801629,  94,         16) /* TargetType - Creature */
     , (801629, 106,        999) /* ItemSpellcraft */
     , (801629, 107,        800) /* ItemCurMana */
     , (801629, 108,        800) /* ItemMaxMana */
     , (801629, 114,          1) /* Attuned - Attuned */
     , (801629, 159,         34) /* WieldSkillType - WarMagic	 */
     , (801629, 160,        390) /* WieldDifficulty */
	 , (801629, 179,         16) /* ImbuedEffect - Phantasmal */
     , (801629, 353,         12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801629,  11, True ) /* IgnoreCollisions */
     , (801629,  13, True ) /* Ethereal */
     , (801629,  14, True ) /* GravityStatus */
     , (801629,  22, True ) /* Inscribable */
     , (801629,  65, True ) /* IgnoreMagicResist */
     , (801629,  66, True ) /* IgnoreMagicArmor */
     , (801629,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801629,   5,  -0.033) /* ManaRate */
     , (801629,  29,     1.4) /* WeaponDefense */
     , (801629,  39,       1) /* DefaultScale */
     , (801629,  76,     0.7) /* Translucency */
     , (801629, 136,       8) /* CriticalMultiplier */
     , (801629, 144,     0.3) /* ManaConversionMod */
     , (801629, 147,       1) /* CriticalFrequency */
     , (801629, 152,       8) /* ElementalDamageMod */
	 , (801629, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801629,   1, 'Purified Piercing Orb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801629,   1,   33559253) /* Setup */
     , (801629,   3,  536870932) /* SoundTable */
     , (801629,   8,  100677486) /* Icon */
     , (801629,  22,  872415275) /* PhysicsEffectTable */
     , (801629,  27, 1073741873) /* UseUserAnimation - MagicHeal */
     , (801629,  52,  100676443) /* IconUnderlay */
	 , (801629,  55,       5368) /* ProcSpell - Ring of Skulls II */;
