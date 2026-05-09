DELETE FROM `weenie` WHERE `class_Id` = 801530;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801530, 'BrokenMountainThroneGem', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801530,   1,       2048) /* ItemType - Gem */
     , (801530,   3,          5) /* PaletteTemplate - Larlun Blue */
     , (801530,   5,         50) /* EncumbranceVal */
     , (801530,   8,         10) /* Mass */
     , (801530,   9,          0) /* ValidLocations - None */
     , (801530,  11,          1) /* MaxStackSize */
     , (801530,  12,          1) /* StackSize */
     , (801530,  13,         50) /* StackUnitEncumbrance */
     , (801530,  14,         10) /* StackUnitMass */
     , (801530,  15,          0) /* StackUnitValue */
     , (801530,  16,          1) /* ItemUseable - Contained */
     , (801530,  18,          0) /* UiEffects - Fire */
     , (801530,  19,          1) /* Value */
     , (801530,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (801530, 114,          2) /* Attuned - Attuned */
     , (801530, 280,       1000) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801530,  22, True ) /* Inscribable */
     , (801530,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801530,   1, 'Broken Mountain Throne Gem') /* Name */
     , (801530,  33, 'BrokeMountGem') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801530,   1,   33556769) /* Setup */
     , (801530,   3,  536870932) /* SoundTable */
     , (801530,   6,   67111919) /* PaletteBase */
     , (801530,   7,  268435723) /* ClothingBase */
     , (801530,   8,      25259) /* Icon */
     , (801530,  22,  872415275) /* PhysicsEffectTable */;
