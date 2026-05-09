DELETE FROM `weenie` WHERE `class_Id` = 801627;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801627, 'Purified Fire Orb', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801627,   1,      32768) /* ItemType - Caster */
     , (801627,   5,         50) /* EncumbranceVal */
     , (801627,   8,         50) /* Mass */
     , (801627,   9,   16777216) /* ValidLocations - Held */
     , (801627,  16,          1) /* ItemUseable - No */
     , (801627,  18,          1) /* UiEffects - Magical */
     , (801627,  19,          2) /* Value */
     , (801627,  33,          1) /* Bonded - Bonded */
     , (801627,  45,         16) /* DamageType - Fire */
     , (801627,  46,        512) /* DefaultCombatStyle - Magic */
     , (801627,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801627,  94,         16) /* TargetType - Creature */
     , (801627, 106,        999) /* ItemSpellcraft */
     , (801627, 107,        800) /* ItemCurMana */
     , (801627, 108,        800) /* ItemMaxMana */
     , (801627, 114,          1) /* Attuned - Attuned */
     , (801627, 159,         34) /* WieldSkillType - WarMagic	 */
     , (801627, 160,        500) /* WieldDifficulty */
	 , (801627, 179,        512) /* ImbuedEffect - Phantasmal */
     , (801627, 353,         12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801627,  11, True ) /* IgnoreCollisions */
     , (801627,  13, True ) /* Ethereal */
     , (801627,  14, True ) /* GravityStatus */
     , (801627,  22, True ) /* Inscribable */
     , (801627,  65, True ) /* IgnoreMagicResist */
     , (801627,  66, True ) /* IgnoreMagicArmor */
     , (801627,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801627,   5,  -0.033) /* ManaRate */
     , (801627,  29,     1.4) /* WeaponDefense */
     , (801627,  39,       1) /* DefaultScale */
     , (801627,  76,     0.7) /* Translucency */
     , (801627, 136,       8) /* CriticalMultiplier */
     , (801627, 144,     0.3) /* ManaConversionMod */
     , (801627, 147,       1) /* CriticalFrequency */
     , (801627, 152,       8) /* ElementalDamageMod */
	 , (801627, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801627,   1, 'Purified Fire Orb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801627,   1,   33559253) /* Setup */
     , (801627,   3,  536870932) /* SoundTable */
     , (801627,   8,  100677486) /* Icon */
     , (801627,  22,  872415275) /* PhysicsEffectTable */
     , (801627,  27, 1073741873) /* UseUserAnimation - MagicHeal */
     , (801627,  52,  100676441) /* IconUnderlay */
	 , (801627,  55,       5368) /* ProcSpell - Ring of Skulls II */;
