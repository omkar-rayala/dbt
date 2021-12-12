with per_million_analysis as (
select Date, location, location_iso_code,location_level, NEW_CASES_PER_MILLION	,
  NEW_DEATHS_PER_MILLION,TOTAL_CASES_PER_MILLION,TOTAL_DEATHS_PER_MILLION
  from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_OMKAR_RAYALA")

select * from per_million_analysis

{{ config (
    materialized="table"
)}}