DELETE FROM `weenie` WHERE `class_Id` = 801872;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801872, 'Aerlite Cultist Orb', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801872,   1,      32768) /* ItemType - Caster */
     , (801872,   5,         50) /* EncumbranceVal */
     , (801872,   8,         50) /* Mass */
     , (801872,   9,   16777216) /* ValidLocations - Held */
     , (801872,  16,          1) /* ItemUseable - No */
     , (801872,  18,          1) /* UiEffects - Magical */
     , (801872,  19,          2) /* Value */
     , (801872,  33,          1) /* Bonded - Bonded */
     , (801872,  45,         16) /* DamageType - Fire */
     , (801872,  46,        512) /* DefaultCombatStyle - Magic */
     , (801872,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801872,  94,         16) /* TargetType - Creature */
     , (801872, 106,        999) /* ItemSpellcraft */
     , (801872, 107,        800) /* ItemCurMana */
     , (801872, 108,        800) /* ItemMaxMana */
     , (801872, 114,          1) /* Attuned - Attuned */
     , (801872, 159,         34) /* WieldSkillType - WarMagic	 */
     , (801872, 160,        500) /* WieldDifficulty */
	 , (801872, 179,        512) /* ImbuedEffect - Phantasmal */
     , (801872, 353,         12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801872,  11, True ) /* IgnoreCollisions */
     , (801872,  13, True ) /* Ethereal */
     , (801872,  14, True ) /* GravityStatus */
     , (801872,  22, True ) /* Inscribable */
     , (801872,  65, True ) /* IgnoreMagicResist */
     , (801872,  66, True ) /* IgnoreMagicArmor */
     , (801872,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801872,   5,  -0.033) /* ManaRate */
     , (801872,  29,       1) /* WeaponDefense */
     , (801872,  39,       1) /* DefaultScale */
     , (801872,  76,     0.7) /* Translucency */
     , (801872, 136,       2) /* CriticalMultiplier */
     , (801872, 144,     0.3) /* ManaConversionMod */
     , (801872, 147,       1) /* CriticalFrequency */
     , (801872, 152,       2) /* ElementalDamageMod */
	 , (801872, 156,      .25) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801872,   1, 'Aerlite Cultist Orb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801872,   1,   33559253) /* Setup */
     , (801872,   3,  536870932) /* SoundTable */
     , (801872,   8,  100677486) /* Icon */
     , (801872,  22,  872415275) /* PhysicsEffectTable */
     , (801872,  27, 1073741873) /* UseUserAnimation - MagicHeal */
     , (801872,  52,  100676441) /* IconUnderlay */
	 , (801872,  55,       5368) /* ProcSpell - Ring of Skulls II */;
