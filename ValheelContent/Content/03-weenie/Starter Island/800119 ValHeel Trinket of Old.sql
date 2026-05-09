DELETE FROM `weenie` WHERE `class_Id` = 800119;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800119, 'ace800119-pathwardentrinket', 1, '2021-11-17 16:56:08') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800119,   1,          8) /* ItemType - Jewelry */
     , (800119,   5,         60) /* EncumbranceVal */
     , (800119,   9,   67108864) /* ValidLocations - TrinketOne */
     , (800119,  16,          1) /* ItemUseable - No */
     , (800119,  19,         50) /* Value */
     , (800119,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800119, 106,        250) /* ItemSpellcraft */
     , (800119, 107,       6000) /* ItemCurMana */
     , (800119, 108,       6000) /* ItemMaxMana */
     , (800119, 158,          7) /* WieldRequirements - Level */
     , (800119, 160,        140) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800119,  11, True ) /* IgnoreCollisions */
     , (800119,  13, True ) /* Ethereal */
     , (800119,  14, True ) /* GravityStatus */
     , (800119,  19, True ) /* Attackable */
     , (800119,  22, True ) /* Inscribable */
     , (800119,  91, False) /* Retained */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800119,   5,  -0.049) /* ManaRate */
     , (800119,  39,    0.67) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800119,   1, 'ValHeel Trinket of Old') /* Name */
     , (800119,  16, 'A gearwork compass, may it guide your way.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800119,   1,   33554809) /* Setup */
     , (800119,   3,  536870932) /* SoundTable */
     , (800119,   8,  100690596) /* Icon */
     , (800119,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800119,   520,      2)  /* Acid Protection Self VI */
     , (800119,  1023,      2)  /* Bludgeoning Protection Self VI */
     , (800119,  1035,      2)  /* Cold Protection Self VI */
     , (800119,  1071,      2)  /* Lightning Protection Self VI */
     , (800119,  1094,      2)  /* Fire Protection Self VI */
     , (800119,  1114,      2)  /* Blade Protection Self VI */
     , (800119,  1138,      2)  /* Piercing Protection Self VI */
     , (800119,  1312,      2)  /* Armor Self VI */
     , (800119,  4076,      2)  /* Empyrean Enlightenment */
     , (800119,  4510,      2)  /* Incantation of Arcane Enlightenment Self */
     , (800119,  6041,      2)  /* Legendary Arcane Prowess */
     , (800119,  6101,      2)  /* Legendary Willpower */
     , (800119,  6105,      2)  /* Legendary Focus */;
