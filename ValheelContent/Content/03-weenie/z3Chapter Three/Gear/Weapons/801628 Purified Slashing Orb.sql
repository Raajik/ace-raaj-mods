DELETE FROM `weenie` WHERE `class_Id` = 801628;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801628, 'Purified Shlashing Orb', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801628,   1,      32768) /* ItemType - Caster */
     , (801628,   5,         50) /* EncumbranceVal */
     , (801628,   8,         50) /* Mass */
     , (801628,   9,   16777216) /* ValidLocations - Held */
     , (801628,  16,          1) /* ItemUseable - No */
     , (801628,  18,          1) /* UiEffects - Magical */
     , (801628,  19,          2) /* Value */
     , (801628,  33,          1) /* Bonded - Bonded */
     , (801628,  45,         1) /* DamageType - Fire */
     , (801628,  46,        512) /* DefaultCombatStyle - Magic */
     , (801628,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801628,  94,         16) /* TargetType - Creature */
     , (801628, 106,        999) /* ItemSpellcraft */
     , (801628, 107,        800) /* ItemCurMana */
     , (801628, 108,        800) /* ItemMaxMana */
     , (801628, 114,          1) /* Attuned - Attuned */
     , (801628, 159,         34) /* WieldSkillType - WarMagic	 */
     , (801628, 160,        500) /* WieldDifficulty */
	 , (801628, 179,          8) /* ImbuedEffect - Phantasmal */
     , (801628, 353,         12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801628,  11, True ) /* IgnoreCollisions */
     , (801628,  13, True ) /* Ethereal */
     , (801628,  14, True ) /* GravityStatus */
     , (801628,  22, True ) /* Inscribable */
     , (801628,  65, True ) /* IgnoreMagicResist */
     , (801628,  66, True ) /* IgnoreMagicArmor */
     , (801628,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801628,   5,  -0.033) /* ManaRate */
     , (801628,  29,     1.4) /* WeaponDefense */
     , (801628,  39,       1) /* DefaultScale */
     , (801628,  76,     0.7) /* Translucency */
     , (801628, 136,       8) /* CriticalMultiplier */
     , (801628, 144,     0.3) /* ManaConversionMod */
     , (801628, 147,       1) /* CriticalFrequency */
     , (801628, 152,       8) /* ElementalDamageMod */
	 , (801628, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801628,   1, 'Purified Slashing Orb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801628,   1,   33559253) /* Setup */
     , (801628,   3,  536870932) /* SoundTable */
     , (801628,   8,  100677486) /* Icon */
     , (801628,  22,  872415275) /* PhysicsEffectTable */
     , (801628,  27, 1073741873) /* UseUserAnimation - MagicHeal */
     , (801628,  52,  100676444) /* IconUnderlay */
	 , (801628,  55,       5368) /* ProcSpell - Ring of Skulls II */;
