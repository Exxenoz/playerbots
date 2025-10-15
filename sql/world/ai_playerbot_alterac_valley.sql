/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50739
Source Host           : localhost:3306
Source Database       : classicmangos

Target Server Type    : MYSQL
Target Server Version : 50739
File Encoding         : 65001

Date: 2025-10-15 23:29:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ai_playerbot_named_location`
-- ----------------------------
DROP TABLE IF EXISTS `ai_playerbot_named_location`;
CREATE TABLE `ai_playerbot_named_location` (
  `name` char(128) NOT NULL,
  `map_id` smallint(5) NOT NULL,
  `position_x` decimal(40,20) NOT NULL,
  `position_y` decimal(40,20) NOT NULL,
  `position_z` decimal(40,20) NOT NULL,
  `orientation` decimal(40,20) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='PlayerbotAI Travel Node';

-- ----------------------------
-- Records of ai_playerbot_named_location
-- ----------------------------
INSERT INTO `ai_playerbot_named_location` VALUES ('AV_DUNBALDAR_NORTH', '30', '674.00061035156250000000', '-143.12506103515625000000', '63.66151428222656250000', '0.99483770132064819300', 'AV - Dunbaldar North');
INSERT INTO `ai_playerbot_named_location` VALUES ('AV_DUNBALDAR_SOUTH', '30', '553.77941894531250000000', '-78.65657806396484370000', '51.93778610229492187000', '-1.22173047065734863000', 'AV - Dunbaldar South');
INSERT INTO `ai_playerbot_named_location` VALUES ('AV_EAST_FROSTWOLF_TOWER', '30', '-1302.86816406250000000000', '-316.96838378906250000000', '113.86710357666015620000', '2.00712871551513671800', 'AV - East Frostwolf Tower');
INSERT INTO `ai_playerbot_named_location` VALUES ('AV_FROSTWOLF_GRAVEYARD', '30', '-1082.52941894531250000000', '-346.56701660156250000000', '54.97712326049804687000', '-1.55334317684173583000', 'AV - Frostwolf Graveyard');
INSERT INTO `ai_playerbot_named_location` VALUES ('AV_FROSTWOLF_RELIEF_HUT', '30', '-1402.19189453125000000000', '-307.46707153320312500000', '89.44189453125000000000', '0.19198621809482574400', 'AV - Frostwolf Relief Hut');
INSERT INTO `ai_playerbot_named_location` VALUES ('AV_ICEBLOOD_GARRISON_WAITING_ALLIANCE', '30', '-492.17000000000000000000', '-187.07700000000000000000', '57.13420000000000000000', '2.77000000000000000000', 'AV - Iceblood Garrison - Waiting Alliance');
INSERT INTO `ai_playerbot_named_location` VALUES ('AV_ICEBLOOD_GRAVEYARD', '30', '-612.67163085937500000000', '-396.69326782226562500000', '60.85839080810546875000', '3.08923268318176269500', 'AV - Iceblood Graveyard');
INSERT INTO `ai_playerbot_named_location` VALUES ('AV_ICEBLOOD_TOWER', '30', '-571.87963867187500000000', '-262.77676391601562500000', '75.00867462158203125000', '-0.80285149812698364000', 'AV - Iceblood Tower');
INSERT INTO `ai_playerbot_named_location` VALUES ('AV_ICEWING_BUNKER', '30', '203.23849487304687500000', '-360.26422119140625000000', '56.38615036010742187000', '-0.87266474962234497000', 'AV - Icewing Bunker');
INSERT INTO `ai_playerbot_named_location` VALUES ('AV_SNOWFALL_GRAVEYARD', '30', '-202.27778625488281200000', '-113.20844268798828100000', '78.47940826416015625000', '-1.25663685798645019000', 'AV - Snowfall Graveyard');
INSERT INTO `ai_playerbot_named_location` VALUES ('AV_STONEHEART_BUNKER', '30', '-152.43391418457031200000', '-441.61480712890625000000', '40.39709472656250000000', '-1.93731522560119628000', 'AV - Stonehearth Bunker');
INSERT INTO `ai_playerbot_named_location` VALUES ('AV_STONEHEART_GRAVEYARD', '30', '77.50444793701171875000', '-404.58734130859375000000', '46.78254318237304687000', '2.28638124465942382800', 'AV - Stoneheart Graveyard');
INSERT INTO `ai_playerbot_named_location` VALUES ('AV_STONEHEART_OUTPOST_WAITING_HORDE', '30', '28.12640000000000000000', '-302.59300000000000000000', '15.07600000000000000000', '2.96000000000000000000', 'AV - Stoneheart Outpost - Waiting Horde');
INSERT INTO `ai_playerbot_named_location` VALUES ('AV_STORMPIKE_AID_STATION', '30', '638.59210205078125000000', '-32.42203903198242180000', '46.06084442138671875000', '-1.62315630912780761000', 'AV - Stormpike Aid Station');
INSERT INTO `ai_playerbot_named_location` VALUES ('AV_STORMPIKE_GRAVEYARD', '30', '669.00726318359375000000', '-294.07827758789062500000', '30.29091072082519531000', '2.77507352828979492100', 'AV - Stormpike Graveyard');
INSERT INTO `ai_playerbot_named_location` VALUES ('AV_TOWERPOINT', '30', '-768.08728027343750000000', '-362.66607666015625000000', '90.89485931396484375000', '1.11701071262359619100', 'AV - Towerpoint');
INSERT INTO `ai_playerbot_named_location` VALUES ('AV_WEST_FROSTWOLF_TOWER', '30', '-1297.71545410156250000000', '-266.74148559570312500000', '114.15122222900390620000', '-2.96705961227416992000', 'AV - West Frostwolf Tower');

-- ----------------------------
-- Table structure for `ai_playerbot_strategy`
-- ----------------------------
DROP TABLE IF EXISTS `ai_playerbot_strategy`;
CREATE TABLE `ai_playerbot_strategy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` varchar(1024) NOT NULL DEFAULT '',
  `related_strategies` varchar(1024) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai_playerbot_strategy
-- ----------------------------
INSERT INTO `ai_playerbot_strategy` VALUES ('1', '2', 'bg', 'This strategy will make bots queue up for battle grounds remotely and join them when they get an invite.', 'battleground');
INSERT INTO `ai_playerbot_strategy` VALUES ('2', '2', 'battleground', 'This strategy gives bots basic behavior inside battle grounds like checking and moving to objectives and getting ready at the start gates.', 'bg,warsong,arathi,alterac,eye,isle,arena');
INSERT INTO `ai_playerbot_strategy` VALUES ('3', '0', 'alterac', 'This strategy controls the behavior during an alterac valley battleground.', 'battleground,bg');

-- ----------------------------
-- Table structure for `ai_playerbot_strategy_action`
-- ----------------------------
DROP TABLE IF EXISTS `ai_playerbot_strategy_action`;
CREATE TABLE `ai_playerbot_strategy_action` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `trigger_id` int(11) unsigned NOT NULL,
  `execution_order` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  `priority` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `trigger_id` (`trigger_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai_playerbot_strategy_action
