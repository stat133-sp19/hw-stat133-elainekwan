Workout 01
================
Elaine Kwan
3/13/19

For these Golden State Warriors: Does Salary Exactly Correlate to Scoring Ability?
==================================================================================

Motivation
----------

As one would expect, the most valuable basketball players are generally those that score the most points. And unsurprisingly, these high-scorers usually earn the highest salaries. Though there is certainly a trend correlating salary with shooting performance, the data shows that shooting ability alone is not enough to determine salary. If the ability to score was the only factor in determining pay, one would expect that the n<sup>th</sup>-best scorer on the team would make the n<sup>th</sup>-highest salary. However, further analysis into the top five highest paid players on the Golden State Warriors shows that this is not the case. This report investigates the role of a player’s shooting effectiveness as well as other potential factors when determining a player’s salary.

Background
----------

Some background information on basketball is needed in order to understand later analyses and discussion. In the game of basketball, points can be scored in three ways. A basket scored from outside the three-point arc will result in three points being scored. Baskets scored from within the three-point arc will result in two points being scored (Figure 1). Free throws will result in one point scored per free throw, and the number of free throws will depend on where the foul was committed. This report will neglect the analysis of free throws and instead focus on three-point and two-point shots to determine shooting effectiveness \[1\].

<img src="../images/basketballcourt.jpg" width="80%" style="display: block; margin: auto;" />
<center>
**Figure 1:** Layout of a basketball court
</center>
Traditionally, there are five specific positions on the court: Point Guard, Shooting Guard, Small Forward, Power Forward, and Center. The Point Guard is responsible for advancing the basketball up the court and setting up the team’s offense. The Shooting Guard is a scoring position and this player is responsible for shooting consistently from outside, midrange, and close to the basket. The Small Forward is often the most versatile of the 5 basketball positions on the court both offensively and defensively. The Power Forward usually plays close to the basket, and in past years the player in this position has scored the majority of the two-point shots. The Center spends most of the game close to the basket and will often score the majority of their points close to the rim through offensive rebounds \[1\].

For the 2016-2017 season, the top five paid players on the Golden State Warriors were Kevin Durant, Klay Thompson, Draymond Green, Stephen Curry, and Andre Iguodala respectively (Table 1). These five players will be the subject of our analysis and discussion.

| **Player**     | **Salary**  | **Position**   |
|----------------|-------------|----------------|
| Kevin Durant   | $26,540,100 | Small Forward  |
| Klay Thompson  | $16,663,575 | Shooting Guard |
| Draymond Green | $15,330,435 | Power Forward  |
| Stephen Curry  | $12,112,359 | Point Guard    |
| Andre Iguodala | $11,131,368 | Small Forward  |

**Table 1:** The top five highest paid players on the Golden State Warriors and their positions in the 2016-2017 season \[2\]\[3\]

Data
----

The raw data used for this report was provided in the form of csv files and contains shot information for each of the five players in our analysis. Each shot from each player was recorded for the 2016-2017 season. Along with information about whether the shot entered the basket, the raw data also specifies where the shot was taken relative to the basket, and whether the shot was worth two or three points. Some minor modifications were made to the raw data in order to make the data more readable. For instance, a column with the player’s name was added, and the marker to indicate whether a shot was made was changed from “n” to “shot\_no” and “y” to “shot\_yes.” Other variables such as opponent, game date, time remaining, etc. were also provided but not used in the scope of this report.

Analysis
--------

This report analyzed the two-point, three-point, and overall shot percentages for the top five paid players on the Golden State Warriors. To determine these percentages, total shots made was divided by total shots and multiplied by 100. The calculated shooting percentages for each player are tabulated in the data tables below:

| name           | total 2pt shots | total 2pt shots made | percent made of 2pt shots |
|:---------------|:----------------|:---------------------|:--------------------------|
| Andre Iguodala | 210             | 134                  | 63.8                      |
| Kevin Durant   | 643             | 390                  | 60.7                      |
| Stephen Curry  | 563             | 304                  | 54                        |
| Klay Thompson  | 640             | 329                  | 51.4                      |
| Draymond Green | 346             | 171                  | 49.4                      |

