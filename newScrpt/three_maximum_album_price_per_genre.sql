create or replace view three_maximum_album_price_per_genre as
select a.name as albumName, max(a.Price) as albumPrice, g.name as genre from album as a
	join genre as g on a.Genre_Genre_ID=g.Genre_ID
    group by g.name
    