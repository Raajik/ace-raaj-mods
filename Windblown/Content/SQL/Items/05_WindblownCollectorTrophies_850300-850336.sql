-- ==========================================================================
-- Windblown collector trophies: WCIDs 850300-850336
-- Minimal `weenie` rows cloned from vanilla sources (type + naming).
-- Full appearance and properties come from Windblown Content/Weenies/*.json
-- when EnableCustomWeenies is true; this SQL keeps DB rows for tooling/fallback.
-- ==========================================================================

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850300, 'drudgecharm_regular_wb', type, NOW() FROM weenie WHERE class_Id = 24835 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850301, 'drudgecharm_quality_wb', type, NOW() FROM weenie WHERE class_Id = 24835 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850302, 'drudgecharm_pristine_wb', type, NOW() FROM weenie WHERE class_Id = 24835 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850303, 'drudgecharm_perfect_wb', type, NOW() FROM weenie WHERE class_Id = 24835 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850304, 'rattail_regular_wb', type, NOW() FROM weenie WHERE class_Id = 4133 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850305, 'rattail_quality_wb', type, NOW() FROM weenie WHERE class_Id = 4133 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850306, 'rattail_pristine_wb', type, NOW() FROM weenie WHERE class_Id = 4133 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850307, 'rattail_perfect_wb', type, NOW() FROM weenie WHERE class_Id = 4133 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850308, 'waspwing_regular_wb', type, NOW() FROM weenie WHERE class_Id = 7603 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850309, 'waspwing_quality_wb', type, NOW() FROM weenie WHERE class_Id = 7603 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850310, 'waspwing_pristine_wb', type, NOW() FROM weenie WHERE class_Id = 7603 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850311, 'waspwing_perfect_wb', type, NOW() FROM weenie WHERE class_Id = 7603 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850312, 'banderlingscalp_regular_wb', type, NOW() FROM weenie WHERE class_Id = 3693 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850313, 'banderlingscalp_quality_wb', type, NOW() FROM weenie WHERE class_Id = 3693 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850314, 'banderlingscalp_pristine_wb', type, NOW() FROM weenie WHERE class_Id = 3693 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850315, 'banderlingscalp_perfect_wb', type, NOW() FROM weenie WHERE class_Id = 3693 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850316, 'banderlinghead_wb', type, NOW() FROM weenie WHERE class_Id = 8144 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850317, 'drudgehead_wb', type, NOW() FROM weenie WHERE class_Id = 8145 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850318, 'mosswarthead_wb', type, NOW() FROM weenie WHERE class_Id = 8146 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850319, 'tuskerhead_wb', type, NOW() FROM weenie WHERE class_Id = 8147 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850320, 'ursuinheaddecorative_wb', type, NOW() FROM weenie WHERE class_Id = 9097 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850321, 'pumpkinhead_wb', type, NOW() FROM weenie WHERE class_Id = 12215 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850322, 'sclavushead_wb', type, NOW() FROM weenie WHERE class_Id = 12216 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850323, 'zombiehead_wb', type, NOW() FROM weenie WHERE class_Id = 12225 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850324, 'olthoihead_wb', type, NOW() FROM weenie WHERE class_Id = 3680 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850325, 'skeletonsskull_wb', type, NOW() FROM weenie WHERE class_Id = 3687 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850326, 'zombielichhead_wb', type, NOW() FROM weenie WHERE class_Id = 4121 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850327, 'evisceratorhead_wb', type, NOW() FROM weenie WHERE class_Id = 22059 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850328, 'mutilatorhead_wb', type, NOW() FROM weenie WHERE class_Id = 24846 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850329, 'knathhead_wb', type, NOW() FROM weenie WHERE class_Id = 25554 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850330, 'moarsmanhead_wb', type, NOW() FROM weenie WHERE class_Id = 25561 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850331, 'burungurukhead_wb', type, NOW() FROM weenie WHERE class_Id = 28886 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850332, 'chittickhead_wb', type, NOW() FROM weenie WHERE class_Id = 28888 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850333, 'mitehead_wb', type, NOW() FROM weenie WHERE class_Id = 28889 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850334, 'shadowhead_wb', type, NOW() FROM weenie WHERE class_Id = 34029 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850335, 'cowhead_wb', type, NOW() FROM weenie WHERE class_Id = 36359 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850336, 'mukkirhead_wb', type, NOW() FROM weenie WHERE class_Id = 36362 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
