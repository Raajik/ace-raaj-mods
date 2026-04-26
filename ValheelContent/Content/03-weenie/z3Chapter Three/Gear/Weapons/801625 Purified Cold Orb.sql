DELETE FROM `weenie` WHERE `class_Id` = 801625;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801625, 'PurifiedColdOrb', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801625,   1,      32768) /* ItemType - Caster */
     , (801625,   5,         50) /* EncumbranceVal */
     , (801625,   8,         50) /* Mass */
     , (801625,   9,   16777216) /* ValidLocations - Held */
     , (801625,  16,          1) /* ItemUseable - No */
     , (801625,  18,          1) /* UiEffects - Magical */
     , (801625,  19,          2) /* Value */
     , (801625,  33,          1) /* Bonded - Bonded */
     , (801625,  45,          8) /* DamageType - Pierce */
     , (801625,  46,        512) /* DefaultCombatStyle - Magic */
     , (801625,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801625,  94,         16) /* TargetType - Creature */
     , (801625, 106,        999) /* ItemSpellcraft */
     , (801625, 107,        800) /* ItemCurMana */
     , (801625, 108,        800) /* ItemMaxMana */
     , (801625, 114,          1) /* Attuned - Attuned */
     , (801625, 159,         34) /* WieldSkillType - WarMagic	 */
     , (801625, 160,        500) /* WieldDifficulty */
	 , (801625, 179,        128) /* ImbuedEffect - Cold */
     , (801625, 353,         12) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801625,  11, True ) /* IgnoreCollisions */
     , (801625,  13, True ) /* Ethereal */
     , (801625,  14, True ) /* GravityStatus */
     , (801625,  22, True ) /* Inscribable */
     , (801625,  65, True ) /* IgnoreMagicResist */
     , (801625,  66, True ) /* IgnoreMagicArmor */
     , (801625,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801625,   5,  -0.033) /* ManaRate */
     , (801625,  29,     1.4) /* WeaponDefense */
     , (801625,  39,       1) /* DefaultScale */
     , (801625,  76,     0.7) /* Translucency */
     , (801625, 136,       8) /* CriticalMultiplier */
     , (801625, 144,     0.3) /* ManaConversionMod */
     , (801625, 147,       1) /* CriticalFrequency */
     , (801625, 152,       8) /* ElementalDamageMod */
	 , (801625, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801625,   1, 'Purified Frost Orb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801625,   1,   33559253) /* Setup */
     , (801625,   3,  536870932) /* SoundTable */
     , (801625,   8,  100677486) /* Icon */
     , (801625,  22,  872415275) /* PhysicsEffectTable */
     , (801625,  27, 1073741873) /* UseUserAnimation - MagicHeal */
     , (801625,  52,  100676435) /* IconUnderlay */
	 , (801625,  55,       5368) /* ProcSpell - Ring of Skulls II */;
