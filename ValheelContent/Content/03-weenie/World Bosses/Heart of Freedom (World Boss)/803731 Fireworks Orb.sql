DELETE FROM `weenie` WHERE `class_Id` = 803731;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803731, 'Fireworks Orb', 35, '2024-07-03 06:29:55') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803731,   1,      32768) /* ItemType - Caster */
     , (803731,   3,         61) /* PaletteTemplate - Navy */
     , (803731,   5,        100) /* EncumbranceVal */
     , (803731,   8,         50) /* Mass */
     , (803731,   9,   16777216) /* ValidLocations - Held */
     , (803731,  16,    6291464) /* ItemUseable - SourceContainedTargetRemoteNeverWalk */
     , (803731,  18,          0) /* UiEffects - Magical */
     , (803731,  19,          1) /* Value */
     , (803731,  33,          1) /* Bonded - Bonded */
     , (803731,  46,        512) /* DefaultCombatStyle - Magic */
     , (803731,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (803731,  94,         16) /* TargetType - Creature */
     , (803731, 106,        250) /* ItemSpellcraft */
     , (803731, 107,        750) /* ItemCurMana */
     , (803731, 108,        750) /* ItemMaxMana */
     , (803731, 109,        550) /* ItemDifficulty */
     , (803731, 114,          0) /* Attuned - Attuned */
     , (803731, 150,        103) /* HookPlacement - Hook */
     , (803731, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803731,  22, True ) /* Inscribable */
     , (803731,  23, True ) /* DestroyOnSell */
     , (803731,  69, False) /* IsSellable */
     , (803731,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803731,   5,   -0.05) /* ManaRate */
     , (803731,  12,     0.5) /* Shade */
     , (803731,  29,       0) /* WeaponDefense */
     , (803731,  39,    0.05) /* DefaultScale */
     , (803731, 144,       0) /* ManaConversionMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803731,   1, 'Heart of Freedom') /* Name */
     , (803731,  16, 'Freedom is ours, let us make the best of it.') /* LongDesc */
     , (803731,  33, 'HeartofFreedom') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803731,   1,   33558820) /* Setup */
     , (803731,   2,  150995087) /* MotionTable */
     , (803731,   3,  536870985) /* SoundTable */
     , (803731,   4,  805306368) /* CombatTable */
     , (803731,   8,  100671683) /* Icon */;

