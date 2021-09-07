-- To select average of the sum of the order per each customer over past month:

SET GLOBAL log_bin_trust_function_creators = 1;
delimiter //
DROP FUNCTION if exists calc_avg_past_month;
CREATE FUNCTION calc_avg_past_month() returns decimal(10,2)
BEGIN

declare result decimal(10,2);

select avg(orderSum) as av into result from (
	select sum(item_price*qty) as orderSum from `order_item` as oi
	join `order` as o on o.Order_ID=oi.Order_Order_ID
	where o.Order_Date>now() - interval 1 month
	group by order_order_id
) as avgs;

return result;

END //
delimiter ;

