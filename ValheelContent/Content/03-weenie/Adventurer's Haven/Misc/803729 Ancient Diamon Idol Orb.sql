DELETE FROM `weenie` WHERE `class_Id` = 803729;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803729, 'Ancient Diamond Idol Orb', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803729,   1,      32768) /* ItemType - Caster */
     , (803729,   3,         61) /* PaletteTemplate - Navy */
     , (803729,   5,        100) /* EncumbranceVal */
     , (803729,   8,         50) /* Mass */
     , (803729,   9,   16777216) /* ValidLocations - Held */
     , (803729,  16,    6291464) /* ItemUseable - SourceContainedTargetRemoteNeverWalk */
     , (803729,  18,          0) /* UiEffects - Magical */
     , (803729,  19,          1) /* Value */
     , (803729,  33,          1) /* Bonded - Bonded */
     , (803729,  46,        512) /* DefaultCombatStyle - Magic */
     , (803729,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (803729,  94,         16) /* TargetType - Creature */
     , (803729, 106,        250) /* ItemSpellcraft */
     , (803729, 107,        750) /* ItemCurMana */
     , (803729, 108,        750) /* ItemMaxMana */
     , (803729, 109,        550) /* ItemDifficulty */
     , (803729, 114,          0) /* Attuned - Attuned */
     , (803729, 150,        103) /* HookPlacement - Hook */
     , (803729, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803729,  22, True ) /* Inscribable */
     , (803729,  23, True ) /* DestroyOnSell */
     , (803729,  69, False) /* IsSellable */
     , (803729,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803729,   5,   -0.05) /* ManaRate */
     , (803729,  12,     0.5) /* Shade */
     , (803729,  29,       0) /* WeaponDefense */
     , (803729, 144,       0) /* ManaConversionMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803729,   1, 'Ancient Diamond Idol White') /* Name */
     , (803729,  16, 'Use this for tailoring.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803729,   1,   33558780) /* Setup */
     , (803729,   6,   67112808) /* PaletteBase */
     , (803729,   7,  268436830) /* ClothingBase */
     , (803729,   8,  100676570) /* Icon */;
