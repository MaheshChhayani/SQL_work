-- To select customers having sum greater than average:
create or replace view One_client_spent_more_than_avg_past_month as
select u.User_ID, u.First_name, u.Last_Name, sum(item_price*qty) as orderSum from `order_item` as oi
join `order` as o on o.Order_ID=oi.Order_Order_ID	
join `user` as u on u.User_ID=o.User_User_ID
    where o.Order_Date>now() - interval 1 month
    group by order_order_id
    having orderSum>calc_avg_past_month();
    
    