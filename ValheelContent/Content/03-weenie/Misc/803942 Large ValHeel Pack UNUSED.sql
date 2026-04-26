DELETE FROM `weenie` WHERE `class_Id` = 803942;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803942, 'valheelbackpack2', 21, '2005-02-09 10:00:00') /* Container */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803942,   1,        512) /* ItemType - Container */
     , (803942,   3,         21) /* PaletteTemplate - Gold */
     , (803942,   5,          1) /* EncumbranceVal */
     , (803942,   6,        120) /* ItemsCapacity */
     , (803942,   7,          0) /* ContainersCapacity */
     , (803942,   8,        200) /* Mass */
     , (803942,   9,          0) /* ValidLocations - None */
     , (803942,  16,         56) /* ItemUseable - ContainedViewedRemote */
     , (803942,  19,       5000) /* Value */
     , (803942,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803942,  96,       2000) /* EncumbranceCapacity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803942,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803942,  39,    1.75) /* DefaultScale */
     , (803942,  54,     0.5) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803942,   1, 'Large ValHeel Pack') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803942,   1,   33554769) /* Setup */
     , (803942,   3,  536870932) /* SoundTable */
     , (803942,   6,   67111919) /* PaletteBase */
     , (803942,   7,  268435867) /* ClothingBase */
     , (803942,   8,  100670383) /* Icon */
     , (803942,  22,  872415275) /* PhysicsEffectTable */;
