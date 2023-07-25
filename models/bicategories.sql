{% import "campos.sql" as campos %}
select {{ retorna_campos() }} from {{ref('joinstables')}}
where category_name = '{{var('category')}}'