-- ----------------------------
INSERT INTO `ai_playerbot_strategy_action` VALUES ('1', '1', '0', 'bg join', '100');
INSERT INTO `ai_playerbot_strategy_action` VALUES ('2', '2', '1', 'bg status check', '100');
INSERT INTO `ai_playerbot_strategy_action` VALUES ('3', '3', '0', 'bg move to start', '1');
INSERT INTO `ai_playerbot_strategy_action` VALUES ('4', '4', '0', 'check mount state', '2');
INSERT INTO `ai_playerbot_strategy_action` VALUES ('5', '4', '1', 'bg move to objective', '1');
INSERT INTO `ai_playerbot_strategy_action` VALUES ('6', '5', '0', 'bg check objective', '10');
INSERT INTO `ai_playerbot_strategy_action` VALUES ('7', '6', '0', 'bg check flag', '20');
INSERT INTO `ai_playerbot_strategy_action` VALUES ('8', '7', '0', 'bg leave', '20');
INSERT INTO `ai_playerbot_strategy_action` VALUES ('9', '8', '0', 'bg banner', '10');

-- ----------------------------
-- Table structure for `ai_playerbot_strategy_trigger`
-- ----------------------------
DROP TABLE IF EXISTS `ai_playerbot_strategy_trigger`;
CREATE TABLE `ai_playerbot_strategy_trigger` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `strategy_id` int(11) unsigned NOT NULL,
  `execution_order` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  `flags` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `strategy_id` (`strategy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ai_playerbot_strategy_trigger
-- ----------------------------
INSERT INTO `ai_playerbot_strategy_trigger` VALUES ('1', '1', '0', 'random', '1');
INSERT INTO `ai_playerbot_strategy_trigger` VALUES ('2', '1', '1', 'bg invite active', '1');
INSERT INTO `ai_playerbot_strategy_trigger` VALUES ('3', '2', '0', 'bg waiting', '1');
INSERT INTO `ai_playerbot_strategy_trigger` VALUES ('4', '2', '1', 'bg active', '1');
INSERT INTO `ai_playerbot_strategy_trigger` VALUES ('5', '2', '2', 'very often', '1');
INSERT INTO `ai_playerbot_strategy_trigger` VALUES ('6', '2', '3', 'bg active', '1');
INSERT INTO `ai_playerbot_strategy_trigger` VALUES ('7', '2', '4', 'bg ended', '1');
INSERT INTO `ai_playerbot_strategy_trigger` VALUES ('8', '3', '0', 'very often', '2');
