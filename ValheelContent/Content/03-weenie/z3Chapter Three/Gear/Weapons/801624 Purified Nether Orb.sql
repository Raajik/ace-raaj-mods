DELETE FROM `weenie` WHERE `class_Id` = 801624;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801624, 'Purified Nether Orb', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801624,   1,      32768) /* ItemType - Caster */
     , (801624,   5,         50) /* EncumbranceVal */
     , (801624,   8,         50) /* Mass */
     , (801624,   9,   16777216) /* ValidLocations - Held */
     , (801624,  16,          1) /* ItemUseable - No */
     , (801624,  18,          1) /* UiEffects - Magical */
     , (801624,  19,         10) /* Value */
     , (801624,  33,          1) /* Bonded - Bonded */
     , (801624,  45,       1024) /* DamageType - Nether */
     , (801624,  46,        512) /* DefaultCombatStyle - Magic */
     , (801624,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801624,  94,         16) /* TargetType - Creature */
     , (801624, 106,        999) /* ItemSpellcraft */
     , (801624, 107,        800) /* ItemCurMana */
     , (801624, 108,        800) /* ItemMaxMana */
     , (801624, 114,          1) /* Attuned - Attuned */
     , (801624, 159,         14) /* WieldSkillType - ArcaneLore */
     , (801624, 160,        400) /* WieldDifficulty */
     , (801624, 179,      16384) /* ImbuedEffect - NetherRending */
     , (801624, 353,         12) /* WeaponType - Magic */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801624,  11, True ) /* IgnoreCollisions */
     , (801624,  13, True ) /* Ethereal */
     , (801624,  14, True ) /* GravityStatus */
     , (801624,  22, True ) /* Inscribable */
     , (801624,  65, True ) /* IgnoreMagicResist */
     , (801624,  66, True ) /* IgnoreMagicArmor */
     , (801624,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801624,   5,  -0.033) /* ManaRate */
     , (801624,  29,     1.4) /* WeaponDefense */
     , (801624,  39,       1) /* DefaultScale */
     , (801624,  76,     0.7) /* Translucency */
     , (801624, 136,       5) /* CriticalMultiplier */
     , (801624, 144,     0.3) /* ManaConversionMod */
     , (801624, 147,       1) /* CriticalFrequency */
     , (801624, 152,       4) /* ElementalDamageMod */
     , (801624, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801624,   1, 'Purified Nether Orb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801624,   1,   33559253) /* Setup */
     , (801624,   3,  536870932) /* SoundTable */
     , (801624,   8,  100677486) /* Icon */
     , (801624,  22,  872415275) /* PhysicsEffectTable */
     , (801624,  27, 1073741873) /* UseUserAnimation - MagicHeal */
     , (801624,  52,  100689896) /* IconUnderlay */
     , (801624,  55,       5368) /* ProcSpell - Incantation of Nether Arc */;
