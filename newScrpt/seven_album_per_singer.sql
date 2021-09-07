create or replace view seven_album_per_singer as
select s.name as singer, a.name as album, a.copies as copies from album as a
join singer as s on s.Singer_ID=a.Singer_Singer_ID
group by album