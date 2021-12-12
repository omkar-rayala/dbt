with daily_new_cases as (
select date,new_cases as new_cases_rate
  from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_OMKAR_RAYALA" )

select * from daily_new_cases

{{ config (
    materialized="table"
)}}