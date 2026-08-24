#Gamerverse Database Analysis
# LET FIND OUT HOW MANY DATA WE HAVE

SELECT COUNT(*) AS total_players
FROM players; # 50

SELECT COUNT(*) AS total_games
FROM games; # 20

SELECT COUNT(*) AS total_sessions
FROM gamesessions; #200

SELECT COUNT(*) AS total_payments
FROM payments; # 80

SELECT COUNT(*) AS total_purchases
FROM purchases; # 80

SELECT COUNT(*) AS total_achievements
FROM achievements; # 80



SHOW TABLES;



# Player Analysis
SELECT COUNT(*) AS Total_Players FROM PLAYERS;

#Players by country
select playername, country  from players group by playername, country;

#Most engaged players
select playername, playerlevel, country from players order by playerlevel desc limit 3;


#Game Performance

#Most played games
select gamename, gamerating from games group by gamerating,GameName order by gamerating desc limit 3;

#Least played games
select gamename, gamerating from games group by gamerating,GameName order by gamerating asc limit 3;

#Release game and which platfrom
select platform, releaseyear from games group by platform, releaseyear  order by releaseyear;

#Revenue Analysis 
#Total revenue
select sum(amount) as Total_Revenue from purchases;

#Revenue by game
select sum(baseprice) as Revenue_by_Game from games; #group by gamename order by Total_Revenue desc;

#Average purchase value
select avg(amount) as Total_Revenue from purchases;

#Top spending players
select p.playerid,p.playername,a.amount from players p left join purchases a on 
p.playerid=a.playerid order by p.playername desc limit 1 ;

#Monthly Sales Trends
select date_format(purchasedate, '%M') as Month, sum(Amount) as Revenue from purchases
 group by date_format(purchasedate, '%M') order by sum(Amount) desc;


#Player Engagement
#Sessions per player
select gameid ,sum(durationminutes) as Duration from gamesessions group by gameid;

#Average playing time
select avg(hour(sessiondate)) as Playing_Time_in_Hours from gamesessions;


#Achievement Analysis
#Most achieved achievements
select achievementtype,count(*) as Achievement_Count from achievements GROUP BY achievementtype
ORDER BY Achievement_Count DESC;



#Rare achievements
#Achievements by game/player


SELECT 
    g.GameName,
    a.AchievementType,
    COUNT(*) AS Total_Achievements
FROM achievements a
JOIN games g ON g.GameID = a.GameID
GROUP BY g.GameName, a.AchievementType
ORDER BY g.GameName, Total_Achievements DESC;
