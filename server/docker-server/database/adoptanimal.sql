
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for animal
-- ----------------------------
DROP TABLE IF EXISTS `animal`;
CREATE TABLE `animal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `age` int DEFAULT NULL,
  `sex` varchar(32) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `breed` varchar(32) DEFAULT NULL,
  `color` varchar(32) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `acgurl` varchar(255) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;
