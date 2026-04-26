DELETE FROM `weenie` WHERE `class_Id` = 800177;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800177, 'cursednetherorb', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800177,   1,      32768) /* ItemType - Caster */
     , (800177,   5,         50) /* EncumbranceVal */
     , (800177,   8,         50) /* Mass */
     , (800177,   9,   16777216) /* ValidLocations - Held */
     , (800177,  16,          1) /* ItemUseable - No */
     , (800177,  18,          1) /* UiEffects - Magical */
     , (800177,  19,          2) /* Value */
     , (800177,  33,          1) /* Bonded - Bonded */
     , (800177,  45,       1024) /* DamageType - Nether */
     , (800177,  46,        512) /* DefaultCombatStyle - Magic */
     , (800177,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800177,  94,         16) /* TargetType - Creature */
     , (800177, 106,        999) /* ItemSpellcraft */
     , (800177, 107,        800) /* ItemCurMana */
     , (800177, 108,        800) /* ItemMaxMana */
     , (800177, 114,          1) /* Attuned - Attuned */
     , (800177, 159,         14) /* WieldSkillType - ArcaneLore */
     , (800177, 160,        350) /* WieldDifficulty */
     , (800177, 179,      16384) /* ImbuedEffect - NetherRending */
     , (800177, 353,         12) /* WeaponType - Magic */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800177,  11, True ) /* IgnoreCollisions */
     , (800177,  13, True ) /* Ethereal */
     , (800177,  14, True ) /* GravityStatus */
     , (800177,  22, True ) /* Inscribable */
     , (800177,  65, True ) /* IgnoreMagicResist */
     , (800177,  66, True ) /* IgnoreMagicArmor */
     , (800177,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800177,   5,  -0.033) /* ManaRate */
     , (800177,  29,    1.25) /* WeaponDefense */
     , (800177,  39,       1) /* DefaultScale */
     , (800177,  76,     0.7) /* Translucency */
     , (800177, 136,       2) /* CriticalMultiplier */
     , (800177, 144,     0.3) /* ManaConversionMod */
     , (800177, 147,     0.5) /* CriticalFrequency */
     , (800177, 152,     1.3) /* ElementalDamageMod */
     , (800177, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800177,   1, 'Cursed Nether Orb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800177,   1,   33559253) /* Setup */
     , (800177,   3,  536870932) /* SoundTable */
     , (800177,   8,  100677486) /* Icon */
     , (800177,  22,  872415275) /* PhysicsEffectTable */
     , (800177,  27, 1073741873) /* UseUserAnimation - MagicHeal */
     , (800177,  55,       5354) /* ProcSpell - Ring of Skulls II */;
