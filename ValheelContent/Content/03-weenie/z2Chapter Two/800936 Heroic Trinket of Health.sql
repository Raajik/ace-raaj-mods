DELETE FROM `weenie` WHERE `class_Id` = 800936;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800936, 'Heroic Trinket of Health', 1, '2021-11-17 16:56:08') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800936,   1,          8) /* ItemType - Jewelry */
     , (800936,   5,         60) /* EncumbranceVal */
     , (800936,   9,   67108864) /* ValidLocations - TrinketOne */
     , (800936,  16,          1) /* ItemUseable - No */
     , (800936,  18,          4) /* UIEffects - Health */
     , (800936,  19,         10) /* Value */
     , (800936,  33,          1) /* Bonded - Bonded */
     , (800936,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800936, 106,        999) /* ItemSpellcraft */
     , (800936, 107,       6000) /* ItemCurMana */
     , (800936, 108,       6000) /* ItemMaxMana */
     , (800936, 109,         15) /* ItemDifficulty */
     , (800936, 114,          1) /* Attuned - Attuned */
     , (800936, 379,         50) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800936,  11, True ) /* IgnoreCollisions */
     , (800936,  13, True ) /* Ethereal */
     , (800936,  14, True ) /* GravityStatus */
     , (800936,  19, True ) /* Attackable */
     , (800936,  22, True ) /* Inscribable */
     , (800936,  91, False) /* Retained */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800936,   5,  -0.049) /* ManaRate */
     , (800936,  39,    0.67) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800936,   1, 'Heroic Trinket of Health') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800936,   1, 0x02000179) /* Setup */
     , (800936,   3, 0x20000014) /* SoundTable */
     , (800936,   8,      25345) /* Icon */
     , (800936,  22, 0x3400002B) /* PhysicsEffectTable */
     , (800936,  52,  100667860) /* IconUnderlay */;

