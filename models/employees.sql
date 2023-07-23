with calc_employees as (
    select 
    date_part(year,current_date) - date_part(year, birth_date) idade,
    date_part(year,current_date) - date_part(year,hire_date) tempo_servico,   
    first_name || '  ' || last_name nome, *
    from {{ source("sources", "employees") }} 
)
select * from calc_employees    