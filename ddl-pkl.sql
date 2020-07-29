-- PROGRESSION - 1

-- 1. **Create table city**
create table city(
ID int,
name varchar(50)
);
-- 2. **Create table referee**
create table referee as(select * from city);

-- 3. **Create table innings**
create table innings(
id int,
innings_number int
);

-- 4. **Create table extra_type**
create table extra_type(
id int,
name varchar(50)
);

-- 5. **Create table skill**
create table skill as(select * from city);

-- 6. **Create table team**
create table team(
id int,
name varchar(50),
coach varchar(50),
home_city int,
captain int
);

-- 7. **Create table player**
create table player(
id int,
name varchar(50),
country varchar(50),
skill_Id int,
team_Id int
);
-- 8. **Create table venue**
create table venue(
id int,
stadium_name varchar(50),
city_id int
);
-- 9. **Create table event**
create table event(
id int,
innings_id int,
event_no int,
raider_id int,
raid_points int,
defending_points int,
clock_in_seconds int,
team_one_score int,
team_two_score int
);


-- 10. **Create table extra_event**
create table extra_event(
id int,
event_id int,
extra_type_id int,
points int,
scoring_teaming_id int
);
-- 11. **Create table outcome**
create table outcome(
id int,
status varchar(100),
winner_team_id int,
score int,
player_of_match int
);
-- 12. **Create table game**
create table game(
id int,
game_date DATE,
team_id_1 int,
team_id_2 int,
venue_id int,
outcome_id int,
referee_id_1 int,
referee_id_2 int,
first_innings_id int,
second_innings_id int
);
-- 13. **Drop table city**
drop table city;

-- 14. **Drop table innings**
drop table innings;

-- 15. **Drop table skill**
drop table skill;
-- 16. **Drop table extra_type**
drop table extra_type