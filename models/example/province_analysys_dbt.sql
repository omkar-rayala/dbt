with province_analysis as (
select  province, sum(total_cases) as total_cases, sum(total_deaths) as total_death_rate, sum(total_active_cases) as actives_cases_rate
  from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_OMKAR_RAYALA" group by province)

select * from province_analysis

{{ config (
    materialized="table"
)}}