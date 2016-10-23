-- Alliance and horde battle standard added missing aura spell
UPDATE `zp_mangosd`.`creature_template` SET `spell1`=23036 WHERE  `entry`=14465;
UPDATE `zp_mangosd`.`creature_template` SET `spell1`=23036 WHERE  `entry`=14466;

-- AV battle standards
UPDATE `zp_mangosd`.`creature_template` SET `spell1`=23574 WHERE  `entry`=14752;
UPDATE `zp_mangosd`.`creature_template` SET `spell1`=23576 WHERE  `entry`=14751;

-- usable multiple times
UPDATE `zp_mangosd`.`item_template` SET `spellcharges_1`=0 WHERE  `entry`=19046;
UPDATE `zp_mangosd`.`item_template` SET `spellcharges_1`=0, `spellcategory_1`=1153, `spellcategorycooldown_1`=120000 WHERE  `entry`=19045;
UPDATE `zp_mangosd`.`item_template` SET `spellcharges_1`=0 WHERE  `entry`=18607;
UPDATE `zp_mangosd`.`item_template` SET `spellcharges_1`=0 WHERE  `entry`=18606;

-- Cursed Justicar updated stats
UPDATE `zp_mangosd`.`creature_template` SET `minlevel`=57, `maxlevel`=58, `minhealth`=6891, `maxhealth`=7107, `armor`=3799, `rank`=1, `mindmg`=406, `maxdmg`=495, `attackpower`=250 WHERE  `entry`=7072;

-- Emeriss, change gold drop to same as the other dragons
UPDATE `zp_mangosd`.`creature_template` SET `mingold`=71655, `maxgold`=93753 WHERE  `entry`=14889;

-- Enchanted Moonstalker Cloak should only work in darkshore
REPLACE INTO `zp_mangosd`.`spell_area` VALUES (6298, 148, 0, 0, 0, 0, 0, 2, 0);

-- Loatheb, remove spore from world
DELETE FROM `zp_mangosd`.`creature` WHERE  `id`=16286;

-- Naxx doors
-- Anub
UPDATE `zp_mangosd`.`gameobject_template` SET `flags`=32 WHERE  `entry`=181126;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65759, 181126, 533, 3202.67, -3475.94, 287.034, 3.14159, 0, 0, -1, 0, 180, 0, 1);

UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=1375, `flags`=34 WHERE  `entry`=181195;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65839, 181195, 533, 3143.96, -3572.22, 287.097, 2.35619, 0, 0, 0.923879, 0.382686, 180, 0, 1);

-- Faerlina
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=32 WHERE  `entry`=181235;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65859, 181235, 533, 3318.65, -3695.85, 259.094, 3.14159, 0, 0, -1, 0, 180, 0, 0);

-- not sure for door
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=32 WHERE  `entry`=181167;

-- Maexxna
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=32 WHERE  `entry`=181197;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65840, 181197, 533, 3452.74, -3863.67, 308.341, 3.14159, 0, 0, -1, 0, 180, 0, 0);

UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=32 WHERE  `entry`=181209;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65847, 181209, 533, 3427.56, -3846.01, 310.369, 0.001245, 0, 0, 0.000622749, 1, 180, 0, 1);

-- plague quarter
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65841, 181198, 533, 2963.16, -3476.83, 297.596, -2.35619, 0, 0, -0.92388, 0.382683, 180, 0, 0);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65842, 181199, 533, 2847.43, -3489.47, 297.839, 3.14159, 0, 0, -1, 0, 180, 0, 0);

-- Noth
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65843, 181200, 533, 2737.66, -3489.72, 262.095, 3.14159, 0, 0, -1, 0, 180, 0, 0);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65844, 181201, 533, 2684.28, -3559.36, 261.913, 1.5708, 0, 0, 0.707107, 0.707107, 180, 0, 1);

-- Heigan
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65845, 181202, 533, 2822.93, -3685.3, 273.541, 3.14159, 0, 0, -1, 0, 180, 0, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65846, 181203, 533, 2771.5, -3737.34, 273.596, -1.5708, 0, 0, -0.707107, 0.707107, 180, 0, 0);

-- Loatheb
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=32 WHERE  `entry`=181241;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65862, 181241, 533, 2909.69, -3947.28, 273.553, 3.14159, 0, 0, -1, 0, 180, 0, 0);

-- Military quarter
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=32, `data1`=1 WHERE  `entry`=181124;
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=32 WHERE  `entry`=181125;
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=32, `data1`=1 WHERE  `entry`=181170;
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=1375, `flags`=34 WHERE  `entry`=181119;

-- 4 horsemen, add new and delete old one
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65753, 181119, 533, 2587.96, -3017.17, 241.304, 3.14159, 0, 0, -1, 0, 180, 0, 1);
DELETE FROM `zp_mangosd`.`gameobject` WHERE  `guid`=21294;

UPDATE `zp_mangosd`.`gameobject` SET `spawntimesecs`=-604800, `animprogress`=100 WHERE  `guid`=21641;

-- Construct quarter
-- Patchwerk
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=32 WHERE  `entry`=181123;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65756, 181123, 533, 3317.97, -3254.35, 293.346, -1.5708, 0, 0, -0.707107, 0.707107, 180, 0, 1);

-- Gluth
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=32 WHERE  `entry`=181120;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65754, 181120, 533, 3339.16, -3100.64, 296.813, 3.14159, 0, 0, -1, 0, 180, 0, 1);

-- Thaddius
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=1375, `flags`=34 WHERE  `entry`=181121;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65755, 181121, 533, 3421.86, -3017.51, 295.615, 3.14159, 0, 0, -1, 0, 180, 0, 1);

UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=32 WHERE  `entry`=181477;
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=32 WHERE  `entry`=181478;

-- eyes
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=1375, `flags`=32 WHERE  `entry`=181212;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65850, 181212, 533, 3020.08, -3448.65, 300.972, 3.14159, 0, 0, -1, 0, 180, 0, 1);

UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=1375, `flags`=32 WHERE  `entry`=181211;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65849, 181211, 533, 2991.58, -3448.51, 300.972, 3.14159, 0, 0, -1, 0, 180, 0, 1);

UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=1375, `flags`=32 WHERE  `entry`=181210;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65848, 181210, 533, 2991.71, -3420.18, 300.972, 3.14159, 0, 0, -1, 0, 180, 0, 1);

UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=1375, `flags`=32 WHERE  `entry`=181213;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65851, 181213, 533, 3019.93, -3420.31, 300.972, 3.14159, 0, 0, -1, 0, 180, 0, 1);

-- some doors at Kel'thuzad
-- add waterfall door before kel'thuzad
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (67868, 181225, 533, 3536.81, -5158.41, 142.862, -1.77151, 0, 0, -0.774392, 0.632706, 604800, 0, 1);

-- update to same stats as stock mangos
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=32 WHERE  `entry`=181225;

-- windows and exit
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=1375, `flags`=34 WHERE  `entry`=181402;
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=1375, `flags`=34 WHERE  `entry`=181403;
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=1375, `flags`=34 WHERE  `entry`=181404;
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=1375, `flags`=34 WHERE  `entry`=181405;
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=1375, `flags`=34 WHERE  `entry`=181228;
 
