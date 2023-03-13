CREATE SCHEMA "learning";

CREATE TABLE "learning"."app_user"
(
    "user_id"       INT PRIMARY KEY,
    "user_email"    VARCHAR(255) UNIQUE NOT NULL,
    "user_password" VARCHAR(255)        NOT NULL
);

CREATE TABLE "learning"."app_authority"
(
    "authority_id"   INT PRIMARY KEY,
    "authority_name" VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE "learning"."user_authority"
(
    "user_id"      INT NOT NULL,
    "authority_id" INT NOT NULL,
    PRIMARY KEY ("user_id", "authority_id"),
    FOREIGN KEY ("user_id") REFERENCES "app_user" ("user_id"),
    FOREIGN KEY ("authority_id") REFERENCES "app_authority" ("authority_id")
);

CREATE INDEX ON "learning"."app_user" ("user_email");
CREATE INDEX ON "learning"."app_authority" ("authority_name");