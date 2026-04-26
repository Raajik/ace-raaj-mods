DELETE FROM `weenie` WHERE `class_Id` = 802121;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802121, 'MountainFortressPortalGem', 38, '2023-02-26 02:06:44') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802121,   1,       2048) /* ItemType - Gem */
     , (802121,   3,         39) /* PaletteTemplate - Black */
     , (802121,   5,          0) /* EncumbranceVal */
     , (802121,   9,          0) /* ValidLocations - None */
     , (802121,  11,          1) /* MaxStackSize */
     , (802121,  12,          1) /* StackSize */
     , (802121,  16,          8) /* ItemUseable - Contained */
     , (802121,  18,          1) /* UiEffects - Magical */
     , (802121,  19,          0) /* Value */
     , (802121,  33,          1) /* Bonded - Bonded */
     , (802121,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802121,  94,         16) /* TargetType - Creature */
     , (802121, 114,          1) /* Attuned - Attuned */
     , (802121, 150,        103) /* HookPlacement - Hook */
     , (802121, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802121,  22, True ) /* Inscribable */
     , (802121,  63, False ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802121,   1, 'Mountain Fortress Portal Gem') /* Name */
     , (802121,  16, 'Use this portal gem to teleport to the Mountain Fortress.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802121,   1, 0x02000921) /* Setup */
     , (802121,   3, 0x20000014) /* SoundTable */
     , (802121,   6, 0x04000BEF) /* PaletteBase */
     , (802121,   7, 0x1000010B) /* ClothingBase */
     , (802121,   8, 0x06002370) /* Icon */
     , (802121,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802121, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 99 /* TeleportTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x98180014 /* 0x98180014 [59.430347 85.24729 340.90106] 0.768182 0 0 0.640231 */, 59.430347, 85.24729, 340.90106, 0.768182, 0, 0, 0.640231);

