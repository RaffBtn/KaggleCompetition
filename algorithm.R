train <- read.csv("train.csv", sep=",")
test <- read.csv("test.csv", sep=",")
sample_sol <- read.csv("sample_sol.csv", sep=",")

f1 <- as.formula(paste("shares ~", paste(names(train)[c(1:44)], 
                                    collapse="+")))
model <- lm(f1, data=train)
sharestest <- predict(model, test)
