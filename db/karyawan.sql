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

 Date: 10/02/2020 16:54:38
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
INSERT INTO "public"."karyawan" VALUES ('59b98d05-db09-41a5-b5f6-de1e3e08f0de', 'Fauzan Herdika Tubagus Putra', 'ojan', 'komp.permata biru', 'indo', 'jabar', 'bandung', 'bandung', '1999-10-16', 'islam', 'O', 'komp.permata', 'indo', 'jabar', 'bandung', '123123', 'wni', 'gapunya', 'belum kawin', 'laki', 'sunda', 'asd', 'asdasd', '2020-02-10 04:38:31', '2020-02-10 04:38:31');

-- ----------------------------
-- Primary Key structure for table karyawan
-- ----------------------------
ALTER TABLE "public"."karyawan" ADD CONSTRAINT "karyawan_pkey" PRIMARY KEY ("id_karyawan");
