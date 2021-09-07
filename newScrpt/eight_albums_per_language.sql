create or replace view eight_albums_per_language as 
select a.name as Album, l.Name as Language from album as a
join language as l on a.Language_Language_ID=l.Language_ID
order by language_ID