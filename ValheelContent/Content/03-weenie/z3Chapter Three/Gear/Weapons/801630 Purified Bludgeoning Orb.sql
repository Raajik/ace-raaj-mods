DELETE FROM `weenie` WHERE `class_Id` = 801630;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801630, 'purified bludg orb', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801630,   1,      32768) /* ItemType - Caster */
     , (801630,   5,         50) /* EncumbranceVal */
     , (801630,   8,         50) /* Mass */
     , (801630,   9,   16777216) /* ValidLocations - Held */
     , (801630,  16,          1) /* ItemUseable - No */
     , (801630,  18,          1) /* UiEffects - Magical */
     , (801630,  19,          2) /* Value */
     , (801630,  33,          1) /* Bonded - Bonded */
     , (801630,  45,          4) /* DamageType - Pierce */
     , (801630,  46,        512) /* DefaultCombatStyle - Magic */
     , (801630,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801630,  94,         16) /* TargetType - Creature */
     , (801630, 106,        999) /* ItemSpellcraft */
     , (801630, 107,        800) /* ItemCurMana */
     , (801630, 108,        800) /* ItemMaxMana */
     , (801630, 114,          1) /* Attuned - Attuned */
     , (801630, 159,         34) /* WieldSkillType - WarMagic	 */
     , (801630, 160,        400) /* WieldDifficulty */
	 , (801630, 179,         32) /* ImbuedEffect - Phantasmal */
     , (801630, 353,         12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801630,  11, True ) /* IgnoreCollisions */
     , (801630,  13, True ) /* Ethereal */
     , (801630,  14, True ) /* GravityStatus */
     , (801630,  22, True ) /* Inscribable */
     , (801630,  65, True ) /* IgnoreMagicResist */
     , (801630,  66, True ) /* IgnoreMagicArmor */
     , (801630,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801630,   5,  -0.033) /* ManaRate */
     , (801630,  29,     1.4) /* WeaponDefense */
     , (801630,  39,       1) /* DefaultScale */
     , (801630,  76,     0.7) /* Translucency */
     , (801630, 136,       8) /* CriticalMultiplier */
     , (801630, 144,     0.3) /* ManaConversionMod */
     , (801630, 147,       1) /* CriticalFrequency */
     , (801630, 152,       8) /* ElementalDamageMod */
	 , (801630, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801630,   1, 'Purified Bludgeoning Orb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801630,   1,   33559253) /* Setup */
     , (801630,   3,  536870932) /* SoundTable */
     , (801630,   8,  100677486) /* Icon */
     , (801630,  22,  872415275) /* PhysicsEffectTable */
     , (801630,  27, 1073741873) /* UseUserAnimation - MagicHeal */
     , (801630,  52,  100676442) /* IconUnderlay */
	 , (801630,  55,       5368) /* ProcSpell - Ring of Skulls II */;
