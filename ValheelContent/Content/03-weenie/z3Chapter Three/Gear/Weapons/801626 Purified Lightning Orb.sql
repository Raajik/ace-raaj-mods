DELETE FROM `weenie` WHERE `class_Id` = 801626;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801626, 'Purified Lightning orb', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801626,   1,      32768) /* ItemType - Caster */
     , (801626,   5,         50) /* EncumbranceVal */
     , (801626,   8,         50) /* Mass */
     , (801626,   9,   16777216) /* ValidLocations - Held */
     , (801626,  16,          1) /* ItemUseable - No */
     , (801626,  18,          1) /* UiEffects - Magical */
     , (801626,  19,          2) /* Value */
     , (801626,  33,          1) /* Bonded - Bonded */
     , (801626,  45,         64) /* DamageType - Electric */
     , (801626,  46,        512) /* DefaultCombatStyle - Magic */
     , (801626,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801626,  94,         16) /* TargetType - Creature */
     , (801626, 106,        999) /* ItemSpellcraft */
     , (801626, 107,        800) /* ItemCurMana */
     , (801626, 108,        800) /* ItemMaxMana */
     , (801626, 114,          1) /* Attuned - Attuned */
     , (801626, 159,         34) /* WieldSkillType - WarMagic */
     , (801626, 160,        500) /* WieldDifficulty */
     , (801626, 179,        256) /* ImbuedEffect - ElectricRending */
     , (801626, 353,         12) /* WeaponType - Magic */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801626,  11, True ) /* IgnoreCollisions */
     , (801626,  13, True ) /* Ethereal */
     , (801626,  14, True ) /* GravityStatus */
     , (801626,  22, True ) /* Inscribable */
     , (801626,  65, True ) /* IgnoreMagicResist */
     , (801626,  66, True ) /* IgnoreMagicArmor */
     , (801626,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801626,   5,  -0.033) /* ManaRate */
     , (801626,  29,     1.4) /* WeaponDefense */
     , (801626,  39,       1) /* DefaultScale */
     , (801626,  76,     0.7) /* Translucency */
     , (801626, 136,       8) /* CriticalMultiplier */
     , (801626, 144,     0.3) /* ManaConversionMod */
     , (801626, 147,       1) /* CriticalFrequency */
     , (801626, 152,       8) /* ElementalDamageMod */
     , (801626, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801626,   1, 'Purified Lightning Orb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801626,   1,   33559253) /* Setup */
     , (801626,   3,  536870932) /* SoundTable */
     , (801626,   8,  100677486) /* Icon */
     , (801626,  22,  872415275) /* PhysicsEffectTable */
     , (801626,  27, 1073741873) /* UseUserAnimation - MagicHeal */
     , (801626,  52,  100676436) /* IconUnderlay */
     , (801626,  55,       5368) /* ProcSpell - Incantation of Nether Arc */;
