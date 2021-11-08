
library(caTools)
library(tidyverse)
library(nflfastR)

pbp <- load_pbp(1999:2021)

pbp <- pbp %>%
  mutate(winner = ifelse(home_score > away_score, home_team, away_team))
pbp <- pbp %>%
  mutate(poswins  = ifelse(winner == posteam, 'YES', 'NO'))
pbp$qtr = as.factor(pbp$qtr) 
pbp$down = as.factor(pbp$down)
pbp$poswins = as.factor(pbp$poswins)

pbp <- pbp %>%
  filter(play_type != 'No Play', qtr != 5, qtr != 6, down != 'NA', poswins != 'NA') %>%
  select(game_id, game_date, posteam, defteam, home_team, away_team, winner, qtr, down, 
         ydstogo, yardline_100, half_seconds_remaining, game_seconds_remaining, score_differential, poswins)

# build prediction model
set.seed(1)
split <- sample.split(pbp$poswins, SplitRatio = 0.8)
train <- pbp %>% filter(split == TRUE)
test <- pbp %>% filter(split == FALSE)


model1 <- glm(poswins ~ qtr + down + ydstogo + game_seconds_remaining + yardline_100 + score_differential, train, family = "binomial")
summary(model1)

pred1 <- predict(model1, train, type = "response")
train <- cbind(train,pred1)
train <- mutate(train, pred1h = ifelse(posteam == home_team, pred1, 1-pred1))

ggplot(
  filter(train, game_id  == "2021_09_TEN_LA"),
  aes(x=game_seconds_remaining,y=pred1h)
  ) +
  geom_line(size=2, colour="orange") + 
  scale_x_reverse() + 
  ylim(c(0,1)) + 
  theme_minimal() + 
  xlab("Time Remaining (seconds)") + ylab("Home Win Probability")
