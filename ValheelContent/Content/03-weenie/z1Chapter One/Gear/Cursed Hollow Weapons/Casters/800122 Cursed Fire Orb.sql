DELETE FROM `weenie` WHERE `class_Id` = 800122;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800122, 'cursedfireorb', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800122,   1,      32768) /* ItemType - Caster */
     , (800122,   5,         50) /* EncumbranceVal */
     , (800122,   8,         50) /* Mass */
     , (800122,   9,   16777216) /* ValidLocations - Held */
     , (800122,  16,          1) /* ItemUseable - No */
     , (800122,  18,          1) /* UiEffects - Magical */
     , (800122,  19,          2) /* Value */
     , (800122,  33,          1) /* Bonded - Bonded */
     , (800122,  45,         16) /* DamageType - Fire */
     , (800122,  46,        512) /* DefaultCombatStyle - Magic */
     , (800122,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800122,  94,         16) /* TargetType - Creature */
     , (800122, 106,        999) /* ItemSpellcraft */
     , (800122, 107,        800) /* ItemCurMana */
     , (800122, 108,        800) /* ItemMaxMana */
     , (800122, 114,          1) /* Attuned - Attuned */
     , (800122, 159,         34) /* WieldSkillType - WarMagic */
     , (800122, 160,        390) /* WieldDifficulty */
     , (800122, 179,        512) /* ImbuedEffect - FireRending */
     , (800122, 353,         12) /* WeaponType - Magic */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800122,  11, True ) /* IgnoreCollisions */
     , (800122,  13, True ) /* Ethereal */
     , (800122,  14, True ) /* GravityStatus */
     , (800122,  22, True ) /* Inscribable */
     , (800122,  65, True ) /* IgnoreMagicResist */
     , (800122,  66, True ) /* IgnoreMagicArmor */
     , (800122,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800122,   5,  -0.033) /* ManaRate */
     , (800122,  29,    1.25) /* WeaponDefense */
     , (800122,  39,       1) /* DefaultScale */
     , (800122,  76,     0.7) /* Translucency */
     , (800122, 136,       1) /* CriticalMultiplier */
     , (800122, 144,     0.3) /* ManaConversionMod */
     , (800122, 147,     0.01) /* CriticalFrequency */
     , (800122, 152,     1.3) /* ElementalDamageMod */
     , (800122, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800122,   1, 'Cursed Fire Orb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800122,   1,   33559253) /* Setup */
     , (800122,   3,  536870932) /* SoundTable */
     , (800122,   8,  100677486) /* Icon */
     , (800122,  22,  872415275) /* PhysicsEffectTable */
     , (800122,  27, 1073741873) /* UseUserAnimation - MagicHeal */
     , (800122,  55,         85) /* ProcSpell - Ring of Skulls II */;
