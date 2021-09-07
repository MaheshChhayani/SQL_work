create or replace view five_album_sold_per_month as
SELECT month(Order_Date) as `month`,sum(Qty) as soldAlbumCopies FROM `order` as o
join `order_item` as oi on oi.Order_Order_ID=o.Order_ID
group by month(Order_Date)