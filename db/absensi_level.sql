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

 Date: 10/02/2020 16:54:29
*/


-- ----------------------------
-- Table structure for absensi_level
-- ----------------------------
DROP TABLE IF EXISTS "public"."absensi_level";
CREATE TABLE "public"."absensi_level" (
  "id_absensi_level" uuid NOT NULL,
  "level" varchar(255) COLLATE "pg_catalog"."default",
  "label" varchar(255) COLLATE "pg_catalog"."default",
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of absensi_level
-- ----------------------------
INSERT INTO "public"."absensi_level" VALUES ('66e38b1a-38b7-4e09-ae5e-ba6830b72e28', 'aweu', 'pakuak', '2020-02-10 02:14:20', '2020-02-10 02:14:20');
INSERT INTO "public"."absensi_level" VALUES ('6c9e098a-8322-4baf-aa0d-d598b383447d', '213123', 'pakuakasdasdasd', '2020-02-10 15:19:29', '2020-02-10 15:19:29');

-- ----------------------------
-- Primary Key structure for table absensi_level
-- ----------------------------
ALTER TABLE "public"."absensi_level" ADD CONSTRAINT "absensi_level_pkey" PRIMARY KEY ("id_absensi_level");
