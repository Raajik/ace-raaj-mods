DELETE FROM `weenie` WHERE `class_Id` = 801631;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801631, 'purified Acid orb', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801631,   1,      32768) /* ItemType - Caster */
     , (801631,   5,         50) /* EncumbranceVal */
     , (801631,   8,         50) /* Mass */
     , (801631,   9,   16777216) /* ValidLocations - Held */
     , (801631,  16,          1) /* ItemUseable - No */
     , (801631,  18,          1) /* UiEffects - Magical */
     , (801631,  19,          2) /* Value */
     , (801631,  33,          1) /* Bonded - Bonded */
     , (801631,  45,         32) /* DamageType - Pierce */
     , (801631,  46,        512) /* DefaultCombatStyle - Magic */
     , (801631,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801631,  94,         16) /* TargetType - Creature */
     , (801631, 106,        999) /* ItemSpellcraft */
     , (801631, 107,        800) /* ItemCurMana */
     , (801631, 108,        800) /* ItemMaxMana */
     , (801631, 114,          1) /* Attuned - Attuned */
     , (801631, 159,         34) /* WieldSkillType - WarMagic	 */
     , (801631, 160,        390) /* WieldDifficulty */
	 , (801631, 179,         64) /* ImbuedEffect - Phantasmal */
     , (801631, 353,         12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801631,  11, True ) /* IgnoreCollisions */
     , (801631,  13, True ) /* Ethereal */
     , (801631,  14, True ) /* GravityStatus */
     , (801631,  22, True ) /* Inscribable */
     , (801631,  65, True ) /* IgnoreMagicResist */
     , (801631,  66, True ) /* IgnoreMagicArmor */
     , (801631,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801631,   5,  -0.033) /* ManaRate */
     , (801631,  29,     1.4) /* WeaponDefense */
     , (801631,  39,       1) /* DefaultScale */
     , (801631,  76,     0.7) /* Translucency */
     , (801631, 136,       8) /* CriticalMultiplier */
     , (801631, 144,     0.3) /* ManaConversionMod */
     , (801631, 147,       1) /* CriticalFrequency */
     , (801631, 152,       8) /* ElementalDamageMod */
	 , (801631, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801631,   1, 'Purified Acid Orb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801631,   1,   33559253) /* Setup */
     , (801631,   3,  536870932) /* SoundTable */
     , (801631,   8,  100677486) /* Icon */
     , (801631,  22,  872415275) /* PhysicsEffectTable */
     , (801631,  27, 1073741873) /* UseUserAnimation - MagicHeal */
     , (801631,  52,  100676437) /* IconUnderlay */
	 , (801631,  55,       5368) /* ProcSpell - Ring of Skulls II */;
