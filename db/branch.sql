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

 Date: 16/03/2020 11:43:03
*/


-- ----------------------------
-- Table structure for branch
-- ----------------------------
DROP TABLE IF EXISTS "public"."branch";
CREATE TABLE "public"."branch" (
  "id_branch" uuid NOT NULL,
  "id_company" varchar(255) COLLATE "pg_catalog"."default",
  "uniq_code" varchar(255) COLLATE "pg_catalog"."default",
  "lokasi" varchar(255) COLLATE "pg_catalog"."default",
  "latitude" varchar(255) COLLATE "pg_catalog"."default",
  "longitude" varchar(255) COLLATE "pg_catalog"."default",
  "created_by" varchar(255) COLLATE "pg_catalog"."default",
  "created_time" time(0),
  "id_karyawan" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of branch
-- ----------------------------
INSERT INTO "public"."branch" VALUES ('5664bc53-d52f-4858-b438-04daa4a38665', 'test', 'test', 'test', 'test', NULL, 'test', '11:21:42', 'test');
INSERT INTO "public"."branch" VALUES ('1518407d-812c-4a98-afe0-f7db790397e6', 'test', 'test', 'test', 'test', 'test', 'test', '11:22:40', 'test');
INSERT INTO "public"."branch" VALUES ('3330eccf-8793-4ca6-927a-acb464a5ec89', ' updated', 'test', 'test', 'test', 'test', 'test', '11:24:29', 'test');

-- ----------------------------
-- Primary Key structure for table branch
-- ----------------------------
ALTER TABLE "public"."branch" ADD CONSTRAINT "branch_pkey" PRIMARY KEY ("id_branch");
