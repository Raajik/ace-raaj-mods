DELETE FROM `weenie` WHERE `class_Id` = 800124;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800124, 'cursed pierce orb', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800124,   1,      32768) /* ItemType - Caster */
     , (800124,   5,         50) /* EncumbranceVal */
     , (800124,   8,         50) /* Mass */
     , (800124,   9,   16777216) /* ValidLocations - Held */
     , (800124,  16,          1) /* ItemUseable - No */
     , (800124,  18,          1) /* UiEffects - Magical */
     , (800124,  19,          2) /* Value */
     , (800124,  33,          1) /* Bonded - Bonded */
     , (800124,  45,          2) /* DamageType - Pierce */
     , (800124,  46,        512) /* DefaultCombatStyle - Magic */
     , (800124,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800124,  94,         16) /* TargetType - Creature */
     , (800124, 106,        999) /* ItemSpellcraft */
     , (800124, 107,        800) /* ItemCurMana */
     , (800124, 108,        800) /* ItemMaxMana */
     , (800124, 114,          1) /* Attuned - Attuned */
     , (800124, 159,         34) /* WieldSkillType - WarMagic */
     , (800124, 160,        390) /* WieldDifficulty */
     , (800124, 179,         16) /* ImbuedEffect - PierceRending */
     , (800124, 353,         12) /* WeaponType - Magic */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800124,  11, True ) /* IgnoreCollisions */
     , (800124,  13, True ) /* Ethereal */
     , (800124,  14, True ) /* GravityStatus */
     , (800124,  22, True ) /* Inscribable */
     , (800124,  65, True ) /* IgnoreMagicResist */
     , (800124,  66, True ) /* IgnoreMagicArmor */
     , (800124,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800124,   5,  -0.033) /* ManaRate */
     , (800124,  29,    1.25) /* WeaponDefense */
     , (800124,  39,       1) /* DefaultScale */
     , (800124,  76,     0.7) /* Translucency */
     , (800124, 136,       1) /* CriticalMultiplier */
     , (800124, 144,     0.3) /* ManaConversionMod */
     , (800124, 147,     0.01) /* CriticalFrequency */
     , (800124, 152,     1.3) /* ElementalDamageMod */
     , (800124, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800124,   1, 'Cursed Piercing Orb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800124,   1,   33559253) /* Setup */
     , (800124,   3,  536870932) /* SoundTable */
     , (800124,   8,  100677486) /* Icon */
     , (800124,  22,  872415275) /* PhysicsEffectTable */
     , (800124,  27, 1073741873) /* UseUserAnimation - MagicHeal */
     , (800124,  55,         91) /* ProcSpell - Ring of Skulls II */;
