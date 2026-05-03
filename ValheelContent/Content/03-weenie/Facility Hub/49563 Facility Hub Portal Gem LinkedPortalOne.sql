-- Facility Hub Portal Gem (49563): PortalSummon reads LinkedPortalOne from the gem weenie (PropertyDataId.LinkedPortalOne = type 31).
-- Without this row, summoned portals use portalId 0 and fail or behave inconsistently; /fac may still work via QOL Settings fallback only.
INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (49563, 31, 802954) /* LinkedPortalOne -> Facility Hub entry portal weenie */
ON DUPLICATE KEY UPDATE `value` = 802954;
