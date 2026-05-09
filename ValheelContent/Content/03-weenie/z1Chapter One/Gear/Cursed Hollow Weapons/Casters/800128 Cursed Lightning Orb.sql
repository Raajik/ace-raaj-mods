DELETE FROM `weenie` WHERE `class_Id` = 800128;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800128, 'cursed Lightning orb', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800128,   1,      32768) /* ItemType - Caster */
     , (800128,   5,         50) /* EncumbranceVal */
     , (800128,   8,         50) /* Mass */
     , (800128,   9,   16777216) /* ValidLocations - Held */
     , (800128,  16,          1) /* ItemUseable - No */
     , (800128,  18,          1) /* UiEffects - Magical */
     , (800128,  19,          2) /* Value */
     , (800128,  33,          1) /* Bonded - Bonded */
     , (800128,  45,         64) /* DamageType - Electric */
     , (800128,  46,        512) /* DefaultCombatStyle - Magic */
     , (800128,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800128,  94,         16) /* TargetType - Creature */
     , (800128, 106,        999) /* ItemSpellcraft */
     , (800128, 107,        800) /* ItemCurMana */
     , (800128, 108,        800) /* ItemMaxMana */
     , (800128, 114,          1) /* Attuned - Attuned */
     , (800128, 159,         34) /* WieldSkillType - WarMagic */
     , (800128, 160,        390) /* WieldDifficulty */
     , (800128, 179,        256) /* ImbuedEffect - ElectricRending */
     , (800128, 353,         12) /* WeaponType - Magic */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800128,  11, True ) /* IgnoreCollisions */
     , (800128,  13, True ) /* Ethereal */
     , (800128,  14, True ) /* GravityStatus */
     , (800128,  22, True ) /* Inscribable */
     , (800128,  65, True ) /* IgnoreMagicResist */
     , (800128,  66, True ) /* IgnoreMagicArmor */
     , (800128,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800128,   5,  -0.033) /* ManaRate */
     , (800128,  29,    1.25) /* WeaponDefense */
     , (800128,  39,       1) /* DefaultScale */
     , (800128,  76,     0.7) /* Translucency */
     , (800128, 136,     1) /* CriticalMultiplier */
     , (800128, 144,     0.3) /* ManaConversionMod */
     , (800128, 147,     0.01) /* CriticalFrequency */
     , (800128, 152,     1.3) /* ElementalDamageMod */
     , (800128, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800128,   1, 'Cursed Lightning Orb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800128,   1,   33559253) /* Setup */
     , (800128,   3,  536870932) /* SoundTable */
     , (800128,   8,  100677486) /* Icon */
     , (800128,  22,  872415275) /* PhysicsEffectTable */
     , (800128,  27, 1073741873) /* UseUserAnimation - MagicHeal */
     , (800128,  55,         80) /* ProcSpell - Ring of Skulls II */;
