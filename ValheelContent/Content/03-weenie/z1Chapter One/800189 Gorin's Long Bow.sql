DELETE FROM `weenie` WHERE `class_Id` = 800189;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800189, 'Gorin''s Long Bow', 3, '2021-11-01 00:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800189,   1,        256) /* ItemType - MissileWeapon */
     , (800189,   5,        450) /* EncumbranceVal */
     , (800189,   8,        450) /* Mass */
     , (800189,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800189,  16,          1) /* ItemUseable - No */
     , (800189,  18,          1) /* UiEffects - Magical */
     , (800189,  19,          1) /* Value */
     , (800189,  44,         22) /* Damage */
     , (800189,  46,         16) /* DefaultCombatStyle - Bow */
     , (800189,  48,         47) /* WeaponSkill - MissileWeapons */
     , (800189,  49,         40) /* WeaponTime */
     , (800189,  50,          1) /* AmmoType - Arrow */
     , (800189,  51,          2) /* CombatUse - Missile */
     , (800189,  52,          2) /* ParentLocation - LeftHand */
     , (800189,  53,          3) /* PlacementPosition - LeftHand */
     , (800189,  60,        192) /* WeaponRange */
     , (800189,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800189, 106,        225) /* ItemSpellcraft */
     , (800189, 107,       3133) /* ItemCurMana */
     , (800189, 108,       3560) /* ItemMaxMana */
     , (800189, 109,          0) /* ItemDifficulty */
     , (800189, 150,        103) /* HookPlacement - Hook */
     , (800189, 151,          2) /* HookType - Wall */
     , (800189, 166,          4) /* SlayerCreatureType - Mosswart */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800189,  22, True ) /* Inscribable */
     , (800189,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800189,   5,   -0.05) /* ManaRate */
     , (800189,  26,    27.3) /* MaximumVelocity */
     , (800189,  29,    1.35) /* WeaponDefense */
     , (800189,  39,     1.5) /* DefaultScale */
     , (800189,  62,     1.2) /* WeaponOffense */
     , (800189,  63,     2.5) /* DamageMod */
     , (800189, 138,     2.5) /* SlayerDamageBonus */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800189,   1, 'Gorin''s Long Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800189,   1,   33557228) /* Setup */
     , (800189,   3,  536870932) /* SoundTable */
     , (800189,   8,  100671861) /* Icon */
     , (800189,  22,  872415275) /* PhysicsEffectTable */
     , (800189,  41,          2) /* ItemSpecializedOnly - Bow */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800189,  1384,      2)  /* Coordination Other VI */
     , (800189,  2416,      2)  /* High Tension String */
     , (800189,  2423,      2)  /* Precise */
     , (800189,  2426,      2)  /* Strong Pull */
     , (800189,  2488,      2)  /* Weapon Familiarity */
     , (800189,  2629,      2)  /* Huntress' Boon */
     , (800189,  2630,      2)  /* Prey's Reflex */;
