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

 Date: 10/02/2020 16:54:53
*/


-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
  "id_user" uuid NOT NULL,
  "nama" varchar(255) COLLATE "pg_catalog"."default",
  "email" varchar(255) COLLATE "pg_catalog"."default",
  "password" varchar(255) COLLATE "pg_catalog"."default",
  "role" varchar(255) COLLATE "pg_catalog"."default",
  "created_by" varchar(255) COLLATE "pg_catalog"."default",
  "created_date" date,
  "status" int4,
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "public"."users" VALUES ('46f74b9f-824b-4607-b766-3747c7ba05e4', 'ojan herdika', 'ojan@gmail.com', '$2y$10$QfMn8BXnD12fJMzkVUmJPOpVeR5HU36F259ZaSVQD5ek0y1ndEUHq', 'admin', 'admin', '2020-02-04', 1, '2020-02-10 02:27:09', '2020-02-10 02:27:09');

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_pkey1" PRIMARY KEY ("id_user");
