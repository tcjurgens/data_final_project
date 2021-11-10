# data_final_project

## Segment 1

### Presentation
- Selected Topic: NFL Sports Betting -- Myth Busting, predictive analysis in the manipulation of stat lines, and the assessment of NFL data sets on weekly game outcomes
- Why did we select this topic? Each group member has, at the very least, a knowledge base and interest level in the football landscape. After preliminary research, the NFL is one of many professional sporting leagues that intimately tracks granular stat lines that could be leveraged for this final project's objective. This large dataset that is produced, in the form of team and player specific totals, by the NFL will allow for more accurate and insightful projections into the who and when of sports betting. The overall objective of this project will be to enhance an individual's betting experience by having more game and player knowledge. 
- What kind of data will we be sourcing/using? We plan to utilize betting tables (over/unders), as well as game databases that have been tracked for several decades down to the exact yard gained/lost and other contributing factors (pass yards allowed vs. opponents, home team performance metrics, etc.) from each game ever recorded
- What do we hope to answer with out data? Do certain stats translate better than others at predicting wins/losses? Can we effectively model win probability at certain points in the season based on previously recorded stat lines by season, by team, and all pertinent data. We also want to factor in external drivers, such as weather on team outcomes, consistently producing matchups (teams that beat conference rivals on several occasions throughout the season), and gauging historic team-based stat lines on future successes.


### Machine Learning Model

We pulled NFL play-by-play data from 2021 using R and ran a win probabilty model. The code can be found in the Win Probability folder on the page, and plan to update to make it more accurate in the coming weeks. 

The image below tracks the win probability of the wk9 Sunday Night Football matchup between the Rams and the visiting Titans. 

<img width="694" alt="Screen Shot 2021-11-08 at 7 58 22 PM" src="https://user-images.githubusercontent.com/86446641/140842186-f931c71d-93d4-408a-8dd2-86e1220d49ac.png">



### Database Structure
below is the rough ERD diagram, where we will be able to query between databases
<img src="https://github.com/tcjurgens/data_final_project/blob/jon/db%20images/erd.PNG">
below is the output after uploading it to PGadmin
<img src="https://github.com/tcjurgens/data_final_project/blob/jon/db%20images/Capture.PNG">
<img src="https://github.com/tcjurgens/data_final_project/blob/jon/db%20images/all_game_stats.PNG">

<img src="https://github.com/tcjurgens/data_final_project/blob/jon/db%20images/spreadspoke.PNG">
<img src="https://github.com/tcjurgens/data_final_project/blob/jon/db%20images/teams.PNG">







## Some questions that we hope to further explore with the data:

### NFL Sports Betting Myth Busting
- does rain really effect the outcome of the total score? Do games where the weather == rain go under the point total at a significant rate that you could use that as justification to bet the under

- Is there such thing as "being due" for a win/loss? Do teams who have failed to cover the spread for a significant period (3/4 wks?) justifiy that bettors wager on them to do so at a certain point, and vic versa

- Is it really hard to beat a team 3 times? What about twice? Analysing divisional matchups

### Predictive Analysis
- Do certain stats translate better than others at predicting wins/losses? 
- - (cont. ^ ) Is team offensive EPA/play a better indicator of future seasons' success / win total than defensive EPA/play


### Potential Machine Learning Qs
- Can we effective model win probability at certain points in the game using Machine Learning / Linear Regression?

- Can NFL defenses use past data to effectively predict whether the offese will run/pass the ball in any given situation (down, dist, score differential, time, remaining)

### Additional Questions
- Can we use win probability at given points in the game to predict whether or not a game will go over / under a live total line? (this question may require finding live lines at certain points in the game, which may be undoable..) Example scenario: a team reaches a 75% win probability in the 2Q, do these games go over/under the live point total at a significant rate. 

- Identifying fraudulent teams comparing margin of victory with record