-- add windows
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (82250, 181402, 533, 3732.66, -5026.17, 152.72, -1.77151, 0, 0, -0.774393, 0.632705, 180, 255, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (82251, 181403, 533, 3784.16, -5062.08, 152.57, -2.55691, 0, 0, -0.957571, 0.288197, 180, 255, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (82252, 181404, 533, 3760.24, -5175.26, 152.571, 2.10995, 0, 0, 0.869888, 0.493249, 180, 255, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (82253, 181405, 533, 3698.6, -5187.07, 152.72, 1.32456, 0, 0, 0.614915, 0.788593, 180, 255, 1);

-- exit door
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (82256, 181228, 533, 3635.36, -5090.29, 142.983, -1.77151, 0, 0, -0.774393, 0.632705, 180, 255, 0);

-- Spawn of Fankriss changed enrage to 20 sec instead of 10
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `event_param1`=20000, `event_param2`=20000 WHERE  `id`=1563001;

-- The Rethban Gauntlet added missing spell on quest accept
UPDATE `zp_mangosd`.`quest_template` SET `SrcSpell`=8553 WHERE  `entry`=1699;

-- UC the binding
-- Warlock quests(the binding) to summon voidwalkers spawn multiple, remove old
DELETE FROM `zp_mangosd`.`event_scripts` WHERE  `id`=1785 Limit 10;

-- Add the correct vw
REPLACE INTO `zp_mangosd`.`event_scripts` VALUES (1785, 0, 10, 5676, 180000, 0, 0, 0, 0, 0, 0, 0, 1704.61, 41.9147, -63.8433, 0.435896, '');

-- remove old
DELETE FROM `zp_mangosd`.`event_scripts` WHERE  `id`=1786 Limit 10;

-- Add the correct succubus
REPLACE INTO `zp_mangosd`.`event_scripts` VALUES (1786, 0, 10, 5677, 180000, 0, 0, 0, 0, 0, 0, 0, 1704.61, 41.9147, -63.8433, 0.435896, '');

-- Org the binding
-- remove old
DELETE FROM `zp_mangosd`.`event_scripts` WHERE  `id`=1787 Limit 10;

-- Add the correct vw
REPLACE INTO `zp_mangosd`.`event_scripts` VALUES (1787, 0, 10, 5676, 180000, 0, 0, 0, 0, 0, 0, 0, 1806.13, -4372.67, -17.4888, 4.41785, '');

-- remove old
DELETE FROM `zp_mangosd`.`event_scripts` WHERE  `id`=1788 Limit 10;

-- Add the correct succubus
REPLACE INTO `zp_mangosd`.`event_scripts` VALUES (1788, 0, 10, 5677, 180000, 0, 0, 0, 0, 0, 0, 0, 1806.13, -4372.67, -17.4888, 4.41785, '');

-- SW the binding
-- remove old
DELETE FROM `zp_mangosd`.`event_scripts` WHERE  `id`=1131 Limit 10;

-- Add the correct vw
REPLACE INTO `zp_mangosd`.`event_scripts` VALUES (1131, 0, 10, 5676, 180000, 0, 0, 0, 0, 0, 0, 0, -8973.05, 1043.72, 52.8631, 2, '');

-- remove old
DELETE FROM `zp_mangosd`.`event_scripts` WHERE  `id`=1134 Limit 10;

-- Add the correct succubus
REPLACE INTO `zp_mangosd`.`event_scripts` VALUES (1134, 0, 10, 5677, 180000, 0, 0, 0, 0, 0, 0, 0, -8973.05, 1043.72, 52.8631, 2, '');

-- Ratchet felhunter

-- remove old
DELETE FROM `zp_mangosd`.`event_scripts` WHERE  `id`=1449 Limit 10;

-- Add the correct felhunter
REPLACE INTO `zp_mangosd`.`event_scripts` VALUES (1449, 0, 10, 6268, 180000, 0, 0, 0, 0, 0, 0, 0, -767.591, -3721.71, 42.3617, 2.79602, '');

-- Toxic Tunnel at Gluth add AI and adjust stats
UPDATE `zp_mangosd`.`creature_template` SET `minlevel`=61, `maxlevel`=61, `faction_A`=21, `faction_H`=21, `unit_flags`=33554946, `AIName`='EventAI', `ScriptName`='mob_eventai' WHERE  `entry`=16400;

-- add AI
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (1640001, 16400, 1, 0, 100, 1, 0, 0, 6000, 8000, 11, 28369, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Toxic Tunnel - Cast Gas');

-- Add to world
REPLACE INTO `zp_mangosd`.`creature` VALUES (8046, 16400, 533, 0, 0, 3242.36, -3199.11, 317.104, 4.00224, 25, 0, 0, 17010, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (8047, 16400, 533, 0, 0, 3228.38, -3215.01, 316.501, 3.94333, 25, 0, 0, 17010, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (8048, 16400, 533, 0, 0, 3211.47, -3231.93, 315.48, 3.94333, 25, 0, 0, 17010, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (8049, 16400, 533, 0, 0, 3194.56, -3248.98, 315.299, 3.90407, 25, 0, 0, 17010, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (8050, 16400, 533, 0, 0, 3178.83, -3263.66, 316.465, 3.89229, 25, 0, 0, 17010, 0, 0, 0);

-- Added dummy for Web Wrap (maexxna, naxx)
REPLACE INTO `zp_mangosd`.`creature_template` VALUES (800113, 0, 0, 6296, 0, 'Web Wrap Dummy', NULL, 0, 62, 62, 1000, 1000, 0, 0, 0, 35, 35, 0, 1, 0.95, 1, 0, 0, 0, 0, 0, 1, 1000, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 0, 128, 'npc_web_wrap_dummy');

-- Naxxramas Worshipper shouldn't be immune MC and added spell when MC'd. Can't cast it tho
UPDATE `zp_mangosd`.`creature_template` SET `spell1`=28732, `mechanic_immune_mask`=67584 WHERE  `entry`=16506;

-- Naxxramas Follower immune sheep + MC
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=65537 WHERE  `entry`=16505;

-- Princess Yauj should be tauntable
UPDATE `zp_mangosd`.`creature_template` SET `flags_extra`=513 WHERE  `entry`=15543;

-- Positions for four horsemen and chest from Cmangos
UPDATE `zp_mangosd`.`gameobject` SET `position_x`='2516.595', `position_y`='-2946.82', `position_z`='245.5516', `orientation`='5.480334', `rotation2`='-0.3907309', `rotation3`='0.920505' WHERE `guid`='21641';

UPDATE `zp_mangosd`.`creature` SET `position_x`='2528.786', `position_y`='-2948.582', `position_z`='245.6330', `orientation`='5.270895' WHERE `guid`='88754';
UPDATE `zp_mangosd`.`creature` SET `position_x`='2517.618', `position_y`='-2959.380', `position_z`='245.6357', `orientation`='5.724680' WHERE `guid`='88753';
UPDATE `zp_mangosd`.`creature` SET `position_x`='2520.500', `position_y`='-2955.382', `position_z`='245.6351', `orientation`='5.585053' WHERE `guid`='88752';
UPDATE `zp_mangosd`.`creature` SET `position_x`='2524.319', `position_y`='-2951.281', `position_z`='245.6335', `orientation`='5.427974' WHERE `guid`='88755';

-- Patchwerk room
UPDATE `zp_mangosd`.`creature` SET `position_x`='3000.558', `position_y`='-3248.152', `position_z`='294.1461', `orientation`='0.3490658' WHERE `guid`='154230';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3025.940', `position_y`='-3139.967', `position_z`='294.1628', `orientation`='5.3581610' WHERE `guid`='88738';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3105.273', `position_y`='-3085.357', `position_z`='294.1627', `orientation`='3.7524580' WHERE `guid`='88708';

UPDATE `zp_mangosd`.`creature` SET `position_x`='3002.621', `position_y`='-3252.269', `position_z`='294.1461', `orientation`='1.8151420' WHERE `guid`='154231';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3006.073', `position_y`='-3250.047', `position_z`='294.1461', `orientation`='3.0368730' WHERE `guid`='154239';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3004.782', `position_y`='-3246.984', `position_z`='294.1461', `orientation`='4.1189770' WHERE `guid`='154233';
UPDATE `zp_mangosd`.`creature` SET `position_x`='2997.870', `position_y`='-3245.624', `position_z`='294.1461', `orientation`='5.8119460' WHERE `guid`='154235';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3001.312', `position_y`='-3244.868', `position_z`='294.1461', `orientation`='4.7472950' WHERE `guid`='154237';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3026.325', `position_y`='-3146.593', `position_z`='294.1609', `orientation`='1.8151420' WHERE `guid`='88739';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3020.337', `position_y`='-3145.323', `position_z`='294.1632', `orientation`='0.8901179' WHERE `guid`='88740';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3030.386', `position_y`='-3142.857', `position_z`='294.1600', `orientation`='2.5656340' WHERE `guid`='88741';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3031.175', `position_y`='-3137.424', `position_z`='294.1612', `orientation`='3.3684850' WHERE `guid`='88742';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3027.118', `position_y`='-3132.792', `position_z`='294.1630', `orientation`='4.5029490' WHERE `guid`='88743';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3104.551', `position_y`='-3090.400', `position_z`='294.1604', `orientation`='1.5358900' WHERE `guid`='88713';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3101.205', `position_y`='-3088.257', `position_z`='294.1601', `orientation`='0.8203048' WHERE `guid`='88714';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3108.879', `position_y`='-3088.712', `position_z`='294.1612', `orientation`='2.2340210' WHERE `guid`='88715';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3099.306', `position_y`='-3084.864', `position_z`='294.1599', `orientation`='6.1784650' WHERE `guid`='88716';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3101.223', `position_y`='-3080.412', `position_z`='294.1628', `orientation`='5.3058010' WHERE `guid`='88717';

UPDATE `zp_mangosd`.`creature` SET `position_x`='3004.445', `position_y`='-3251.565', `position_z`='294.1461', `orientation`='2.0943950' WHERE `guid`='154232';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3005.441', `position_y`='-3248.756', `position_z`='294.1461', `orientation`='2.8972470' WHERE `guid`='154234';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3003.092', `position_y`='-3245.750', `position_z`='294.1461', `orientation`='3.8746310' WHERE `guid`='154236';
UPDATE `zp_mangosd`.`creature` SET `position_x`='2999.642', `position_y`='-3244.756', `position_z`='294.1461', `orientation`='4.8520150' WHERE `guid`='154238';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3023.323', `position_y`='-3146.446', `position_z`='294.1621', `orientation`='1.3962630' WHERE `guid`='88744';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3028.900', `position_y`='-3145.055', `position_z`='294.1602', `orientation`='2.3736480' WHERE `guid`='88745';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3031.028', `position_y`='-3140.485', `position_z`='294.1605', `orientation`='2.8274330' WHERE `guid`='88746';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3029.840', `position_y`='-3135.209', `position_z`='294.1618', `orientation`='3.9793510' WHERE `guid`='88747';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3102.752', `position_y`='-3089.388', `position_z`='294.1606', `orientation`='1.1868240' WHERE `guid`='88709';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3106.599', `position_y`='-3090.173', `position_z`='294.1608', `orientation`='2.0071290' WHERE `guid`='88710';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3100.320', `position_y`='-3086.685', `position_z`='294.1600', `orientation`='0.3141593' WHERE `guid`='88711';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3099.757', `position_y`='-3082.676', `position_z`='294.1610', `orientation`='5.8817600' WHERE `guid`='88712';

SET @GUID := 88722;
SET @POINT := 0;
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID, '16018', '533', '0', '0', '3124.705', '-3120.879', '293.3452', '3.183372', '3520', '0', '0', '80925', '0', '0', '2');
DELETE FROM `zp_mangosd`.`creature_movement` WHERE `id`=@GUID;
INSERT INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + 1, '3115.583', '-3120.971', '293.3454', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3100.719', '-3125.130', '293.3451', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3085.224', '-3133.800', '293.3451', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3070.946', '-3144.958', '293.3458', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3057.628', '-3160.267', '293.3452', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3050.198', '-3175.146', '293.3455', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3044.730', '-3193.168', '293.3451', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3042.894', '-3210.451', '293.3452', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3045.409', '-3229.587', '293.3453', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3042.894', '-3210.451', '293.3452', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3044.730', '-3193.168', '293.3451', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3050.198', '-3175.146', '293.3455', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3057.628', '-3160.267', '293.3452', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3070.946', '-3144.958', '293.3458', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3085.224', '-3133.800', '293.3451', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3100.719', '-3125.130', '293.3451', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3115.583', '-3120.971', '293.3454', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3123.499', '-3119.894', '293.3452', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

SET @GUID := 88723;
SET @POINT := 0;
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID, '16029', '533', '0', '0', '2990.626', '-3227.045', '294.0777', '5.826222', '3520', '0', '0', '80925', '0', '0', '2');
DELETE FROM `zp_mangosd`.`creature_movement` WHERE `id`=@GUID;
INSERT INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + 1, '3001.484', '-3232.543', '294.0628', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3008.161', '-3239.027', '294.0628', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3012.525', '-3243.854', '294.0628', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3022.682', '-3242.966', '294.0628', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3028.833', '-3236.661', '294.0628', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3032.736', '-3219.687', '294.0628', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3028.816', '-3207.798', '294.0628', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3021.306', '-3202.189', '294.0628', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3006.159', '-3199.062', '294.0694', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2991.620', '-3203.322', '294.0628', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2985.410', '-3218.486', '294.0628', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2988.189', '-3227.132', '294.0628', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

SET @GUID := 88719;
SET @POINT := 0;
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID, '16029', '533', '0', '0', '3116.222', '-3104.337', '294.0687', '3.430677', '3520', '0', '0', '80925', '0', '0', '2');
DELETE FROM `zp_mangosd`.`creature_movement` WHERE `id`=@GUID;
INSERT INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + 1, '3102.977', '-3108.005', '294.0688', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3088.894', '-3113.645', '294.0789', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3075.713', '-3122.531', '294.0653', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3061.901', '-3133.495', '294.0666', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3047.169', '-3147.989', '294.0674', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3033.026', '-3156.022', '294.0723', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3021.329', '-3159.156', '294.0792', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3007.454', '-3161.701', '294.0774', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2998.143', '-3166.825', '294.0755', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2992.316', '-3175.448', '294.0732', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2985.661', '-3189.970', '294.0695', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2992.316', '-3175.448', '294.0732', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2998.143', '-3166.825', '294.0755', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3007.454', '-3161.701', '294.0774', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3033.026', '-3156.022', '294.0723', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3047.169', '-3147.989', '294.0674', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3061.680', '-3133.670', '294.0628', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3075.713', '-3122.531', '294.0653', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3088.894', '-3113.645', '294.0789', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3102.977', '-3108.005', '294.0688', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3115.019', '-3104.743', '294.0687', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

SET @GUID := 88718;
SET @POINT := 0;
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID, '16018', '533', '0', '0', '2999.213', '-3144.767', '294.0745', '5.82614', '3520', '0', '0', '80925', '0', '0', '2');
DELETE FROM `zp_mangosd`.`creature_movement` WHERE `id`=@GUID;
INSERT INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + 1, '3006.086', '-3148.801', '294.0800', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3014.116', '-3151.280', '294.0802', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3021.593', '-3152.803', '294.0805', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3029.989', '-3151.037', '294.0749', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3035.378', '-3146.691', '294.0734', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3037.918', '-3141.474', '294.0728', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3037.771', '-3135.391', '294.0744', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3032.810', '-3126.448', '294.0628', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3027.861', '-3119.256', '294.0628', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3023.261', '-3113.858', '294.0628', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3027.861', '-3119.256', '294.0628', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3032.810', '-3126.448', '294.0628', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3037.771', '-3135.391', '294.0744', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3037.918', '-3141.474', '294.0728', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3035.378', '-3146.691', '294.0734', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3029.989', '-3151.037', '294.0749', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3021.593', '-3152.803', '294.0805', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3014.116', '-3151.280', '294.0802', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3006.086', '-3148.801', '294.0800', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2998.345', '-3143.183', '294.0745', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

SET @GUID := 81025;
SET @POINT := 0;
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID, '16029', '533', '0', '0', '3085.997', '-3070.584', '294.0833', '5.02896', '3520', '0', '0', '80925', '0', '0', '2');
DELETE FROM `zp_mangosd`.`creature_movement` WHERE `id`=@GUID;
INSERT INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + 1, '3089.514', '-3081.602', '294.0822', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3096.566', '-3090.718', '294.0811', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3103.091', '-3093.424', '294.0760', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3112.745', '-3093.264', '294.0750', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3119.318', '-3086.976', '294.0784', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3126.585', '-3076.191', '294.0757', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3119.318', '-3086.976', '294.0784', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3112.745', '-3093.264', '294.0750', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3103.091', '-3093.424', '294.0760', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3096.566', '-3090.718', '294.0811', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3089.514', '-3081.602', '294.0822', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3086.157', '-3071.268', '294.0833', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

SET @GUID := 80997;
SET @POINT := 0;
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID, '16018', '533', '0', '0', '3033.981', '-3102.476', '294.0628', '5.409881', '3520', '0', '0', '80925', '0', '0', '2');
DELETE FROM `zp_mangosd`.`creature_movement` WHERE `id`=@GUID;
INSERT INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + 1, '3042.117', '-3111.578', '294.0628', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3054.847', '-3117.892', '294.0628', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3064.480', '-3116.370', '294.0721', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3071.523', '-3110.154', '294.0796', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3073.239', '-3096.890', '294.0809', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3070.978', '-3083.671', '294.0823', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3069.906', '-3072.977', '294.0835', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3070.978', '-3083.671', '294.0823', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3073.239', '-3096.890', '294.0809', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3071.523', '-3110.154', '294.0796', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3064.480', '-3116.370', '294.0721', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3054.985', '-3117.871', '294.0741', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3042.117', '-3111.578', '294.0628', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '3033.410', '-3103.280', '294.0628', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Stitched Spewer
UPDATE `zp_mangosd`.`creature` SET `position_x`='3202.656', `position_y`='-3282.632', `position_z`='292.6784', `orientation`='0.29670600' WHERE `guid`='88302';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3202.459', `position_y`='-3330.165', `position_z`='292.6784', `orientation`='0.08726646' WHERE `guid`='88301';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3291.205', `position_y`='-3360.781', `position_z`='292.6784', `orientation`='1.83259600' WHERE `guid`='88299';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3262.942', `position_y`='-3358.043', `position_z`='292.6784', `orientation`='1.22173000' WHERE `guid`='88300';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3332.371', `position_y`='-3324.519', `position_z`='292.6784', `orientation`='2.56563400' WHERE `guid`='88305';
UPDATE `zp_mangosd`.`creature` SET `position_x`='3331.970', `position_y`='-3300.315', `position_z`='292.6784', `orientation`='2.84488700' WHERE `guid`='88306';

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('88390', '16025', '533', '0', '0', '3202.708', '-3306.622', '292.6784', '6.265732', '3520', '0', '0', '149895', '0', '0', '0');

-- Grobbulus pat
UPDATE `zp_mangosd`.`creature` SET `position_x`='3253.285', `position_y`='-3310.712', `position_z`='292.6784', `orientation`='0.06981317', `MovementType`='2' WHERE `guid`='88303';

SET @POINT := 0;
DELETE FROM `zp_mangosd`.`creature_movement_template` WHERE `entry`=15931;
INSERT INTO `zp_mangosd`.`creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
('15931', @POINT := @POINT + 1, '3230.975', '-3315.273', '292.5951', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3229.008', '-3330.244', '292.5951', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3228.291', '-3352.366', '298.4330', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3228.850', '-3367.867', '306.5711', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3229.231', '-3377.598', '311.3362', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3222.958', '-3389.251', '311.3310', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3211.568', '-3389.394', '311.3327', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3205.059', '-3380.847', '311.3217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3205.269', '-3368.451', '313.6085', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3205.238', '-3346.578', '318.9846', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3209.540', '-3326.247', '320.3893', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3209.070', '-3314.000', '320.3371', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3200.387', '-3306.898', '320.3251', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3186.108', '-3306.752', '320.2695', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3174.501', '-3306.841', '319.6415', '60000', '1593101', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3188.372', '-3305.996', '320.2904', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3201.267', '-3305.621', '320.3264', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3208.785', '-3314.216', '320.3367', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3211.180', '-3328.448', '320.4037', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3203.891', '-3342.488', '320.0164', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3204.194', '-3365.331', '314.3782', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3204.950', '-3382.075', '311.3234', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3211.571', '-3388.579', '311.3316', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3223.580', '-3387.864', '311.3290', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3227.579', '-3378.296', '311.3323', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3228.724', '-3363.874', '304.4742', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3228.579', '-3342.257', '293.1257', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3228.150', '-3327.913', '292.5951', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3232.389', '-3309.209', '292.5951', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('15931', @POINT := @POINT + 1, '3252.036', '-3310.178', '292.5951', '60000', '0', '0', '0', '0', '0', '0', '0', '0', '0.06981317', '0', '0');

-- Embalming Slime
UPDATE `zp_mangosd`.`creature` SET `modelid`='0', `position_x`='3136.914', `position_y`='-3233.005', `position_z`='294.1461', `orientation`='1.343904000', `spawntimesecs`='180', `spawndist`='1' WHERE `guid`='88282';
UPDATE `zp_mangosd`.`creature` SET `modelid`='0', `position_x`='3125.778', `position_y`='-3224.824', `position_z`='294.1461', `orientation`='3.124139000', `spawntimesecs`='180', `spawndist`='1' WHERE `guid`='88283';
UPDATE `zp_mangosd`.`creature` SET `modelid`='0', `position_x`='3141.398', `position_y`='-3229.319', `position_z`='294.1461', `orientation`='0.785398200', `spawntimesecs`='180', `spawndist`='1' WHERE `guid`='88284';
UPDATE `zp_mangosd`.`creature` SET `modelid`='0', `position_x`='3113.274', `position_y`='-3214.637', `position_z`='294.1461', `orientation`='4.398230000', `spawntimesecs`='180', `spawndist`='1' WHERE `guid`='88285';
UPDATE `zp_mangosd`.`creature` SET `modelid`='0', `position_x`='3129.878', `position_y`='-3218.115', `position_z`='294.1461', `orientation`='1.832596000', `spawntimesecs`='180', `spawndist`='1' WHERE `guid`='88286';
UPDATE `zp_mangosd`.`creature` SET `modelid`='0', `position_x`='3123.698', `position_y`='-3212.596', `position_z`='294.1461', `orientation`='0.008561865', `spawntimesecs`='180', `spawndist`='1' WHERE `guid`='88287';
UPDATE `zp_mangosd`.`creature` SET `modelid`='0', `position_x`='3141.994', `position_y`='-3222.090', `position_z`='294.1461', `orientation`='0.102779900', `spawntimesecs`='180', `spawndist`='1' WHERE `guid`='88288';
UPDATE `zp_mangosd`.`creature` SET `modelid`='0', `position_x`='3135.435', `position_y`='-3217.410', `position_z`='294.1461', `orientation`='5.946206000', `spawntimesecs`='180', `spawndist`='1' WHERE `guid`='88289';
UPDATE `zp_mangosd`.`creature` SET `modelid`='0', `position_x`='3148.573', `position_y`='-3224.419', `position_z`='294.1461', `orientation`='0.389049400', `spawntimesecs`='180', `spawndist`='1' WHERE `guid`='88290';
UPDATE `zp_mangosd`.`creature` SET `modelid`='0', `position_x`='3145.933', `position_y`='-3214.591', `position_z`='294.1461', `orientation`='6.252537000', `spawntimesecs`='180', `spawndist`='1' WHERE `guid`='88291';
UPDATE `zp_mangosd`.`creature` SET `modelid`='0', `position_x`='3138.781', `position_y`='-3209.479', `position_z`='294.1461', `orientation`='4.712389000', `spawntimesecs`='180', `spawndist`='1' WHERE `guid`='88292';
UPDATE `zp_mangosd`.`creature` SET `modelid`='0', `position_x`='3126.308', `position_y`='-3202.819', `position_z`='294.1461', `orientation`='3.279599000', `spawntimesecs`='180', `spawndist`='1' WHERE `guid`='88293';
UPDATE `zp_mangosd`.`creature` SET `modelid`='0', `position_x`='3121.302', `position_y`='-3199.041', `position_z`='294.1461', `orientation`='2.266136000', `spawntimesecs`='180', `spawndist`='1' WHERE `guid`='88294';
UPDATE `zp_mangosd`.`creature` SET `modelid`='0', `position_x`='3132.846', `position_y`='-3204.325', `position_z`='294.1461', `orientation`='0.115952100', `spawntimesecs`='180', `spawndist`='1' WHERE `guid`='88295';
UPDATE `zp_mangosd`.`creature` SET `modelid`='0', `position_x`='3152.297', `position_y`='-3212.522', `position_z`='294.1461', `orientation`='4.637136000', `spawntimesecs`='180', `spawndist`='1' WHERE `guid`='88296';
UPDATE `zp_mangosd`.`creature` SET `modelid`='0', `position_x`='3143.120', `position_y`='-3202.391', `position_z`='294.1461', `orientation`='3.334584000', `spawntimesecs`='180', `spawndist`='1' WHERE `guid`='88297';

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('88490', '16024', '533', '0', '0', '3135.603', '-3197.738', '294.1461', '2.6866580', '180', '1', '0', '12208', '0', '0', '1'),
('88487', '16024', '533', '0', '0', '3150.454', '-3202.967', '294.1461', '3.1213680', '180', '1', '0', '12208', '0', '0', '1'),
('88488', '16024', '533', '0', '0', '3129.970', '-3190.436', '294.1461', '0.4862563', '180', '1', '0', '12208', '0', '0', '1'),
('88489', '16024', '533', '0', '0', '3142.453', '-3194.968', '294.1461', '2.5988970', '180', '1', '0', '12208', '0', '0', '1');

-- Heigan Gauntlet
-- Plague Beast
SET @GUID := '81432';
DELETE FROM `zp_mangosd`.`creature` WHERE `guid` BETWEEN @GUID + 0 AND @GUID + 3;
DELETE FROM `zp_mangosd`.`creature` WHERE `id`='16034';
INSERT INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 0, '16034', '533', '0', '0', '2844.969', '-3609.418', '261.3669', '4.066617', '300', '0', '0', '0', '0', '0', '2'),
(@GUID + 1, '16034', '533', '0', '0', '2770.457', '-3586.753', '256.1761', '1.448623', '300', '0', '0', '0', '0', '0', '2'),
(@GUID + 2, '16034', '533', '0', '0', '2709.596', '-3601.897', '260.6107', '2.827433', '300', '0', '0', '0', '0', '0', '2'),
(@GUID + 3, '16034', '533', '0', '0', '2850.604', '-3686.670', '279.1599', '1.780236', '300', '0', '0', '0', '0', '0', '2');

DELETE FROM `zp_mangosd`.`creature_movement` WHERE `id` IN (@GUID + 0, @GUID + 1, @GUID + 2, @GUID + 3);
INSERT INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID + 0, '1', '2857.005', '-3599.331', '263.6574', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 0, '2', '2873.124', '-3590.235', '267.1259', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 0, '3', '2887.852', '-3592.763', '270.6516', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 0, '4', '2897.192', '-3605.390', '273.2923', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 0, '5', '2899.383', '-3619.342', '275.0362', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 0, '6', '2891.756', '-3631.639', '274.1990', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 0, '7', '2879.466', '-3638.177', '273.2294', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 0, '8', '2866.484', '-3640.015', '271.3249', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 0, '9', '2879.466', '-3638.177', '273.2294', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 0, '10', '2891.756', '-3631.639', '274.1990', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 0, '11', '2899.383', '-3619.342', '275.0362', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 0, '12', '2897.192', '-3605.390', '273.2923', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 0, '13', '2887.852', '-3592.763', '270.6516', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 0, '14', '2873.124', '-3590.235', '267.1259', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 0, '15', '2857.005', '-3599.331', '263.6574', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 0, '16', '2847.407', '-3611.501', '261.8391', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 1, '1', '2777.605', '-3575.896', '253.7501', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 1, '2', '2790.739', '-3564.992', '251.5120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 1, '3', '2806.231', '-3568.648', '252.5588', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 1, '4', '2817.801', '-3583.097', '254.5759', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 1, '5', '2822.715', '-3595.134', '257.7792', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 1, '6', '2829.620', '-3612.201', '259.9153', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 1, '7', '2822.715', '-3595.134', '257.7792', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 1, '8', '2817.801', '-3583.097', '254.5759', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 1, '9', '2806.231', '-3568.648', '252.5588', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 1, '10', '2790.979', '-3565.049', '251.5441', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 1, '11', '2777.605', '-3575.896', '253.7501', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 1, '12', '2767.949', '-3589.933', '256.6421', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 2, '1', '2736.519', '-3591.672', '257.9109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 2, '2', '2743.838', '-3597.846', '257.6705', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 2, '3', '2720.893', '-3620.152', '260.0700', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 2, '4', '2723.637', '-3604.718', '259.6884', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 2, '5', '2752.585', '-3595.404', '257.0601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 2, '6', '2755.268', '-3585.129', '256.3048', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 2, '7', '2757.008', '-3575.477', '255.6363', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 2, '8', '2755.268', '-3585.129', '256.3048', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 2, '9', '2752.585', '-3595.404', '257.0601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 2, '10', '2723.637', '-3604.718', '259.6884', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 2, '11', '2720.893', '-3620.152', '260.0700', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 2, '12', '2743.838', '-3597.846', '257.6705', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 2, '13', '2736.519', '-3591.672', '257.9109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 2, '14', '2727.223', '-3594.056', '258.8783', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 3, '1', '2884.267', '-3662.161', '277.4121', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 3, '2', '2897.484', '-3671.875', '280.3942', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 3, '3', '2900.623', '-3683.831', '284.0012', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 3, '4', '2894.853', '-3698.010', '285.4735', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 3, '5', '2881.999', '-3708.828', '285.7334', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 3, '6', '2865.732', '-3705.732', '284.1666', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 3, '7', '2858.935', '-3691.243', '281.1445', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 3, '8', '2846.578', '-3686.145', '278.5287', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 3, '9', '2827.884', '-3686.887', '275.8903', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 3, '10', '2846.578', '-3686.145', '278.5287', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 3, '11', '2858.935', '-3691.243', '281.1445', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 3, '12', '2865.732', '-3705.732', '284.1666', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 3, '13', '2881.999', '-3708.828', '285.7334', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 3, '14', '2894.650', '-3698.181', '285.4752', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 3, '15', '2900.623', '-3683.831', '284.0012', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 3, '16', '2897.484', '-3671.875', '280.3942', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 3, '17', '2884.267', '-3662.161', '277.4121', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID + 3, '18', '2867.519', '-3655.968', '274.4418', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Mutated Grub
SET @GUID := '81641';
DELETE FROM `zp_mangosd`.`creature` WHERE `guid` BETWEEN @GUID + 0 AND @GUID + 13;
DELETE FROM `zp_mangosd`.`creature` WHERE `id`='16297';
INSERT INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 0, '16297', '533', '0', '0', '2689.724', '-3579.799', '261.3246', '1.1600160', '300', '5', '0', '0', '0', '0', '1'),
(@GUID + 1, '16297', '533', '0', '0', '2678.695', '-3570.476', '261.9421', '0.5599494', '300', '5', '0', '0', '0', '0', '1'),
(@GUID + 2, '16297', '533', '0', '0', '2834.190', '-3590.738', '257.5071', '0.8995356', '300', '5', '0', '0', '0', '0', '1'),
(@GUID + 3, '16297', '533', '0', '0', '2877.335', '-3583.536', '267.7086', '1.2693640', '300', '5', '0', '0', '0', '0', '1'),
(@GUID + 4, '16297', '533', '0', '0', '2839.146', '-3615.113', '260.4509', '4.9916420', '300', '5', '0', '0', '0', '0', '1'),
(@GUID + 5, '16297', '533', '0', '0', '2873.479', '-3605.539', '267.3330', '2.2566160', '300', '5', '0', '0', '0', '0', '1'),
(@GUID + 6, '16297', '533', '0', '0', '2841.539', '-3686.111', '278.1367', '2.8963410', '300', '5', '0', '0', '0', '0', '1'),
(@GUID + 7, '16297', '533', '0', '0', '2859.833', '-3683.379', '279.2765', '2.3913340', '300', '5', '0', '0', '0', '0', '1'),
(@GUID + 8, '16297', '533', '0', '0', '2785.109', '-3584.643', '253.6366', '4.3951410', '300', '5', '0', '0', '0', '0', '1'),
(@GUID + 9, '16297', '533', '0', '0', '2712.688', '-3607.779', '260.6323', '3.0539670', '300', '5', '0', '0', '0', '0', '1'),
(@GUID + 10, '16297', '533', '0', '0', '2734.747', '-3603.468', '258.6944', '2.3505830', '300', '5', '0', '0', '0', '0', '1'),
(@GUID + 11, '16297', '533', '0', '0', '2763.862', '-3577.336', '255.7524', '3.2975440', '300', '5', '0', '0', '0', '0', '1'),
(@GUID + 12, '16297', '533', '0', '0', '2900.054', '-3687.158', '284.8765', '4.7434980', '300', '5', '0', '0', '0', '0', '1'),
(@GUID + 13, '16297', '533', '0', '0', '2887.587', '-3669.024', '279.1860', '5.7020190', '300', '5', '0', '0', '0', '0', '1');

-- Plagued Bat
SET @GUID := '81781';
DELETE FROM `zp_mangosd`.`creature` WHERE `guid` BETWEEN @GUID + 0 AND @GUID + 35;
DELETE FROM `zp_mangosd`.`creature` WHERE `id`='16037';
INSERT INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 0, '16037', '533', '0', '0', '2766.364', '-3610.829', '255.6902', '1.9547690', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 1, '16037', '533', '0', '0', '2759.656', '-3575.943', '255.7154', '3.6781620', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 2, '16037', '533', '0', '0', '2750.463', '-3613.719', '256.7167', '3.4125890', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 3, '16037', '533', '0', '0', '2749.982', '-3572.633', '255.6230', '5.9553610', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 4, '16037', '533', '0', '0', '2756.837', '-3593.134', '257.1085', '0.2459719', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 5, '16037', '533', '0', '0', '2773.698', '-3570.050', '253.2635', '4.0531730', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 6, '16037', '533', '0', '0', '2696.845', '-3599.212', '261.2896', '3.7080510', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 7, '16037', '533', '0', '0', '2804.557', '-3591.253', '255.4044', '4.7144650', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 8, '16037', '533', '0', '0', '2677.901', '-3596.345', '261.5819', '3.3875290', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 9, '16037', '533', '0', '0', '2705.656', '-3572.007', '261.4941', '5.4042030', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 10, '16037', '533', '0', '0', '2833.935', '-3555.913', '253.2687', '1.3683580', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 11, '16037', '533', '0', '0', '2728.026', '-3593.528', '258.8707', '2.2016760', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 12, '16037', '533', '0', '0', '2811.493', '-3601.532', '257.7995', '3.6566110', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 13, '16037', '533', '0', '0', '2679.465', '-3611.752', '262.6963', '4.5029490', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 14, '16037', '533', '0', '0', '2816.567', '-3583.168', '254.7005', '1.8133660', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 15, '16037', '533', '0', '0', '2713.610', '-3599.974', '260.2629', '4.1015240', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 16, '16037', '533', '0', '0', '2860.913', '-3585.208', '262.4479', '5.0338760', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 17, '16037', '533', '0', '0', '2887.214', '-3633.743', '273.8759', '3.5946620', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 18, '16037', '533', '0', '0', '2856.490', '-3653.809', '272.6925', '0.7952903', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 19, '16037', '533', '0', '0', '2846.786', '-3576.005', '256.7085', '2.1617580', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 20, '16037', '533', '0', '0', '2887.766', '-3591.834', '270.7162', '6.2268260', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 21, '16037', '533', '0', '0', '2840.970', '-3601.423', '260.3569', '4.0727790', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 22, '16037', '533', '0', '0', '2895.610', '-3610.247', '273.2861', '0.6672850', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 23, '16037', '533', '0', '0', '2869.124', '-3643.082', '272.3780', '0.6359065', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 24, '16037', '533', '0', '0', '2893.387', '-3653.699', '277.0403', '3.7924570', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 25, '16037', '533', '0', '0', '2908.208', '-3598.815', '275.4491', '6.0025670', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 26, '16037', '533', '0', '0', '2851.075', '-3693.534', '281.2535', '1.4510410', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 27, '16037', '533', '0', '0', '2910.164', '-3581.518', '274.2117', '4.9959950', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 28, '16037', '533', '0', '0', '2899.712', '-3694.113', '285.4397', '4.8101560', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 29, '16037', '533', '0', '0', '2851.452', '-3717.975', '286.6672', '3.2637650', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 30, '16037', '533', '0', '0', '2915.778', '-3663.674', '278.5815', '2.8767610', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 31, '16037', '533', '0', '0', '2869.803', '-3718.724', '284.1617', '4.1684450', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 32, '16037', '533', '0', '0', '2862.947', '-3702.279', '283.3751', '1.3229940', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 33, '16037', '533', '0', '0', '2906.188', '-3715.619', '284.8616', '2.4893190', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 34, '16037', '533', '0', '0', '2881.447', '-3723.308', '284.6229', '3.7005700', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 35, '16037', '533', '0', '0', '2914.798', '-3690.415', '286.2263', '0.8837789', '30', '5', '0', '0', '0', '0', '1');

-- Frenzied Bat
SET @GUID := '81817';
DELETE FROM `zp_mangosd`.`creature` WHERE `guid` BETWEEN @GUID + 0 AND @GUID + 35;
DELETE FROM `zp_mangosd`.`creature` WHERE `id`='16036';
INSERT INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID + 0, '16036', '533', '0', '0', '2746.833', '-3596.910', '257.5289', '4.0680890', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 1, '16036', '533', '0', '0', '2773.892', '-3553.934', '251.0009', '1.8265720', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 2, '16036', '533', '0', '0', '2721.048', '-3615.260', '260.1215', '1.2980950', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 3, '16036', '533', '0', '0', '2764.992', '-3540.809', '253.5745', '0.5346282', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 4, '16036', '533', '0', '0', '2735.002', '-3608.374', '258.8584', '3.4657770', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 5, '16036', '533', '0', '0', '2753.106', '-3554.853', '255.3629', '1.9593390', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 6, '16036', '533', '0', '0', '2719.043', '-3576.173', '260.1240', '3.9793510', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 7, '16036', '533', '0', '0', '2796.732', '-3566.922', '252.0768', '4.9236600', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 8, '16036', '533', '0', '0', '2799.166', '-3611.105', '255.9104', '4.3298040', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 9, '16036', '533', '0', '0', '2659.542', '-3605.862', '262.4703', '5.6747060', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 10, '16036', '533', '0', '0', '2814.128', '-3572.996', '253.3909', '0.6767032', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 11, '16036', '533', '0', '0', '2696.570', '-3624.927', '262.6946', '5.7444900', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 12, '16036', '533', '0', '0', '2698.497', '-3585.110', '260.7792', '4.6983990', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 13, '16036', '533', '0', '0', '2799.896', '-3621.678', '256.0590', '1.5007440', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 14, '16036', '533', '0', '0', '2827.710', '-3545.165', '253.8345', '1.0670820', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 15, '16036', '533', '0', '0', '2819.885', '-3611.047', '258.7599', '3.0747760', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 16, '16036', '533', '0', '0', '2690.143', '-3610.980', '262.2883', '3.5220010', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 17, '16036', '533', '0', '0', '2672.378', '-3626.032', '266.2162', '2.2304250', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 18, '16036', '533', '0', '0', '2798.311', '-3550.752', '250.4881', '5.3026760', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 19, '16036', '533', '0', '0', '2865.585', '-3666.234', '276.2854', '0.5061455', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 20, '16036', '533', '0', '0', '2826.026', '-3625.748', '260.0031', '3.3287640', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 21, '16036', '533', '0', '0', '2847.231', '-3629.752', '264.2359', '5.8230500', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 22, '16036', '533', '0', '0', '2862.882', '-3597.033', '264.9629', '3.7581070', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 23, '16036', '533', '0', '0', '2895.225', '-3581.664', '272.6213', '4.5672100', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 24, '16036', '533', '0', '0', '2846.931', '-3673.215', '275.3965', '0.5182968', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 25, '16036', '533', '0', '0', '2838.076', '-3585.054', '256.5099', '3.1358170', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 26, '16036', '533', '0', '0', '2884.368', '-3609.457', '270.0616', '4.5378560', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 27, '16036', '533', '0', '0', '2858.012', '-3625.881', '266.0598', '0.5332515', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 28, '16036', '533', '0', '0', '2849.720', '-3598.388', '262.1687', '6.0716040', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 29, '16036', '533', '0', '0', '2882.462', '-3684.127', '281.9717', '4.6535710', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 30, '16036', '533', '0', '0', '2903.493', '-3623.252', '276.5471', '4.5701160', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 31, '16036', '533', '0', '0', '2910.600', '-3645.100', '276.4793', '0.6058805', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 32, '16036', '533', '0', '0', '2898.025', '-3678.331', '281.7563', '4.2057740', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 33, '16036', '533', '0', '0', '2882.088', '-3666.310', '278.3139', '0.1957645', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 34, '16036', '533', '0', '0', '2876.120', '-3701.309', '284.4327', '0.8469842', '30', '5', '0', '0', '0', '0', '1'),
(@GUID + 35, '16036', '533', '0', '0', '2894.943', '-3706.862', '286.0635', '6.1608480', '30', '5', '0', '0', '0', '0', '1');

-- Noth
DELETE FROM `zp_mangosd`.`creature_addon` WHERE `guid`='23741';

DELETE FROM `zp_mangosd`.`creature` WHERE `id` IN ('16243', '16244');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('81655', '16243', '533', '0', '0', '2936.259', '-3517.196', '297.7384', '1.5184360', '3600', '0', '0', '0', '0', '0', '0'),
('81656', '16244', '533', '0', '0', '2932.037', '-3521.468', '297.4229', '2.5830870', '3600', '0', '0', '0', '0', '0', '0'),
('81657', '16244', '533', '0', '0', '2931.755', '-3513.615', '297.8059', '2.2514750', '3600', '0', '0', '0', '0', '0', '0'),
('81658', '16244', '533', '0', '0', '2939.560', '-3513.226', '297.7116', '1.0646510', '3600', '0', '0', '0', '0', '0', '0'),
('81659', '16243', '533', '0', '0', '2897.139', '-3489.758', '297.9496', '3.8746310', '3600', '0', '0', '0', '0', '0', '0'),
('81660', '16244', '533', '0', '0', '2894.234', '-3474.811', '297.7180', '3.7350050', '3600', '0', '0', '0', '0', '0', '0'),
('81661', '16243', '533', '0', '0', '2929.953', '-3527.895', '297.8366', '2.2165680', '3600', '0', '0', '0', '0', '0', '0'),
('81662', '16244', '533', '0', '0', '2899.315', '-3481.326', '297.9493', '3.6651910', '3600', '0', '0', '0', '0', '0', '0'),
('81663', '16243', '533', '0', '0', '2885.540', '-3477.045', '297.7050', '3.7000980', '3600', '0', '0', '0', '0', '0', '0'),
('81664', '16244', '533', '0', '0', '2888.008', '-3486.664', '297.7037', '3.9269910', '3600', '0', '0', '0', '0', '0', '0'),
('81665', '16243', '533', '0', '0', '2871.924', '-3540.688', '297.6988', '0.8377581', '3600', '0', '0', '0', '0', '0', '0'),
('81666', '16244', '533', '0', '0', '2875.724', '-3547.320', '297.6977', '0.9250245', '3600', '0', '0', '0', '0', '0', '0'),
('81667', '16244', '533', '0', '0', '2866.233', '-3547.932', '297.9473', '0.4188790', '3600', '0', '0', '0', '0', '0', '0'),
('81668', '16243', '533', '0', '0', '2878.473', '-3556.359', '297.9449', '0.2792527', '3600', '0', '0', '0', '0', '0', '0'),
('81669', '16244', '533', '0', '0', '2868.358', '-3555.308', '297.9449', '1.2217300', '3600', '0', '0', '0', '0', '0', '0');

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('88095', '16168', '533', '0', '0', '2866.617', '-3472.706', '297.6957', '4.89531700', '3600', '0', '0', '0', '0', '0', '2'),
('88092', '16168', '533', '0', '0', '2840.628', '-3479.599', '297.9501', '5.02654800', '3600', '0', '0', '0', '0', '0', '0'),
('88093', '16168', '533', '0', '0', '2840.729', '-3499.906', '297.9405', '1.25663700', '3600', '0', '0', '0', '0', '0', '0'),
('88098', '16168', '533', '0', '0', '2777.770', '-3482.426', '274.1186', '4.69493600', '3600', '0', '0', '0', '0', '0', '0'),
('88099', '16168', '533', '0', '0', '2777.716', '-3497.578', '274.1181', '1.57079600', '3600', '0', '0', '0', '0', '0', '0'),
('88094', '16168', '533', '0', '0', '2733.123', '-3490.585', '262.1497', '0.01799400', '3600', '0', '0', '0', '0', '0', '2');

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('88100', '15954', '533', '0', '0', '2677.990', '-3485.048', '261.2899', '3.72116500', '604800', '0', '0', '0', '0', '0', '2');

SET @GUID := 88095;
SET @POINT := 0;
DELETE FROM `zp_mangosd`.`creature_movement` WHERE `id`=@GUID;
INSERT INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + 1, '2871.249', '-3500.704', '297.6215', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2888.541', '-3522.788', '297.6169', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2905.121', '-3519.568', '297.8625', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2921.399', '-3509.922', '297.4158', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2944.054', '-3494.677', '297.6312', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2921.399', '-3509.922', '297.4158', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2905.121', '-3519.568', '297.8625', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2888.541', '-3522.788', '297.6169', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2871.249', '-3500.704', '297.6215', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2864.621', '-3468.973', '297.8717', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

SET @GUID := 88094;
SET @POINT := 0;
DELETE FROM `zp_mangosd`.`creature_movement` WHERE `id`=@GUID;
INSERT INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + 1, '2775.243', '-3489.796', '274.0329', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2809.425', '-3490.459', '285.9652', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2836.616', '-3489.816', '297.8626', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2854.793', '-3489.831', '297.8825', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2872.719', '-3489.734', '297.6226', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2855.090', '-3489.832', '297.8828', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2836.616', '-3489.816', '297.8626', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2809.425', '-3490.459', '285.9652', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2775.243', '-3489.796', '274.0329', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2728.599', '-3490.620', '262.1201', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

SET @GUID := 15954;
SET @POINT := 0;
DELETE FROM `zp_mangosd`.`creature_movement` WHERE `id` = (SELECT `guid` FROM `creature` WHERE `id`=@GUID);
DELETE FROM `zp_mangosd`.`creature_movement_template` WHERE `entry`=@GUID;
INSERT INTO `zp_mangosd`.`creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + 1, '2671.649', '-3489.110', '261.3480', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2666.340', '-3502.596', '261.2925', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2670.345', '-3514.169', '261.2390', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2676.189', '-3520.290', '261.2220', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2670.345', '-3514.169', '261.2390', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2666.340', '-3502.596', '261.2925', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2671.649', '-3489.110', '261.3480', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + 1, '2676.566', '-3484.499', '261.3763', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Defias Tower Patrollers
-- Westfall
-- Defias Tower Patroller correct models.
UPDATE `zp_mangosd`.`creature_model_info` SET bounding_radius = 0.208, combat_reach = 1.5, modelid_other_gender = 0 WHERE modelid = 5809;
UPDATE `zp_mangosd`.`creature_model_info` SET modelid_other_gender = 0 WHERE modelid = 5811;

-- Defias Tower Patroller(Patroller Raven)
UPDATE `zp_mangosd`.`creature` SET spawndist = 0, MovementType = 2, modelid = 5811 WHERE guid = 66991;
DELETE FROM `zp_mangosd`.`creature_movement` WHERE id = 66991;
INSERT INTO `zp_mangosd`.`creature_movement` (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(66991,1,-11151.9,552.766,55.8906, 0, 0,4.95002, 0, 0),
(66991,2,-11150.2,550.355,55.9111, 0, 0,5.71106, 0, 0),
(66991,3,-11141.5,544.132,56.255, 0, 0,4.85341, 0, 0),
(66991,4,-11142.6,542.11,56.0286, 0, 0,4.09943, 0, 0),
(66991,5,-11147.1,534.51,52.4846, 0, 0,4.26829, 0, 0),
(66991,6,-11146.7,532.219,52.4383, 0, 0,5.48094, 0, 0),
(66991,7,-11142.3,531.459,51.4746, 0, 0,6.20821, 0, 0),
(66991,8,-11136.9,532.989,49.7902, 0, 0,0.596542, 0, 0),
(66991,9,-11132.2,537.43,49.2267, 0, 0,1.07406, 0, 0),
(66991,10,-11130.5,542.865,49.2252, 0, 0,1.43299, 0, 0),
(66991,11,-11130.7,547.493,49.7138, 0, 0,1.99691, 0, 0),
(66991,12,-11133.1,552.149,51.2245, 0, 0,2.35191, 0, 0),
(66991,13,-11136.8,555.297,52.7825, 0, 0,2.81843, 0, 0),
(66991,14,-11141.6,556.864,54.3274, 0, 0,3.05877, 0, 0),
(66991,15,-11145.5,556.425,55.3242, 0, 0,3.43576, 0, 0),
(66991,16,-11149.9,554.571,55.8312, 0, 0,3.76955, 0, 0);

-- Defias Tower Patroller(Patroller Jill)
UPDATE `zp_mangosd`.`creature` SET spawndist = 0, MovementType = 2, modelid = 5809 WHERE guid = 66988;
DELETE FROM `zp_mangosd`.`creature_movement` WHERE id = 66988;
INSERT INTO `zp_mangosd`.`creature_movement` (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(66988,1,-11153.5,546.207,40.6269, 0, 0,5.73933, 0, 0),
(66988,2,-11150.8,546.363,40.6269, 0, 0,0.682932, 0, 0),
(66988,3,-11147.8,550.575,42.432, 0, 0,0.532921, 0, 0),
(66988,4,-11144.3,551.318,44.3101, 0, 0,6.14145, 0, 0),
(66988,5,-11142.6,551.21,45.1275, 0, 0,5.88229, 0, 0),
(66988,6,-11141.7,550.748,45.6448, 0, 0,5.88229, 0, 0),
(66988,7,-11139.3,548.253,46.4923, 0, 0,4.29027, 0, 0),
(66988,8,-11141.2,545.493,46.5627, 26000, 705201,4.10334, 0, 0),
(66988,9,-11145.8,540.158,45.2584, 0, 0,4.13162, 0, 0),
(66988,10,-11148.1,535.534,43.4048, 0, 0,4.29969, 0, 0),
(66988,11,-11148,532.609,43.4048, 0, 0,5.42281, 0, 0),
(66988,12,-11143.1,531.239,43.4048, 0, 0,6.27575, 0, 0),
(66988,13,-11136,533.194,41.2813, 0, 0,0.720626, 0, 0),
(66988,14,-11131.8,538.019,39.0006, 0, 0,1.22351, 0, 0),
(66988,15,-11130.3,545.517,36.2797, 0, 0,1.69003, 0, 0),
(66988,16,-11133.6,550.188,35.9606, 0, 0,2.44402, 0, 0),
(66988,17,-11139.5,554.752,35.9606, 0, 0,2.68356, 0, 0),
(66988,18,-11143.9,556.573,36.4455, 0, 0,3.20035, 0, 0),
(66988,19,-11148.6,555.284,38.2665, 0, 0,3.5475, 0, 0),
(66988,20,-11151.9,553.449,39.5563, 0, 0,4.03052, 0, 0),
(66988,21,-11153.8,550.489,40.6271, 0, 0,4.45149, 0, 0);