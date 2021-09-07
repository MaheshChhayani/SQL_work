create or replace view nine_popular_album_per_language as
select l.Name as language, a.Name as album, sum(oi.qty) as sold from `order_item` as oi
					join `order` as o on o.Order_ID=oi.Order_Order_ID
					join album as a on a.Album_ID=oi.Album_Album_ID
					join language as l on l.Language_ID=a.Language_Language_ID
					group by Album_Album_ID
					order by sum(oi.qty) asc