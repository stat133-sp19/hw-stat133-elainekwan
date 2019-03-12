###############################################################################
## Title: Make Shots Data Script
## Description: Clean and prepare shots data for further analysis
## Inputs:  .csv file for each player with raw data
## Outputs: .txt file for each player with summary output and prepped data,
##          .txt file with summary of shot data for all players,
##          shots-data.csv file with all player shots data
###############################################################################

#read in data files for players

column_types = c("character","character","integer","integer","real","real","character","character","character","real","character","real","real")
column_names = c("team_name","game_date","season","period","minutes_remaining","seconds_remaining","shot_made_flag","action_type","shot_type","shot_distance","opponent","x","y")

iguodala <- read.csv("../data/andre-iguodala.csv",   
                  colClasses = column_types,
                  col.names = column_names,
                  stringsAsFactors = FALSE)
green <- read.csv("../data/draymond-green.csv",   
                  colClasses = column_types,
                  col.names = column_names,
                  stringsAsFactors = FALSE)
durant <- read.csv("../data/kevin-durant.csv",   
                  colClasses = column_types,
                  col.names = column_names,
                  stringsAsFactors = FALSE)
thompson <- read.csv("../data/klay-thompson.csv",   
                  colClasses = column_types,
                  col.names = column_names,
                  stringsAsFactors = FALSE)
curry <- read.csv("../data/stephen-curry.csv",   
                  colClasses = column_types,
                  col.names = column_names,
                  stringsAsFactors = FALSE)

#add a column with player name
iguodala$name = "Andre Iguodala"
green$name = "Draymond Green"
durant$name = "Kevin Durant"
thompson$name = "Klay Thompson"
curry$name = "Stephen Curry"

#replace "n" with "shot_no" and "y" with "shot_yes" in shot_made_flag
iguodala$shot_made_flag[iguodala$shot_made_flag == "n"] = "shot_no"
iguodala$shot_made_flag[iguodala$shot_made_flag == "y"] = "shot_yes"

green$shot_made_flag[green$shot_made_flag == "n"] = "shot_no"
green$shot_made_flag[green$shot_made_flag == "y"] = "shot_yes"

durant$shot_made_flag[durant$shot_made_flag == "n"] = "shot_no"
durant$shot_made_flag[durant$shot_made_flag == "y"] = "shot_yes"

thompson$shot_made_flag[thompson$shot_made_flag == "n"] = "shot_no"
thompson$shot_made_flag[thompson$shot_made_flag == "y"] = "shot_yes"

curry$shot_made_flag[curry$shot_made_flag == "n"] = "shot_no"
curry$shot_made_flag[curry$shot_made_flag == "y"] = "shot_yes"

#add column minute for minutes remaining in the game
iguodala$minute = (12*iguodala$period)-iguodala$minutes_remaining
green$minute = (12*green$period)-green$minutes_remaining
durant$minute = (12*durant$period)-durant$minutes_remaining
thompson$minute = (12*thompson$period)-thompson$minutes_remaining
curry$minute = (12*curry$period)-curry$minutes_remaining

#use sink() to send the summary() output of each imported data frame into individuals text files
sink(file = '../output/andre-iguodala-summary.txt')
summary(iguodala)
sink()

sink(file = '../output/draymond-green-summary.txt')
summary(green)
sink()

sink(file = '../output/kevin-durant-summary.txt')
summary(durant)
sink()

sink(file = '../output/klay-thompson-summary.txt')
summary(thompson)
sink()

sink(file = '../output/stephen-curry-summary.txt')
summary(curry)
sink()

#use the row binding function rbind() to stack the tables into one single data frame
shots_data = rbind(iguodala,green,durant,thompson,curry)

#export (i.e. write) the assembled table as a CSV file
write.csv(shots_data,'../data/shots-data.csv',row.names=FALSE)

#use sink() to send the summary() output of the assembled shots_data table
sink(file = '../output/shots-data-summary.txt')
summary(shots_data)
sink()
