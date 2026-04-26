DELETE FROM `weenie` WHERE `class_Id` = 802116;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802116, 'valheelbackpack', 21, '2005-02-09 10:00:00') /* Container */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802116,   1,        512) /* ItemType - Container */
     , (802116,   3,         21) /* PaletteTemplate - Gold */
     , (802116,   5,          1) /* EncumbranceVal */
     , (802116,   6,        120) /* ItemsCapacity */
     , (802116,   7,          0) /* ContainersCapacity */
     , (802116,   8,        200) /* Mass */
     , (802116,   9,          0) /* ValidLocations - None */
     , (802116,  16,         56) /* ItemUseable - ContainedViewedRemote */
     , (802116,  19,         65) /* Value */
     , (802116,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802116,  96,       2000) /* EncumbranceCapacity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802116,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802116,  39,    1.75) /* DefaultScale */
     , (802116,  54,     0.5) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802116,   1, 'ValHeel Pack') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802116,   1,   33554769) /* Setup */
     , (802116,   3,  536870932) /* SoundTable */
     , (802116,   6,   67111919) /* PaletteBase */
     , (802116,   7,  268435867) /* ClothingBase */
     , (802116,   8,  100670383) /* Icon */
     , (802116,  22,  872415275) /* PhysicsEffectTable */;