| name           | total 3pt shots | total 3pt shots made | percent made of 3pt shots |
|:---------------|:----------------|:---------------------|:--------------------------|
| Klay Thompson  | 580             | 246                  | 42.4                      |
| Stephen Curry  | 687             | 280                  | 40.8                      |
| Kevin Durant   | 272             | 105                  | 38.6                      |
| Andre Iguodala | 161             | 58                   | 36                        |
| Draymond Green | 232             | 74                   | 31.9                      |

| name           | total shots | total shots made | percent made of total shots |
|:---------------|:------------|:-----------------|:----------------------------|
| Kevin Durant   | 915         | 495              | 54.1                        |
| Andre Iguodala | 371         | 192              | 51.8                        |
| Klay Thompson  | 1220        | 575              | 47.1                        |
| Stephen Curry  | 1250        | 584              | 46.7                        |
| Draymond Green | 578         | 245              | 42.4                        |

<img src="../images/gsw-shot-charts.png" width="80%" style="display: block; margin: auto;" />
<center>
**Figure 2:** Shot chart for each player indicating the location of a shot and whether the shot was made.
</center>
In order to better visualize where these shots were made relative to the basketball court, we refer to Figure 2. This visualization places a circular data point at the x and y coordinates where each shot was taken and indicates with color whether the shot entered the basket.

Discussion
----------

From our analysis, we can see that the scoring ability does not correlate exactly with salary. While the top five paid players are Kevin Durant, Klay Thompson, Draymond Green, Stephen Curry, and Andre Iguodala respectively, the players with the best overall shooting percentages are Durant, Iguodala, Thompson, Curry, and Green respectively. Referring to the data tables in the Analysis of this report, we see that salary does not correlate exactly with two-point or three-point shooting ability either. The best two-point scorers were Iguodala, Durant, Curry, Thompson, and Green respectively, while the best three-point scorers where Thompson, Curry, Durant, Iguodala, and Green respectively. Moreover, the salary amount does not increase linearly with scoring ability. Durant, the highest earning player, earned approximately 59% more than Thompson, the next highest paid player – even though Durant’s overall scoring percentage was only 7% better than Thompson’s. These observations indicate that factors independent of scoring ability are at play when determining a player’s salary.

One likely explanation is that a player’s value (and therefore salary) to the team depends on more than scoring ability. In the sport of basketball, skills such as ball handling, the ability to play defensively, the creativity to execute plays, the ability to open up opportunities for teammates, and leadership on the court are also crucial to the team’s overall success. These factors are more difficult to quantify than scoring ability but are nonetheless important qualities of a good basketball player. Furthermore, some player positions may present more opportunity for scoring than others. For instance, the Point Guard’s role in advancing the ball up the court is crucial but may provide fewer opportunities for scoring than positions such as the Small Forward. Though Iguodala (a Small Forward) scores more two-point shots and overall shots than Curry (a Point Guard), Curry still earns a higher salary. This provides further evidence that a player’s value is derived from many factors.

Conclusion
----------

After analysis and discussion of the data, it can be concluded that a player’s salary is not solely dependent on his shooting ability. While it is true that high-scorers will generally earn high salaries, the correlation is not perfect. Though the five players analyzed each have high scoring percentages relative to basketball players as a whole within the NBA, their value is derived from a combination of skills and abilities.

### References

\[1\] “Basketball Rules,” Baseball Rules: How To Play Baseball | Rules of Sport. \[Online\]. Available: <http://www.rulesofsport.com/sports/basketball.html>. \[Accessed: 12-Mar-2019\].

\[2\] “2016-17 Golden State Warriors,” 2009-10 Golden State Warriors - NBA team profile page from WhatifSports. \[Online\]. Available: <https://www.whatifsports.com/nba-l/profile_team.asp?hfid=9&season=2016-17>. \[Accessed: 12-Mar-2019\].

\[3\] “Golden State Warriors Salary Archive – 2016/17,” Basketball Insiders | NBA Rumors And Basketball News, 21-Apr-2017. \[Online\]. Available: <http://www.basketballinsiders.com/golden-state-warriors-team-salary/golden-state-warriors-salary-archive-201617/>. \[Accessed: 12-Mar-2019\].
