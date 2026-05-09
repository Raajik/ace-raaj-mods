DELETE FROM `weenie` WHERE `class_Id` = 803112;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803112, 'Big Snow Ball', 35, '2021-11-17 16:56:08') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803112,   1,      32768) /* ItemType - Caster */
     , (803112,   3,         12) /* PaletteTemplate - Navy */
     , (803112,   5,        100) /* EncumbranceVal */
     , (803112,   8,         50) /* Mass */
     , (803112,   9,   16777216) /* ValidLocations - Held */
     , (803112,  16,    6291464) /* ItemUseable - SourceContainedTargetRemoteNeverWalk */
     , (803112,  18,          1) /* UiEffects - Magical */
     , (803112,  19,          1) /* Value */
     , (803112,  33,          1) /* Bonded - Bonded */
     , (803112,  46,        512) /* DefaultCombatStyle - Magic */
     , (803112,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (803112,  94,         16) /* TargetType - Creature */
     , (803112, 106,        250) /* ItemSpellcraft */
     , (803112, 107,        750) /* ItemCurMana */
     , (803112, 108,        750) /* ItemMaxMana */
     , (803112, 109,        550) /* ItemDifficulty */
     , (803112, 114,          0) /* Attuned - Attuned */
     , (803112, 150,        103) /* HookPlacement - Hook */
     , (803112, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803112,  22, True ) /* Inscribable */
     , (803112,  23, True ) /* DestroyOnSell */
     , (803112,  69, False) /* IsSellable */
     , (803112,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803112,   5,   -0.05) /* ManaRate */
     , (803112,  12,     0.5) /* Shade */
     , (803112,  29,     0.1) /* WeaponDefense */
     , (803112,  39,     2.4) /* DefaultScale */
     , (803112, 144,     0.1) /* ManaConversionMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803112,   1, 'Snow Ball') /* Name */
     , (803112,  16, 'An icy ball of magic ice.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803112,   1,   33556225) /* Setup */
     , (803112,   3,  536870932) /* SoundTable */
     , (803112,   6,   67111928) /* PaletteBase */
     , (803112,   7,  268435857) /* ClothingBase */
     , (803112,   8,  100670281) /* Icon */
     , (803112,  22,  872415275) /* PhysicsEffectTable */
     , (803112,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803112,  37,         16) /* ItemSkillLimit - ManaConversion */;
