library(tidyverse)
library(glue)
library(nflreadr)

#### Use this start of code when filtering for specific team data

load_sharpe_data <- function(file_name) {
  url <- glue("https://raw.githubusercontent.com/nflverse/nfldata/master/data/{file_name}.csv")
  suppressWarnings({ df <- read_csv(url, col_types = cols()) })
  return(df)
}
gambling_dataf <-load_sharpe_data("games") %>% 
  select(season, week, home_coach, away_coach, home_team, away_team, home_qb_name, away_qb_name,
         home_score, away_score, spread_line,
         total_line, overtime, home_rest, away_rest, div_game,
         weekday, gametime, stadium)

# change all columns to character type 
gambling_dataf$gametime <- as.character(gambling_dataf$gametime)

gambling_dataf$season <- as.character(gambling_dataf$season)
gambling_dataf$week <- as.character(gambling_dataf$week)
gambling_dataf$home_rest <- as.character(gambling_dataf$home_rest)
gambling_dataf$away_rest <- as.character(gambling_dataf$away_rest)
gambling_dataf$div_game <- as.character(gambling_dataf$div_game)

#renaming / capitalizing all columns for aesthetic

gambling_dataf <- gambling_dataf %>%
  rename('home coach' = home_coach,
         'visiting coach' = away_coach,
         'home team' = home_team,
         'visiting team' = away_team,
         'home qb' = home_qb_name,
         'visiting qb' = away_qb_name,
         'final score (H)' = home_score,
         'final score (A)' = away_score,
         'spread' = spread_line,
         'total' = total_line,
         'home team rest' = home_rest,
         'visiting team rest' = away_rest,
         'divisional matchup' = div_game) %>%
  rename_with(toupper)

# favored home teams SPREAD column will now be negative
for(row in 1:nrow(gambling_dataf)) {
  gambling_dataf[row,'SPREAD'] <- (gambling_dataf[row,'SPREAD'])*-1
}


# export the CSV
write.csv(gambling_dataf,"/Users/tcjurgens/Documents/Pertinent NFL Gambling Data.csv", row.names = FALSE)
