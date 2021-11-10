create table all_game_stats (
	home_team varchar(50),
	nope char(50),
	nope2 varchar(50),
	year varchar(50),
	id	char(50),	
	away_team varchar(50),	
	home_first_downs varchar(50),	
	home_total_yds varchar(50),	
	home_pass_yds varchar(50),	
	home_rush_yds varchar(50),	
	home_TO	varchar(50),
	away_first_downs varchar(50),	
	away_total_yds varchar(50),	
	away_pass_yds varchar(50),	
	away_rush_yds varchar(50),	
	away_TO varchar(50), 
	primary key(nope2, home_team,away_team)
)
select * from all_game_stats


