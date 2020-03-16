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

 Date: 16/03/2020 11:42:46
*/


-- ----------------------------
-- Table structure for departement
-- ----------------------------
DROP TABLE IF EXISTS "public"."departement";
CREATE TABLE "public"."departement" (
  "id_departement" uuid NOT NULL,
  "id_company" varchar(255) COLLATE "pg_catalog"."default",
  "id_branch" varchar(255) COLLATE "pg_catalog"."default",
  "alias" varchar(255) COLLATE "pg_catalog"."default",
  "nama" varchar(255) COLLATE "pg_catalog"."default",
  "created_by" varchar(255) COLLATE "pg_catalog"."default",
  "created_time" time(0),
  "id_karyawan" varchar(255) COLLATE "pg_catalog"."default",
  "type" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Primary Key structure for table departement
-- ----------------------------
ALTER TABLE "public"."departement" ADD CONSTRAINT "departement_pkey" PRIMARY KEY ("id_departement");
