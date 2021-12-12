{{ config (
    materialized="table"
)}}

with loc_data as (
select Date, location, location_iso_code,location_level, province, island, longitude, latitude,special_status 
  from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_OMKAR_RAYALA")

select * from loc_data