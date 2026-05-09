DELETE FROM `weenie` WHERE `class_Id` = 800127;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800127, 'cursed Acid orb', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800127,   1,      32768) /* ItemType - Caster */
     , (800127,   5,         50) /* EncumbranceVal */
     , (800127,   8,         50) /* Mass */
     , (800127,   9,   16777216) /* ValidLocations - Held */
     , (800127,  16,          1) /* ItemUseable - No */
     , (800127,  18,          1) /* UiEffects - Magical */
     , (800127,  19,          2) /* Value */
     , (800127,  33,          1) /* Bonded - Bonded */
     , (800127,  45,         32) /* DamageType - Acid */
     , (800127,  46,        512) /* DefaultCombatStyle - Magic */
     , (800127,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800127,  94,         16) /* TargetType - Creature */
     , (800127, 106,        999) /* ItemSpellcraft */
     , (800127, 107,        800) /* ItemCurMana */
     , (800127, 108,        800) /* ItemMaxMana */
     , (800127, 114,          1) /* Attuned - Attuned */
     , (800127, 159,         34) /* WieldSkillType - WarMagic */
     , (800127, 160,        390) /* WieldDifficulty */
     , (800127, 179,         64) /* ImbuedEffect - AcidRending */
     , (800127, 353,         12) /* WeaponType - Magic */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800127,  11, True ) /* IgnoreCollisions */
     , (800127,  13, True ) /* Ethereal */
     , (800127,  14, True ) /* GravityStatus */
     , (800127,  22, True ) /* Inscribable */
     , (800127,  65, True ) /* IgnoreMagicResist */
     , (800127,  66, True ) /* IgnoreMagicArmor */
     , (800127,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800127,   5,  -0.033) /* ManaRate */
     , (800127,  29,    1.25) /* WeaponDefense */
     , (800127,  39,       1) /* DefaultScale */
     , (800127,  76,     0.7) /* Translucency */
     , (800127, 136,     1) /* CriticalMultiplier */
     , (800127, 144,     0.3) /* ManaConversionMod */
     , (800127, 147,     0.01) /* CriticalFrequency */
     , (800127, 152,     1.3) /* ElementalDamageMod */
     , (800127, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800127,   1, 'Cursed Acid Orb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800127,   1,   33559253) /* Setup */
     , (800127,   3,  536870932) /* SoundTable */
     , (800127,   8,  100677486) /* Icon */
     , (800127,  22,  872415275) /* PhysicsEffectTable */
     , (800127,  27, 1073741873) /* UseUserAnimation - MagicHeal */
     , (800127,  55,         63) /* ProcSpell - Ring of Skulls II */;
