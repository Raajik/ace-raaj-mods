DELETE FROM `weenie` WHERE `class_Id` = 800020;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800020, 'ace800020-shemtrinket', 1, '2021-11-17 16:56:08') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800020,   1,          8) /* ItemType - Jewelry */
     , (800020,   5,         60) /* EncumbranceVal */
     , (800020,   9,   67108864) /* ValidLocations - TrinketOne */
     , (800020,  16,          1) /* ItemUseable - No */
     , (800020,  19,          10) /* Value */
     , (800020,  33,          1) /* Bonded - Bonded */
     , (800020,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800020, 106,         50) /* ItemSpellcraft */
     , (800020, 107,       6000) /* ItemCurMana */
     , (800020, 108,       6000) /* ItemMaxMana */
     , (800020, 109,        200) /* ItemDifficulty */
     , (800020, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800020,  11, True ) /* IgnoreCollisions */
     , (800020,  13, True ) /* Ethereal */
     , (800020,  14, True ) /* GravityStatus */
     , (800020,  19, True ) /* Attackable */
     , (800020,  22, True ) /* Inscribable */
     , (800020,  91, False) /* Retained */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800020,   5,  -0.049) /* ManaRate */
     , (800020,  39,    0.67) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800020,   1, 'Trinket of Prismatic Protection') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800020,   1, 0x02000179) /* Setup */
     , (800020,   3, 0x20000014) /* SoundTable */
     , (800020,   8, 0x06006AA4) /* Icon */
     , (800020,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800020,  6079,      2)  /* Legendary Storm */
     , (800020,  6080,      2)  /* Legendary Acid */
     , (800020,  6081,      2)  /* Legendary Bludgeoning */
     , (800020,  6083,      2)  /* Legendary Cold */
     , (800020,  6082,      2)  /* Legendary Fire */
     , (800020,  6084,      2)  /* Legendary Pierce */
     , (800020,  6085,      2)  /* Legendary Slash */;
