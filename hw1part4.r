library(tidyr)
library(tidyverse)
library(tidyselect)
#read
passengers <- read.csv("titanic.csv", header = TRUE);
# 4a
passengers %>% drop_na() %>% summary();
# 4b
passengers %>% filter(Sex == "male");
# 4c
passengers %>% arrange(desc(Fare));
# 4d
passengers %>% mutate(FamSize = Parch + SibSp)
# 4e
passengers %>% group_by(Sex) %>% summarise(meanFare = mean(Fare), numSurv = sum(Survived))

