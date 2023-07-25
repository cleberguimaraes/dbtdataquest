select 
distinct event_name tipo,
         event_timestamp as datahora,  
         event_schema as schema,
         event_model modelo,
         event_user as usuario,
         event_target
from     {{target.schema}}_meta.dbt_audit_log       
