DELETE FROM `weenie` WHERE `class_Id` = 802138;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802138, 'queenie', 69, '2023-03-01 00:00:00') /* Pet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802138,   1,       16) /* ItemType - Creature */
     , (802138,   2,       77) /* CreatureType - Gargoyle */
     , (802138,   3,        5) /* PaletteTemplate - ??? */
     , (802138,   6,       -1) /* EncumbranceVal */
     , (802138,   7,       -1) /* CoinValue */
     , (802138,  16,        1) /* ItemUseable - No */
     , (802138,  25,        5) /* Level */
     , (802138,  93,  2098196) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (802138,  95,        8) /* RadarBlipColor - Yellow */
     , (802138, 133,        1) /* ShowableOnRadar - ShowAlways */
     , (802138, 134,       16) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802138,   1, True ) /* Stuck */
     , (802138,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802138,  39,  0.5) /* DefaultScale */
     , (802138,  76,  0.6) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802138,   1, 'Queenie') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802138,   1, 33558554) /* Setup */
     , (802138,   2, 150995263) /* MotionTable */
     , (802138,   3, 536871080) /* SoundTable */
     , (802138,   6, 67114728) /* PaletteBase */
     , (802138,   7, 268436733) /* ClothingBase */
     , (802138,   8, 100675661) /* Icon */
     , (802138,  22, 872415411) /* PhysicsEffectTable */;
