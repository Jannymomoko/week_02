#Find that variable!
class(week2.dataset)
length(week2.dataset)

#Use functions to compute the mean, median, variance, standard deviation, and interquartile range?
mean(week2.dataset)
median(week2.dataset)
var(week2.dataset)
sd(week2.dataset)
IQR(week2.dataset)

#PC4. Write R code to compute these three statistics by hand: mean, median, and mode. It's OK if getting the answer involves some eyeballing or counting this by hand. 
sum(week2.dataset)/lenght(week2.dataset)
order(week2.dataset)[lenght(week2.dataset)/2]

#PC5. Create a number of visualizations of your dataset: at the very least, create a boxplot and histogram.
hist(week2.dataset)
boxplot(week2.dataset)
#PC6. Some of you will have negative numbers. Whoops! Those were not supposed to be there. Recode all negative numbers as missing (i.e. NA) in your dataset. Now create compute a new mean and standard deviation. How does it change? (Hint: the basic mean function will give you an error. You have use a named argument na.rm=TRUE to work around this.)
pdata <- week2.dataset > 0 
pdata
pdata[pdata>0]
mean(week2.dataset[pdata])

#PC7. Log transform your dataset. Create new histograms, boxplots, and means, median, and standard deviations.
log.vec <- log(week2.dataset[pdata])
log.vec
hist(log.vec)
boxplot(log.vec)
summary(log.vec)
sd(log.vec)
