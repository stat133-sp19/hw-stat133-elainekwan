#################################################################################
## Title: Make Shot Charts Script
## Description: Create shot charts for players using shots data
## Inputs:  shots-data.csv with all player shots data
## Outputs: Shot charts in pdf format (with court backgrounds) for each player,
##          one graph (in pdf and pngformat) showing all shot charts in one image
#################################################################################

library(grid)
library(jpeg)
library(ggplot2)
library(dplyr)

#court image (to be used as background of plot)
court_file <- "../images/nba-court.jpg"

#create raste object
court_image <- rasterGrob(
  readJPEG(court_file),
  width = unit(1, "npc"),
  height = unit(1, "npc"))

#import shots data
column_types = c("character","character","integer","integer","real","real","character","character",
                 "character","real","character","real","real","character","real")
column_names = c("team_name","game_date","season","period","minutes_remaining","seconds_remaining",
                 "shot_made_flag","action_type","shot_type","shot_distance","opponent","x","y","name","minute")

shots_data <- read.csv("../data/shots-data.csv",   
                       colClasses = column_types,
                       col.names = column_names,
                       stringsAsFactors = FALSE)

#get individual player shots data
iguodala = filter(shots_data,shots_data$name == "Andre Iguodala")
thompson = filter(shots_data,shots_data$name == "Klay Thompson")
green = filter(shots_data,shots_data$name == "Draymond Green")
durant = filter(shots_data,shots_data$name == "Kevin Durant")
curry = filter(shots_data,shots_data$name == "Stephen Curry")

# save shot charts with court background for each player in pdf
pdf("../images/andre-iguodala-shot-chart.pdf", width = 6.5, height = 5)
ggplot(data = iguodala) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Andre Iguodala (2016 season)') +
  theme_minimal()
dev.off()

pdf("../images/klay-thompson-shot-chart.pdf", width = 6.5, height = 5)
ggplot(data = thompson) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Klay Thompson (2016 season)') +
  theme_minimal()
dev.off()

pdf("../images/draymond-green-shot-chart.pdf", width = 6.5, height = 5)
ggplot(data = green) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Draymond Green (2016 season)') +
  theme_minimal()
dev.off()

pdf("../images/kevin-durant-shot-chart.pdf", width = 6.5, height = 5)
ggplot(data = durant) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Kevin Durant (2016 season)') +
  theme_minimal()
dev.off()

pdf("../images/stephen-curry-shot-chart.pdf", width = 6.5, height = 5)
ggplot(data = curry) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Stephen Curry (2016 season)') +
  theme_minimal()
dev.off()

#create one image showing shot charts for all players,
#save image as both pdf and png
pdf("../images/gsw-shot-charts.pdf", width = 8, height = 7)
ggplot(data = shots_data) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Charts: GSW (2016 Season)') +
  theme_minimal() + facet_wrap( ~ name, ncol=3)
dev.off()

png("../images/gsw-shot-charts.png", width = 8, height = 7, units = "in", res = 1080)
ggplot(data = shots_data) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Charts: GSW (2016 Season)') +
  theme_minimal() + facet_wrap( ~ name, ncol=3)
dev.off()