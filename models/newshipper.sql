select * from 
{{source('sources', 'shippers')}} am 
left join {{ref("arquivo_emails")}} se on (am.shipper_id = se.email_id)