DELETE FROM `weenie` WHERE `class_Id` = 800123;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800123, 'cursedslashorb', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800123,   1,      32768) /* ItemType - Caster */
     , (800123,   5,         50) /* EncumbranceVal */
     , (800123,   8,         50) /* Mass */
     , (800123,   9,   16777216) /* ValidLocations - Held */
     , (800123,  16,          1) /* ItemUseable - No */
     , (800123,  18,          1) /* UiEffects - Magical */
     , (800123,  19,          2) /* Value */
     , (800123,  33,          1) /* Bonded - Bonded */
     , (800123,  45,          1) /* DamageType - Slash */
     , (800123,  46,        512) /* DefaultCombatStyle - Magic */
     , (800123,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800123,  94,         16) /* TargetType - Creature */
     , (800123, 106,        999) /* ItemSpellcraft */
     , (800123, 107,        800) /* ItemCurMana */
     , (800123, 108,        800) /* ItemMaxMana */
     , (800123, 114,          1) /* Attuned - Attuned */
     , (800123, 159,         34) /* WieldSkillType - WarMagic */
     , (800123, 160,        390) /* WieldDifficulty */
     , (800123, 179,          8) /* ImbuedEffect - SlashRending */
     , (800123, 353,         12) /* WeaponType - Magic */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800123,  11, True ) /* IgnoreCollisions */
     , (800123,  13, True ) /* Ethereal */
     , (800123,  14, True ) /* GravityStatus */
     , (800123,  22, True ) /* Inscribable */
     , (800123,  65, True ) /* IgnoreMagicResist */
     , (800123,  66, True ) /* IgnoreMagicArmor */
     , (800123,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800123,   5,  -0.033) /* ManaRate */
     , (800123,  29,    1.25) /* WeaponDefense */
     , (800123,  39,       1) /* DefaultScale */
     , (800123,  76,     0.7) /* Translucency */
     , (800123, 136,       1) /* CriticalMultiplier */
     , (800123, 144,     0.3) /* ManaConversionMod */
     , (800123, 147,     0.01) /* CriticalFrequency */
     , (800123, 152,     1.3) /* ElementalDamageMod */
     , (800123, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800123,   1, 'Cursed Slashing Orb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800123,   1,   33559253) /* Setup */
     , (800123,   3,  536870932) /* SoundTable */
     , (800123,   8,  100677486) /* Icon */
     , (800123,  22,  872415275) /* PhysicsEffectTable */
     , (800123,  27, 1073741873) /* UseUserAnimation - MagicHeal */
     , (800123,  55,         97) /* ProcSpell - Ring of Skulls II */;
