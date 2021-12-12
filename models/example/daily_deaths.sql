with daily_deaths as (
select date,new_deaths as daily_death_rate
  from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_OMKAR_RAYALA" )

select * from daily_deaths

{{ config (
    materialized="table"
)}}