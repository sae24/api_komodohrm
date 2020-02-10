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

 Date: 10/02/2020 16:54:13
*/


-- ----------------------------
-- Table structure for absensi
-- ----------------------------
DROP TABLE IF EXISTS "public"."absensi";
CREATE TABLE "public"."absensi" (
  "id_absensi" uuid NOT NULL,
  "checkin_date" date,
  "checkin_time" time(0),
  "check_out_date" date,
  "check_out_time" time(0),
  "lattitude" varchar(255) COLLATE "pg_catalog"."default",
  "longitude" varchar(255) COLLATE "pg_catalog"."default",
  "id_level" varchar(255) COLLATE "pg_catalog"."default",
  "late_reason" varchar(255) COLLATE "pg_catalog"."default",
  "leave_reason" varchar(255) COLLATE "pg_catalog"."default",
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of absensi
-- ----------------------------
INSERT INTO "public"."absensi" VALUES ('f07e1bfb-ea05-4c72-9005-cf43c1898308', '2020-02-04', '12:03:38', '2020-02-04', '13:03:38', 'lintang', 'garis', 'wadaw wadidaw', 'macet', 'lapar', '2020-02-10 04:41:41', '2020-02-10 04:41:41');

-- ----------------------------
-- Primary Key structure for table absensi
-- ----------------------------
ALTER TABLE "public"."absensi" ADD CONSTRAINT "absensi_pkey" PRIMARY KEY ("id_absensi");
