{{ config (
    materialized="table"
)}}
with key_metrics as (
select Date, New_Cases, New_Deaths,
       New_Recovered, New_Active_Cases, Total_Cases, Total_Deaths,
       TOTAL_RECOVERED, Total_Active_Cases,
       New_Cases_per_Million, Total_Cases_per_Million,
       New_Deaths_per_Million, Total_Deaths_per_Million,
       Case_Fatality_Rate, Case_Recovered_Rate,
       Growth_Factor_of_New_Cases, Growth_Factor_of_New_Deaths 
  from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_OMKAR_RAYALA")

select * from key_metrics