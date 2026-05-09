DELETE FROM `weenie` WHERE `class_Id` = 800337;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800337, 'Red Ball', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800337,   1,      32768) /* ItemType - Caster */
     , (800337,   5,         50) /* EncumbranceVal */
     , (800337,   8,         50) /* Mass */
     , (800337,   9,   16777216) /* ValidLocations - Held */
     , (800337,  16,          1) /* ItemUseable - No */
     , (800337,  18,          1) /* UiEffects - Magical */
     , (800337,  19,         75) /* Value */
     , (800337,  46,        512) /* DefaultCombatStyle - Magic */
     , (800337,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800337,  94,         16) /* TargetType - Creature */
     , (800337, 106,        250) /* ItemSpellcraft */
     , (800337, 107,        800) /* ItemCurMana */
     , (800337, 108,        800) /* ItemMaxMana */
     , (800337, 150,        103) /* HookPlacement - Hook */
     , (800337, 151,          2) /* HookType - Wall */
     , (800337, 353,          0) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800337,  11, True ) /* IgnoreCollisions */
     , (800337,  13, True ) /* Ethereal */
     , (800337,  14, True ) /* GravityStatus */
     , (800337,  19, True ) /* Attackable */
     , (800337,  22, True ) /* Inscribable */
     , (800337,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800337,   5,   -0.05) /* ManaRate */
     , (800337,  12,     0.5) /* Shade */
     , (800337,  29,    1.25) /* WeaponDefense */
     , (800337, 144,    0.25) /* ManaConversionMod */
     , (800337, 149,    1.25) /* WeaponMissileDefense */
     , (800337, 150,    1.25) /* WeaponMagicDefense */
     , (800337, 159,    0.25) /* AbsorbMagicDamage */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800337,   1, 'Red Ball') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800337,   1,   33559253) /* Setup */
     , (800337,   3,  536870932) /* SoundTable */
     , (800337,   8,  100668724) /* Icon */
     , (800337,  22,  872415275) /* PhysicsEffectTable */
     , (800337,  27, 1073741873) /* UseUserAnimation - MagicHeal */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800337,   3705,      2)  /* Prodigal Self */
     , (800337,   3733,      2)  /* Prodigal Focus */
     , (800337,   3713,      2)  /* Prodigal Item Enchantment */
     , (800337,   3717,      2)  /* Prodigal Life Enchantment */
     , (800337,   3695,      2)  /* Prodigal Creature Enchantment */;
