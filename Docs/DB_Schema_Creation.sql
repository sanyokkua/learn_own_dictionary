CREATE SCHEMA "learning";

CREATE TABLE "learning"."app_user" (
  "user_id" int PRIMARY KEY,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL
);

CREATE TABLE "learning"."user_word" (
  "word_id" int PRIMARY KEY,
  "w_value" varchar NOT NULL,
  "translation" varchar,
  "frequency" int NOT NULL,
  "lang_id" int NOT NULL,
  "user_id" int NOT NULL
);

CREATE TABLE "learning"."topic_list" (
  "topic_list_id" int PRIMARY KEY,
  "topic_name" varchar UNIQUE NOT NULL,
  "user_id" int NOT NULL
);

CREATE TABLE "learning"."topic_words" (
  "topic_list_id" int,
  "word_id" int,
  PRIMARY KEY ("topic_list_id", "word_id")
);

CREATE TABLE "learning"."languages" (
  "lang_id" int PRIMARY KEY,
  "lang_name" varchar UNIQUE NOT NULL
);

CREATE INDEX ON "learning"."app_user" ("email");

CREATE INDEX ON "learning"."user_word" ("w_value", "lang_id", "user_id");

CREATE INDEX ON "learning"."topic_list" ("topic_name");

CREATE INDEX ON "learning"."languages" ("lang_name");

ALTER TABLE "learning"."user_word" ADD FOREIGN KEY ("lang_id") REFERENCES "learning"."languages" ("lang_id");

ALTER TABLE "learning"."user_word" ADD FOREIGN KEY ("user_id") REFERENCES "learning"."app_user" ("user_id");

ALTER TABLE "learning"."topic_list" ADD FOREIGN KEY ("user_id") REFERENCES "learning"."app_user" ("user_id");

ALTER TABLE "learning"."topic_words" ADD FOREIGN KEY ("topic_list_id") REFERENCES "learning"."topic_list" ("topic_list_id");

ALTER TABLE "learning"."topic_words" ADD FOREIGN KEY ("word_id") REFERENCES "learning"."user_word" ("word_id");
