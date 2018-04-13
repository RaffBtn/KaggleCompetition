train <- read.csv("train.csv", sep=",")
test <- read.csv("test.csv", sep=",")
sample_sol <- read.csv("sample_sol.csv", sep=",")

model <- lm(shares ~ n_tokens_title + n_tokens_content + n_unique_tokens + n_non_stop_words + n_non_stop_unique_tokens + num_hrefs + num_self_hrefs + num_imgs + num_videos + average_token_length + num_keywords, data=data)
sharestest <- predict(model, test)
