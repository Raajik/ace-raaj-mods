DELETE FROM `weenie` WHERE `class_Id` = 801334;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801334, 'ShadowToy', 51, '2024-07-23 04:30:03') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801334,   1,        128) /* ItemType - Misc */
     , (801334,   3,         39) /* PaletteTemplate - Black */
     , (801334,   5,          5) /* EncumbranceVal */
     , (801334,   8,          5) /* Mass */
     , (801334,  11,         50) /* MaxStackSize */
     , (801334,  12,          1) /* StackSize */
     , (801334,  13,          5) /* StackUnitEncumbrance */
     , (801334,  14,          5) /* StackUnitMass */
     , (801334,  15,          1) /* StackUnitValue */
     , (801334,  19,          1) /* Value */
     , (801334,  33,          0) /* Bonded - Bonded */
     , (801334,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801334, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801334,  22, True ) /* Inscribable */
     , (801334,  63, False) /* UnlimitedUse */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801334,  39,     0.3) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801334,   1, 'Shadow Toy') /* Name */
     , (801334,  16, 'Collect 50 of these and turn them in for XP to the Mirra Collector.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801334,   1,   33556251) /* Setup */
     , (801334,   2,  150995091) /* MotionTable */
     , (801334,   3,  536870914) /* SoundTable */
     , (801334,   4,  805306408) /* CombatTable */
     , (801334,   6,   67108990) /* PaletteBase */
     , (801334,   7,  268435871) /* ClothingBase */
     , (801334,   8,  100670398) /* Icon */
     , (801334,   9,   83890261) /* EyesTexture */
     , (801334,  10,   83890286) /* NoseTexture */
     , (801334,  11,   83890353) /* MouthTexture */
     , (801334,  15,   67116981) /* HairPalette */
     , (801334,  16,   67110065) /* EyesPalette */
     , (801334,  17,   67109560) /* SkinPalette */
     , (801334,  22,  872415331) /* PhysicsEffectTable */;