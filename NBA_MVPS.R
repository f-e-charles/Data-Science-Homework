
# Data source: http://www.basketball-reference.com/awards/mvp.html
# Step #1: Load and Process Data (data downloaded into csv sheet)
MVP <- read.csv("/Users/fritzcharles/Dropbox/R Class/Homework/MVP_Data2.csv", head=TRUE, sep=",")
Step 2: 
#load ggplot
install.packages("ggplot2")
library(ggplot2)

#plot pts against the age of the player who won the MVP
Age_v_Points <- ggplot(MVP, aes(x = Age, y = PTS))
Age_v_Points <- Age_v_Points + geom_point() + stat_smooth()
Age_v_Points                     


#create a bar chart to find out what team had the most MVPS over time 
# sort teams in the order 
Team_MVP <- within(MVP, Team <- factor(Tm, levels=names(sort(table(Tm), decreasing=TRUE))))
Team_MVP <- ggplot(Team_MVP, aes(x=Team))+geom_bar(binwidth=1)
Team_MVP




