create database AdoDemo;
use AdoDemo;
create table FootballLeague (MatchId Int primary key,TeamName1 Varchar(15) ,Teamname2 varchar(15) ,
resultstatus varchar(10),winningteam varchar(15),points int);
insert into FootballLeague Values (1001,'Italy','france','win','France',4);
insert into FootballLeague Values (1002,'Brazil','Portugal','Draw',null,2);
insert into FootballLeague Values (1003,'England','Japan','win','England',4);
insert into FootballLeague Values (1004,'USA','Russia','win','Russia',4);
insert into FootballLeague Values (1005,'Portugal','Italy','Draw',null,2);
insert into FootballLeague Values (1006,'Brazil','france','win','Brazil',4);
insert into FootballLeague Values (1007,'England','Russia','win','Russia',4);
insert into FootballLeague Values (1008,'Japan','USA','Draw',null,2);

select * from FootballLeague;

create procedure Addrow
@MatchId int,@TeamName1 Varchar(15),@TeamName2 varchar(15),@resultstatus varchar(10),@winningteam varchar(15),@points int
as 
begin
insert into FootballLeague values (@MatchId,@TeamName1,@TeamName2,@resultstatus,@winningteam,@points)
End
execute Addrow 1010,'England','Italy','Win','Italy',4 

select * from FootballLeague;