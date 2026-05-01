/* Placeholder weenies for landblock 0x7D64 instances that reference missing definitions.
 * These objects are invisible, non-interactive, and serve only to prevent server errors.
 * If the original content is ever recovered, replace these placeholders.
 */

DELETE FROM `weenie` WHERE `class_Id` IN (801155, 801173, 801182, 801191, 801200, 801209);

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801155, 'placeholder_801155', 1, '2026-04-27 00:00:00') /* Generic */
     , (801173, 'placeholder_801173', 1, '2026-04-27 00:00:00') /* Generic */
     , (801182, 'placeholder_801182', 1, '2026-04-27 00:00:00') /* Generic */
     , (801191, 'placeholder_801191', 1, '2026-04-27 00:00:00') /* Generic */
     , (801200, 'placeholder_801200', 1, '2026-04-27 00:00:00') /* Generic */
     , (801209, 'placeholder_801209', 1, '2026-04-27 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801155,   1, 128) /* ItemType - Misc */
     , (801155,   5,   0) /* Burden */
     , (801155,  16,   0) /* ItemUseable - No */
     , (801155,  19,   0) /* Value */
     , (801155,  93, 1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801173,   1, 128) /* ItemType - Misc */
     , (801173,   5,   0) /* Burden */
     , (801173,  16,   0) /* ItemUseable - No */
     , (801173,  19,   0) /* Value */
     , (801173,  93, 1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801182,   1, 128) /* ItemType - Misc */
     , (801182,   5,   0) /* Burden */
     , (801182,  16,   0) /* ItemUseable - No */
     , (801182,  19,   0) /* Value */
     , (801182,  93, 1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801191,   1, 128) /* ItemType - Misc */
     , (801191,   5,   0) /* Burden */
     , (801191,  16,   0) /* ItemUseable - No */
     , (801191,  19,   0) /* Value */
     , (801191,  93, 1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801200,   1, 128) /* ItemType - Misc */
     , (801200,   5,   0) /* Burden */
     , (801200,  16,   0) /* ItemUseable - No */
     , (801200,  19,   0) /* Value */
     , (801200,  93, 1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801209,   1, 128) /* ItemType - Misc */
     , (801209,   5,   0) /* Burden */
     , (801209,  16,   0) /* ItemUseable - No */
     , (801209,  19,   0) /* Value */
     , (801209,  93, 1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801155,   1, 'Placeholder Object') /* Name */
     , (801173,   1, 'Placeholder Object') /* Name */
     , (801182,   1, 'Placeholder Object') /* Name */
     , (801191,   1, 'Placeholder Object') /* Name */
     , (801200,   1, 'Placeholder Object') /* Name */
     , (801209,   1, 'Placeholder Object') /* Name */;
