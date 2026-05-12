-- =========================
-- CREATE WAREHOUSE
-- =========================
CREATE OR REPLACE WAREHOUSE Airbnb_Project
WITH
    WAREHOUSE_SIZE = 'XSMALL'
    AUTO_SUSPEND = 60
    AUTO_RESUME = TRUE
    INITIALLY_SUSPENDED = TRUE;


-- =========================
-- CREATE DATABASE & SCHEMAS
-- =========================
CREATE OR REPLACE DATABASE Airbnb_DB;

USE DATABASE Airbnb_DB;

CREATE OR REPLACE SCHEMA raw;
CREATE OR REPLACE SCHEMA dwh;


-- =========================
-- Raw Layer Schema
-- =========================
CREATE OR REPLACE TABLE raw.airbnb_data (
    id NUMBER,
    listing_url VARCHAR,
    last_scraped VARCHAR,
    host_id NUMBER,
    host_name VARCHAR,
    host_since VARCHAR,
    host_location VARCHAR,
    host_response_time VARCHAR,
    host_response_rate NUMBER,
    host_acceptance_rate NUMBER,
    host_is_superhost VARCHAR,
    host_picture_url VARCHAR,
    host_neighbourhood VARCHAR,
    host_listings_count FLOAT,
    host_total_listings_count FLOAT,
    host_verifications VARCHAR,
    host_has_profile_pic VARCHAR,
    host_identity_verified VARCHAR,
    neighbourhood_cleansed VARCHAR,
    latitude FLOAT,
    longitude FLOAT,
    property_type VARCHAR,
    room_type VARCHAR,
    accommodates NUMBER,
    bathrooms_text VARCHAR,
    bedrooms NUMBER,
    beds NUMBER,
    amenities VARCHAR,
    price FLOAT,
    minimum_nights NUMBER,
    maximum_nights NUMBER,
    has_availability VARCHAR,
    number_of_reviews NUMBER,
    number_of_reviews_ltm NUMBER,
    number_of_reviews_l30d NUMBER,
    first_review VARCHAR,
    last_review VARCHAR,
    review_scores_rating FLOAT,
    review_scores_accuracy FLOAT,
    review_scores_cleanliness FLOAT,
    review_scores_checkin FLOAT,
    review_scores_communication FLOAT,
    review_scores_location FLOAT,
    review_scores_value FLOAT,
    instant_bookable VARCHAR,
    calculated_host_listings_count NUMBER,
    calculated_host_listings_count_entire_homes NUMBER,
    calculated_host_listings_count_private_rooms NUMBER,
    calculated_host_listings_count_shared_rooms NUMBER,
    reviews_per_month FLOAT,
    bathrooms NUMBER,
    neighbourhod VARCHAR,
    city VARCHAR,
    country VARCHAR,
    host_since_year NUMBER,
    host_since_month VARCHAR,
    host_since_quarter NUMBER,
    last_scraped_year NUMBER,
    last_scraped_month VARCHAR,
    last_scraped_quarter NUMBER,
    half_bath_num NUMBER
);





-- =========================
-- CREATE STAGE
-- =========================
CREATE OR REPLACE STAGE airbnb_stage
FILE_FORMAT = (
    TYPE = CSV,
    SKIP_HEADER = 1,
    FIELD_OPTIONALLY_ENCLOSED_BY = '"'
);

-- =========================
-- LOAD DATA
-- =========================
COPY INTO raw.airbnb_data
FROM @airbnb_stage/cleaned_data_v04.csv;











