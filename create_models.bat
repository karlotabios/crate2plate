rails g model Delivery date_delivered:datetime
rails g model Order_Line subtotal_amount:decimal quantity:decimal
rails g model Order amount_due:decimal mode_of_payment:string status:string date_ordered:datetime comments:string
rails g model Receipt total_amount_due:decimal
rails g model Product product_name:string category:string price:decimal
rails g model Account first_name:string last_name:string phone_number:int billing_unit_number:int billing_street:string billing_village:string billing_building:string billing_landmark:string billing_city:string delivery_unit_number:int delivery_street:string delivery_village:string delivery_building:string delivery_landmark:string delivery_city:string outstanding_balance:decimal account_type:string
rails g model Payment_History amount_of_payment:decimal date_settled:datetime
rails g model Supply quantity:string date_of_supply:datetime
rails g model Admin admin_email:string admin_email:string admin_email:password
rails g model Customer customer_email:string customer_email:string customer_email:password
rails g model Business business_email:string business_name:string