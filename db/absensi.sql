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

 Date: 16/03/2020 12:08:32
*/


-- ----------------------------
-- Table structure for absensi
-- ----------------------------
DROP TABLE IF EXISTS "public"."absensi";
CREATE TABLE "public"."absensi" (
  "id_absensi" uuid NOT NULL,
  "id_karyawan" varchar(255) COLLATE "pg_catalog"."default",
  "id_user" varchar(255) COLLATE "pg_catalog"."default",
  "checkin_date" date,
  "checkin_time" time(0),
  "check_out_date" date,
  "check_out_time" time(0),
  "lattitude" varchar(255) COLLATE "pg_catalog"."default",
  "longitude" varchar(255) COLLATE "pg_catalog"."default",
  "id_level" varchar(255) COLLATE "pg_catalog"."default",
  "late_reason" varchar(255) COLLATE "pg_catalog"."default",
  "leave_reason" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of absensi
-- ----------------------------
INSERT INTO "public"."absensi" VALUES ('164b3ce9-2553-44c3-8fec-0e84748c8c3e', NULL, NULL, '2020-02-25', '14:02:41', NULL, NULL, 'asd', 'asd', '4', 'asd', NULL);
INSERT INTO "public"."absensi" VALUES ('8e1ab917-ec88-46a6-93ae-4bd088110306', '4c737842-1ec7-43e4-91df-88387b7ff823', '06828906-de8b-4e09-8ef5-14d2a38285db', '2020-02-25', '14:03:35', NULL, NULL, 'asd', 'asd', '4', 'asd', NULL);
INSERT INTO "public"."absensi" VALUES ('619f9d23-27f9-4aab-b454-4106e24b03ee', '4c737842-1ec7-43e4-91df-88387b7ff823', '06828906-de8b-4e09-8ef5-14d2a38285db', '2020-02-25', '14:08:43', NULL, NULL, 'asd', 'asd', '4', 'asd', NULL);
INSERT INTO "public"."absensi" VALUES ('2dd84bdb-acca-43f2-ae90-15ea2ad7c6a2', '4c737842-1ec7-43e4-91df-88387b7ff823', '06828906-de8b-4e09-8ef5-14d2a38285db', '2020-02-25', '14:17:49', NULL, NULL, 'asd', 'asd', '4', 'asd', NULL);
INSERT INTO "public"."absensi" VALUES ('072ff4b8-0223-4a68-b1d0-ca5a80a55c26', 'f5fad106-da0a-4ab6-abff-fd7a35f0da7d', '140b8270-2079-4099-8622-13cf4da2e56c', '2020-02-25', '14:47:13', NULL, NULL, 'asd', 'asd', '4', 'asd', NULL);
INSERT INTO "public"."absensi" VALUES ('58c146ae-c730-4ead-92c3-520f67030f6c', '4c737842-1ec7-43e4-91df-88387b7ff823', '06828906-de8b-4e09-8ef5-14d2a38285db', '2020-03-10', '22:46:46', NULL, NULL, 'asd', 'asd', '4', 'asd', NULL);
INSERT INTO "public"."absensi" VALUES ('3723da31-9937-4a2a-bad2-da2cd7526b65', '4c737842-1ec7-43e4-91df-88387b7ff823', '06828906-de8b-4e09-8ef5-14d2a38285db', '2020-03-10', '22:51:18', NULL, NULL, 'asd', 'asd', '4', 'asd', NULL);

-- ----------------------------
-- Primary Key structure for table absensi
-- ----------------------------
ALTER TABLE "public"."absensi" ADD CONSTRAINT "absensi_pkey" PRIMARY KEY ("id_absensi");
