DELETE FROM `weenie` WHERE `class_Id` = 801336;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801336, 'ShadowToy2', 51, '2024-07-23 04:30:03') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801336,   1,        128) /* ItemType - Misc */
     , (801336,   3,         39) /* PaletteTemplate - Black */
     , (801336,   5,          5) /* EncumbranceVal */
     , (801336,   8,          5) /* Mass */
     , (801336,  11,         50) /* MaxStackSize */
     , (801336,  12,          1) /* StackSize */
     , (801336,  13,          5) /* StackUnitEncumbrance */
     , (801336,  14,          5) /* StackUnitMass */
     , (801336,  15,          1) /* StackUnitValue */
     , (801336,  19,          1) /* Value */
     , (801336,  33,          0) /* Bonded - Bonded */
     , (801336,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801336, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801336,  22, True ) /* Inscribable */
     , (801336,  63, False) /* UnlimitedUse */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801336,  39,     0.3) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801336,   1, 'Shadow Toy') /* Name */
     , (801336,  16, 'Collect 50 of these and turn them in for XP to the Mirra Collector.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801336,   1,   33556251) /* Setup */
     , (801336,   2,  150995091) /* MotionTable */
     , (801336,   3,  536870914) /* SoundTable */
     , (801336,   4,  805306408) /* CombatTable */
     , (801336,   6,   67108990) /* PaletteBase */
     , (801336,   7,  268435871) /* ClothingBase */
     , (801336,   8,  100670398) /* Icon */
     , (801336,   9,   83890261) /* EyesTexture */
     , (801336,  10,   83890286) /* NoseTexture */
     , (801336,  11,   83890353) /* MouthTexture */
     , (801336,  15,   67116981) /* HairPalette */
     , (801336,  16,   67110065) /* EyesPalette */
     , (801336,  17,   67109560) /* SkinPalette */
     , (801336,  22,  872415331) /* PhysicsEffectTable */;