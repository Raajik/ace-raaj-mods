DELETE FROM `weenie` WHERE `class_Id` = 800125;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800125, 'cursed bludg orb', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800125,   1,      32768) /* ItemType - Caster */
     , (800125,   5,         50) /* EncumbranceVal */
     , (800125,   8,         50) /* Mass */
     , (800125,   9,   16777216) /* ValidLocations - Held */
     , (800125,  16,          1) /* ItemUseable - No */
     , (800125,  18,          1) /* UiEffects - Magical */
     , (800125,  19,          2) /* Value */
     , (800125,  33,          1) /* Bonded - Bonded */
     , (800125,  45,          4) /* DamageType - Bludgeon */
     , (800125,  46,        512) /* DefaultCombatStyle - Magic */
     , (800125,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800125,  94,         16) /* TargetType - Creature */
     , (800125, 106,        999) /* ItemSpellcraft */
     , (800125, 107,        800) /* ItemCurMana */
     , (800125, 108,        800) /* ItemMaxMana */
     , (800125, 114,          1) /* Attuned - Attuned */
     , (800125, 159,         34) /* WieldSkillType - WarMagic */
     , (800125, 160,        390) /* WieldDifficulty */
     , (800125, 179,         32) /* ImbuedEffect - BludgeonRending */
     , (800125, 353,         12) /* WeaponType - Magic */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800125,  11, True ) /* IgnoreCollisions */
     , (800125,  13, True ) /* Ethereal */
     , (800125,  14, True ) /* GravityStatus */
     , (800125,  22, True ) /* Inscribable */
     , (800125,  65, True ) /* IgnoreMagicResist */
     , (800125,  66, True ) /* IgnoreMagicArmor */
     , (800125,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800125,   5,  -0.033) /* ManaRate */
     , (800125,  29,    1.25) /* WeaponDefense */
     , (800125,  39,       1) /* DefaultScale */
     , (800125,  76,     0.7) /* Translucency */
     , (800125, 136,     1) /* CriticalMultiplier */
     , (800125, 144,     0.3) /* ManaConversionMod */
     , (800125, 147,     0.01) /* CriticalFrequency */
     , (800125, 152,     1.3) /* ElementalDamageMod */
     , (800125, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800125,   1, 'Cursed Bludgeoning Orb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800125,   1,   33559253) /* Setup */
     , (800125,   3,  536870932) /* SoundTable */
     , (800125,   8,  100677486) /* Icon */
     , (800125,  22,  872415275) /* PhysicsEffectTable */
     , (800125,  27, 1073741873) /* UseUserAnimation - MagicHeal */
     , (800125,  55,         69) /* ProcSpell - Ring of Skulls II */;
