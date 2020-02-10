/*
 Navicat Premium Data Transfer

 Source Server         : LOCAL
 Source Server Type    : PostgreSQL
 Source Server Version : 100007
 Source Host           : localhost:5432
 Source Catalog        : komodo
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 100007
 File Encoding         : 65001

 Date: 07/02/2020 10:34:03
*/


-- ----------------------------
-- Table structure for T_KARYAWAN
-- ----------------------------
DROP TABLE IF EXISTS "public"."T_KARYAWAN";
CREATE TABLE "public"."T_KARYAWAN" (
  "ID_KARYAWAN" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "NAMA_LENGKAP" varchar(100) COLLATE "pg_catalog"."default",
  "NAMA_PANGGILAN" varchar(100) COLLATE "pg_catalog"."default",
  "ALAMAT_DOMISILI" text COLLATE "pg_catalog"."default",
  "NEGARA_DOMISILI" varchar(100) COLLATE "pg_catalog"."default",
  "PROVINSI_DOMISILI" varchar(100) COLLATE "pg_catalog"."default",
  "KOTA_DOMISILI" varchar(100) COLLATE "pg_catalog"."default",
  "TEMPAT_LAHIR" varchar(100) COLLATE "pg_catalog"."default",
  "TANGGAL_LAHIR" date,
  "AGAMA" varchar(100) COLLATE "pg_catalog"."default",
  "GOL_DARAH" varchar(100) COLLATE "pg_catalog"."default",
  "ALAMAT_ASAL" varchar(100) COLLATE "pg_catalog"."default",
  "NEGARA_ASAL" varchar(100) COLLATE "pg_catalog"."default",
  "PROVINSI_ASAL" varchar(100) COLLATE "pg_catalog"."default",
  "KOTA_ASAL" varchar(100) COLLATE "pg_catalog"."default",
  "NIK" varchar(100) COLLATE "pg_catalog"."default",
  "KEWARGANEGARAAN" varchar(100) COLLATE "pg_catalog"."default",
  "NO_PASSPORT" varchar(100) COLLATE "pg_catalog"."default",
  "STATUS_PERKAWINAN" varchar(100) COLLATE "pg_catalog"."default",
  "GENDER" varchar(100) COLLATE "pg_catalog"."default",
  "SUKU_BANGSA" varchar(255) COLLATE "pg_catalog"."default",
  "ID_POSISI" varchar(100) COLLATE "pg_catalog"."default",
  "CREATED_DATE" timestamp(0),
  "UPDATED_DATE" timestamp(0),
  "ID_USER" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Primary Key structure for table T_KARYAWAN
-- ----------------------------
ALTER TABLE "public"."T_KARYAWAN" ADD CONSTRAINT "T_BIODATA_pkey" PRIMARY KEY ("ID_KARYAWAN");
