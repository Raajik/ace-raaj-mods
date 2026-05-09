DELETE FROM `weenie` WHERE `class_Id` = 800126;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800126, 'cursed cold orb', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800126,   1,      32768) /* ItemType - Caster */
     , (800126,   5,         50) /* EncumbranceVal */
     , (800126,   8,         50) /* Mass */
     , (800126,   9,   16777216) /* ValidLocations - Held */
     , (800126,  16,          1) /* ItemUseable - No */
     , (800126,  18,          1) /* UiEffects - Magical */
     , (800126,  19,          2) /* Value */
     , (800126,  33,          1) /* Bonded - Bonded */
     , (800126,  45,          8) /* DamageType - Cold */
     , (800126,  46,        512) /* DefaultCombatStyle - Magic */
     , (800126,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800126,  94,         16) /* TargetType - Creature */
     , (800126, 106,        999) /* ItemSpellcraft */
     , (800126, 107,        800) /* ItemCurMana */
     , (800126, 108,        800) /* ItemMaxMana */
     , (800126, 114,          1) /* Attuned - Attuned */
     , (800126, 159,         34) /* WieldSkillType - WarMagic */
     , (800126, 160,        390) /* WieldDifficulty */
     , (800126, 179,        128) /* ImbuedEffect - ColdRending */
     , (800126, 353,         12) /* WeaponType - Magic */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800126,  11, True ) /* IgnoreCollisions */
     , (800126,  13, True ) /* Ethereal */
     , (800126,  14, True ) /* GravityStatus */
     , (800126,  22, True ) /* Inscribable */
     , (800126,  65, True ) /* IgnoreMagicResist */
     , (800126,  66, True ) /* IgnoreMagicArmor */
     , (800126,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800126,   5,  -0.033) /* ManaRate */
     , (800126,  29,    1.25) /* WeaponDefense */
     , (800126,  39,       1) /* DefaultScale */
     , (800126,  76,     0.7) /* Translucency */
     , (800126, 136,       1) /* CriticalMultiplier */
     , (800126, 144,     0.3) /* ManaConversionMod */
     , (800126, 147,    0.01) /* CriticalFrequency */
     , (800126, 152,     1.3) /* ElementalDamageMod */
     , (800126, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800126,   1, 'Cursed Frost Orb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800126,   1,   33559253) /* Setup */
     , (800126,   3,  536870932) /* SoundTable */
     , (800126,   8,  100677486) /* Icon */
     , (800126,  22,  872415275) /* PhysicsEffectTable */
     , (800126,  27, 1073741873) /* UseUserAnimation - MagicHeal */
     , (800126,  55,         74) /* ProcSpell - Ring of Skulls II */;
