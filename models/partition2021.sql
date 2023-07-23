select * from {{ref("joinstables")}}
where date_part(year, order_date) = 2021