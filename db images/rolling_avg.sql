create table rolling_avg (
	id char(50),
	game_id char(50),	
	nope char(50),
	team varchar(50),
	schedule_season varchar(50),
	home_avg_first_downs VARCHAR(50),
	home_avg_total_yds VARCHAR(50),
	home_avg_pass_yds VARCHAR(50),	
	home_avg_rush_yds VARCHAR(50),
	home_avg_TO VARCHAR(50),	
	home_avg_opp_first_downs VARCHAR(50),	
	home_avg_opp_total_yds VARCHAR(50),
	home_avg_opp_pass_yds VARCHAR(50),
	home_avg_opp_rush_yds VARCHAR(50),
	home_avg_opp_TO VARCHAR(50),	
	away_avg_first_downs VARCHAR(50),	
	away_avg_total_yds	VARCHAR(50),
	away_avg_pass_yds VARCHAR(50),	
	away_avg_rush_yds VARCHAR(50),	
	away_avg_TO	VARCHAR(50),
	away_avg_opp_first_downs VARCHAR(50),
	away_avg_opp_total_yds	VARCHAR(50),
	away_avg_opp_pass_yds	VARCHAR(50),
	away_avg_opp_rush_yds VARCHAR(50),	
	away_avg_opp_TO VARCHAR(50), 
	PRIMARY KEY (id,game_id)

)

select * from rolling_avg