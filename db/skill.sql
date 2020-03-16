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

 Date: 16/03/2020 11:42:11
*/


-- ----------------------------
-- Table structure for skill
-- ----------------------------
DROP TABLE IF EXISTS "public"."skill";
CREATE TABLE "public"."skill" (
  "id_skill" uuid NOT NULL,
  "skill_name" varchar(255) COLLATE "pg_catalog"."default",
  "description" text COLLATE "pg_catalog"."default",
  "id_karyawan" varchar(255) COLLATE "pg_catalog"."default",
  "score" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Primary Key structure for table skill
-- ----------------------------
ALTER TABLE "public"."skill" ADD CONSTRAINT "skill_pkey" PRIMARY KEY ("id_skill");
