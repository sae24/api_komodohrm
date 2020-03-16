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

 Date: 16/03/2020 11:42:38
*/


-- ----------------------------
-- Table structure for gender
-- ----------------------------
DROP TABLE IF EXISTS "public"."gender";
CREATE TABLE "public"."gender" (
  "id_gender" uuid NOT NULL,
  "gender_description" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Primary Key structure for table gender
-- ----------------------------
ALTER TABLE "public"."gender" ADD CONSTRAINT "gender_pkey" PRIMARY KEY ("id_gender");
