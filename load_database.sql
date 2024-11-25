use warehouse compute_wh;

create schema if not exists snowpark_capstone.krys_raw;
create schema if not exists snowpark_capstone.krys_refined;
create schema if not exists snowpark_capstone.krys_curated;

use schema snowpark_capstone.krys_raw;

CREATE OR REPLACE FILE FORMAT snowpark_capstone.krys_raw.happiness_fileformat
  TYPE = 'CSV'
  FIELD_DELIMITER = ','
  FIELD_OPTIONALLY_ENCLOSED_BY = '"'
  SKIP_HEADER = 1;

CREATE OR REPLACE STAGE snowpark_capstone.krys_raw.happiness_stage FILE_FORMAT = happiness_fileformat;


PUT file:///Users/kryssia_castro/Documents/Snowpark_Capstone/World_Happiness_Report_2024.csv @happiness_stage auto_compress = true;


create or replace table snowpark_capstone.krys_raw.world_happiness_data_table (
    Country string,
    Year string,
    LifeSatisfaction string,
    EconomicProsperity string,
    SocialSupport string,
    HealthLifeExp string,
    Freedom string,
    Generosity string,
    CorruptionPercep string,
    PositiveEmotions string,
    NegativeEmotions string
);


COPY INTO world_happiness_data_table  
FROM @happiness_stage/World_Happiness_Report_2024.csv
FILE_FORMAT = happiness_fileformat
ON_ERROR = 'CONTINUE'
PURGE = FALSE;