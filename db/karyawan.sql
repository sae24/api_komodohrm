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

 Date: 16/03/2020 12:08:18
*/


-- ----------------------------
-- Table structure for karyawan
-- ----------------------------
DROP TABLE IF EXISTS "public"."karyawan";
CREATE TABLE "public"."karyawan" (
  "id_karyawan" uuid NOT NULL,
  "nama_lengkap" varchar(255) COLLATE "pg_catalog"."default",
  "nama_panggilan" varchar(255) COLLATE "pg_catalog"."default",
  "alamat_domisili" text COLLATE "pg_catalog"."default",
  "negara_domisili" varchar(255) COLLATE "pg_catalog"."default",
  "provinsi_domisili" varchar(255) COLLATE "pg_catalog"."default",
  "kota_domisili" varchar(255) COLLATE "pg_catalog"."default",
  "tempat_lahir" varchar(255) COLLATE "pg_catalog"."default",
  "tanggal_lahir" date,
  "agama" varchar(255) COLLATE "pg_catalog"."default",
  "gol_darah" varchar(255) COLLATE "pg_catalog"."default",
  "alamat_asal" varchar(255) COLLATE "pg_catalog"."default",
  "negara_asal" varchar(255) COLLATE "pg_catalog"."default",
  "provinsi_asal" varchar(255) COLLATE "pg_catalog"."default",
  "kota_asal" varchar(255) COLLATE "pg_catalog"."default",
  "nik" varchar(255) COLLATE "pg_catalog"."default",
  "kewarganegaraan" varchar(255) COLLATE "pg_catalog"."default",
  "no_passport" varchar(255) COLLATE "pg_catalog"."default",
  "status_perkawinan" varchar(255) COLLATE "pg_catalog"."default",
  "gender" varchar(255) COLLATE "pg_catalog"."default",
  "suku_bangsa" varchar(255) COLLATE "pg_catalog"."default",
  "id_posisi" varchar(255) COLLATE "pg_catalog"."default",
  "id_user" varchar(255) COLLATE "pg_catalog"."default",
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of karyawan
-- ----------------------------
INSERT INTO "public"."karyawan" VALUES ('4c737842-1ec7-43e4-91df-88387b7ff823', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06828906-de8b-4e09-8ef5-14d2a38285db', '2020-02-20 09:27:39', '2020-02-20 09:27:39');
INSERT INTO "public"."karyawan" VALUES ('f5fad106-da0a-4ab6-abff-fd7a35f0da7d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '140b8270-2079-4099-8622-13cf4da2e56c', '2020-02-25 14:46:48', '2020-02-25 14:46:48');

-- ----------------------------
-- Primary Key structure for table karyawan
-- ----------------------------
ALTER TABLE "public"."karyawan" ADD CONSTRAINT "karyawan_pkey" PRIMARY KEY ("id_karyawan");
