use group_project;
create or replace view six_singer_albums as
select s.Name as singer, count(a.Album_ID) as distinctAlbums from album as a
join singer as s on s.Singer_ID=a.Singer_Singer_ID
group by Singer_Singer_ID