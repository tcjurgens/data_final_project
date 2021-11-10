create table spreadspoke_score(
	schedule_date	varchar(50),
	schedule_season	varchar(50),
	schedule_week	varchar(50),
	schedule_playoff varchar(50),
	team_home	varchar(50),
	score_home	varchar(50),
	score_away	varchar(50),
	team_away	varchar(50),
	team_favorite_id	varchar(50),
	spread_favorite	varchar(50),
	over_under_line	varchar(50),
	stadium	varchar(50),
	stadium_neutral	varchar(50),
	weather_temperature	varchar(50),
	weather_wind_mph	varchar(50),
	
	primary key (schedule_date,team_home,team_away)

)
select * from spreadspoke_score
