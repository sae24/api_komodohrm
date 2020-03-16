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

 Date: 16/03/2020 12:08:09
*/


-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
  "id_user" uuid NOT NULL,
  "username" varchar(255) COLLATE "pg_catalog"."default",
  "email" varchar(255) COLLATE "pg_catalog"."default",
  "password" varchar(255) COLLATE "pg_catalog"."default",
  "role" varchar(255) COLLATE "pg_catalog"."default",
  "created_by" varchar(255) COLLATE "pg_catalog"."default",
  "created_date" date,
  "status" int4
)
;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "public"."users" VALUES ('06828906-de8b-4e09-8ef5-14d2a38285db', 'ojanherdika', 'ojanherdika@gmail.com', '$2y$10$SqDZvUZCMSK1SKC4o0D7O.r4xCWA2Ls3C8AlNPyiXOPDT9td1fEqa', 'admin', 'admin', '2020-02-20', 1);
INSERT INTO "public"."users" VALUES ('140b8270-2079-4099-8622-13cf4da2e56c', 'ojanhtp', 'ojanhtp@gmail.com', '$2y$10$LnoS/7CjDO19eFHPgAusleucxh7n6gGXnJYhPW1Ty94Mgb6Rz/CPy', 'admin', 'admin', '2020-02-25', 1);

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id_user");
