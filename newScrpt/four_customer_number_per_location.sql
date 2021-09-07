use group_project;
create or replace view four_customer_number_per_location as
SELECT Country, Province, City, COUNT(u.User_ID) AS numberOfCustomers FROM `user` as u
JOIN address as a ON a.User_User_ID = u.User_ID
GROUP BY Country, Province, City
ORDER BY Country, Province, City