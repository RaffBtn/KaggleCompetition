train <- read.csv("train.csv", sep=",")
test <- read.csv("test.csv", sep=",")
sample_sol <- read.csv("sample_sol.csv", sep=",")

model <- lm(shares ~ n_tokens_title, data=train)
sharestest <- predict(model, test)