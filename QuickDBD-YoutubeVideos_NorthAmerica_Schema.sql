-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/LHP3ZS
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "videos" (
    "video_id" INT   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "publish_date_formatted" DATE   NOT NULL,
    CONSTRAINT "pk_videos" PRIMARY KEY (
        "video_id"
     )
);

CREATE TABLE "country" (
    "country_id" VARCHAR(5)   NOT NULL,
    "country" VARCHAR(25)   NOT NULL,
    CONSTRAINT "pk_country" PRIMARY KEY (
        "country_id"
     )
);

CREATE TABLE "popularity" (
    "id" INTEGER   NOT NULL,
    "country_id" VAR   NOT NULL,
    "video_id" INT   NOT NULL,
    "trending_date_formatted" DATE   NOT NULL,
    "category_id" INTEGER   NOT NULL,
    "views" INTEGER   NOT NULL,
    "likes" INTEGER   NOT NULL,
    "dislikes" INTEGER   NOT NULL,
    "comment_count" INTEGER   NOT NULL,
    "comments_disabled" BOOLEAN   NOT NULL,
    "ratings_disabled" BOOLEAN   NOT NULL,
    "description" VARCHAR   NOT NULL,
    CONSTRAINT "pk_popularity" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "popularity" ADD CONSTRAINT "fk_popularity_country_id" FOREIGN KEY("country_id")
REFERENCES "country" ("country_id");

ALTER TABLE "popularity" ADD CONSTRAINT "fk_popularity_video_id" FOREIGN KEY("video_id")
REFERENCES "videos" ("video_id");

