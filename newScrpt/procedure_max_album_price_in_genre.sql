delimiter //
 DROP PROCEDURE IF EXISTS max_album_price_by_genre;
CREATE PROCEDURE max_album_price_by_genre (IN genre_name varchar(45), OUT album_ID int, OUT album_Name varchar(45), OUT album_price decimal(10,2))
BEGIN

	DECLARE genreName varchar(45);
    set genreName=genre_name;
    
    set album_price=(select a.Price as albumPrice from album as a
	join genre as g on a.Genre_Genre_ID=g.Genre_ID
    where g.Name=genreName);
    
    set album_ID=(select a.Album_ID as AlbumID from album as a
	join genre as g on a.Genre_Genre_ID=g.Genre_ID
    where g.Name=genreName);
    
    set album_Name=(select a.Name as AlbumID from album as a
	join genre as g on a.Genre_Genre_ID=g.Genre_ID
    where g.Name=genreName);
    
    select album_price;
    select album_ID;
    select album_Name;
END//
delimiter ;

