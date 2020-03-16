/*
 Navicat Premium Data Transfer

 Source Server         : postgres
 Source Server Type    : PostgreSQL
 Source Server Version : 110005
 Source Host           : localhost:5432
 Source Catalog        : postgres
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 110005
 File Encoding         : 65001

 Date: 16/03/2020 12:08:26
*/


-- ----------------------------
-- Table structure for absensi_level
-- ----------------------------
DROP TABLE IF EXISTS "public"."absensi_level";
CREATE TABLE "public"."absensi_level" (
  "id_absensi_level" uuid NOT NULL,
  "level" varchar(255) COLLATE "pg_catalog"."default",
  "label" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of absensi_level
-- ----------------------------
INSERT INTO "public"."absensi_level" VALUES ('be1a1644-2eaa-4cf5-b5c2-af2e9f47728b', '1', 'excelent');
INSERT INTO "public"."absensi_level" VALUES ('9e306460-9559-44e7-950e-3ec64479e6d0', '2', 'normal');
INSERT INTO "public"."absensi_level" VALUES ('807d5ff2-445b-4f73-92bb-cc311ddc75c6', '3', 'late
');
INSERT INTO "public"."absensi_level" VALUES ('f4e25ab7-54c2-45ba-9921-783e51b81a7a', '4', 'danger');

-- ----------------------------
-- Primary Key structure for table absensi_level
-- ----------------------------
ALTER TABLE "public"."absensi_level" ADD CONSTRAINT "absensi_level_pkey" PRIMARY KEY ("id_absensi_level");
