library(pitchRx)

dat <- scrape(start = "2013-06-01", end = "2013-06-01")

pitches <- dat[["pitch"]]
noswing <- rbind(subset(pitches, des == "Ball"), 
                 subset(pitches, des == "Called Strike"))

count <- noswing[["count"]]
nballs <- as.numeric(substr(count, 1, 1))
nstrikes <- as.numeric(substr(count, 3, 3))

ball3 <- subset(noswing, nballs == 3)
strike2 <- subset(noswing, nstrikes == 2)
