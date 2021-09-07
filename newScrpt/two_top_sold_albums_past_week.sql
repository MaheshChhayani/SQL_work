create or replace view two_top_sold_albums_past_week as
select sum(oi.qty) from `order_item` as oi
join `order` as o on o.Order_ID=oi.Order_Order_ID
where o.Order_Date > now() - interval 1 week
group by Album_Album_ID
order by sum(oi.qty) asc