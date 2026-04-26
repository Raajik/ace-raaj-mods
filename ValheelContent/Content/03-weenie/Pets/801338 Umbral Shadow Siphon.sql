DELETE FROM `weenie` WHERE `class_Id` = 801338;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801338, 'ShadowToy3', 51, '2024-07-23 04:30:03') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801338,   1,        128) /* ItemType - Misc */
     , (801338,   3,         39) /* PaletteTemplate - Black */
     , (801338,   5,          5) /* EncumbranceVal */
     , (801338,   8,          5) /* Mass */
     , (801338,  11,         50) /* MaxStackSize */
     , (801338,  12,          1) /* StackSize */
     , (801338,  13,          5) /* StackUnitEncumbrance */
     , (801338,  14,          5) /* StackUnitMass */
     , (801338,  15,          1) /* StackUnitValue */
     , (801338,  19,          1) /* Value */
     , (801338,  33,          0) /* Bonded - Bonded */
     , (801338,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801338, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801338,  22, True ) /* Inscribable */
     , (801338,  63, False) /* UnlimitedUse */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801338,  39,     0.3) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801338,   1, 'Shadow Toy') /* Name */
     , (801338,  16, 'Collect 50 of these and turn them in for XP to the Mirra Collector.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801338,   1,   33556251) /* Setup */
     , (801338,   2,  150995091) /* MotionTable */
     , (801338,   3,  536870914) /* SoundTable */
     , (801338,   4,  805306408) /* CombatTable */
     , (801338,   6,   67108990) /* PaletteBase */
     , (801338,   7,  268435871) /* ClothingBase */
     , (801338,   8,  100670398) /* Icon */
     , (801338,   9,   83890261) /* EyesTexture */
     , (801338,  10,   83890286) /* NoseTexture */
     , (801338,  11,   83890353) /* MouthTexture */
     , (801338,  15,   67116981) /* HairPalette */
     , (801338,  16,   67110065) /* EyesPalette */
     , (801338,  17,   67109560) /* SkinPalette */
     , (801338,  22,  872415331) /* PhysicsEffectTable */;