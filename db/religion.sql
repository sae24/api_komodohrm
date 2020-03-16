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

 Date: 16/03/2020 11:42:21
*/


-- ----------------------------
-- Table structure for religion
-- ----------------------------
DROP TABLE IF EXISTS "public"."religion";
CREATE TABLE "public"."religion" (
  "id_religion" uuid NOT NULL,
  "religion_description" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Primary Key structure for table religion
-- ----------------------------
ALTER TABLE "public"."religion" ADD CONSTRAINT "religion_pkey" PRIMARY KEY ("id_religion");
