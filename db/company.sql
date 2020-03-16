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

 Date: 16/03/2020 11:42:54
*/


-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS "public"."company";
CREATE TABLE "public"."company" (
  "id_company" uuid NOT NULL,
  "nama" varchar(255) COLLATE "pg_catalog"."default",
  "telepon" varchar(255) COLLATE "pg_catalog"."default",
  "alamat" varchar(255) COLLATE "pg_catalog"."default",
  "website" varchar(255) COLLATE "pg_catalog"."default",
  "email" varchar(255) COLLATE "pg_catalog"."default",
  "created_by" varchar(255) COLLATE "pg_catalog"."default",
  "created_time" time(0),
  "id_karyawan" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO "public"."company" VALUES ('15eab756-a41b-4431-a7f0-908379c5e1a3', 'test', 'test', 'test', NULL, 'test', NULL, '11:16:10', NULL);
INSERT INTO "public"."company" VALUES ('8f6f4039-b720-4f6b-9e75-badb7881139d', 'test', 'test', 'test', NULL, 'test', 'test', '11:16:51', NULL);
INSERT INTO "public"."company" VALUES ('3dc11eb7-ca8d-4d67-91e7-0e9ba152512b', 'test', 'test', 'test', NULL, 'test', 'test', '16:47:22', NULL);

-- ----------------------------
-- Primary Key structure for table company
-- ----------------------------
ALTER TABLE "public"."company" ADD CONSTRAINT "company_pkey" PRIMARY KEY ("id_company");
