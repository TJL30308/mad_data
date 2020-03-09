-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Country" (
    "country_id" VARCHAR(255)   NOT NULL,
    "country_name" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Country" PRIMARY KEY (
        "country_id"
     )
);

CREATE TABLE "Alcohol_Consumption" (
    "country_id" VARCHAR(255)   NOT NULL,
    "year" Int   NOT NULL,
    "both_sexes" Float   NOT NULL,
    "male" Float   NOT NULL,
    "female" Float   NOT NULL,
    CONSTRAINT "pk_Alcohol_Consumption" PRIMARY KEY (
        "country_id"
     )
);

CREATE TABLE "Alcohol_Production" (
    "country_id" VARCHAR(255)   NOT NULL,
    "rank" Int   NOT NULL,
    "production_tonnes" INT   NOT NULL
);

CREATE TABLE "Reviews" (
    "review_id" VARCHAR(255)   NOT NULL,
    "country_name" VARCHAR(255),
    "description" VARCHAR,
    "designation" VARCHAR(255),
    "points" Int,
    "price" Int,
    "province" VARCHAR(255),
    "region_1" VARCHAR(255),
    "region_2" VARCHAR(255),
    "taster_name" VARCHAR(255),
    "taster_twitter_handle" VARCHAR(255),
    "title" VARCHAR(255),
    "variety" VARCHAR(255),
    "winery" VARCHAR(255),
    "country_id" VARCHAR(255),
    CONSTRAINT "pk_Reviews" PRIMARY KEY (
        "review_id"
     )
);

CREATE TABLE "Traffic_Related_Deaths" (
    "country_id" VARCHAR(255)   NOT NULL,
    "fatalaties_100K_people_per_year" Float,
    "fatalities_100K_mv_per_year" Float,
    "year" Int   NOT NULL
);

ALTER TABLE "Alcohol_Consumption" ADD CONSTRAINT "fk_Alcohol_Consumption_country_id" FOREIGN KEY("country_id")
REFERENCES "Country" ("country_id");

ALTER TABLE "Alcohol_Production" ADD CONSTRAINT "fk_Alcohol_Production_country_id" FOREIGN KEY("country_id")
REFERENCES "Country" ("country_id");

ALTER TABLE "Reviews" ADD CONSTRAINT "fk_Reviews_country_id" FOREIGN KEY("country_id")
REFERENCES "Country" ("country_id");

ALTER TABLE "Traffic_Related_Deaths" ADD CONSTRAINT "fk_Traffic_Related_Deaths_country_id" FOREIGN KEY("country_id")
REFERENCES "Country" ("country_id");

