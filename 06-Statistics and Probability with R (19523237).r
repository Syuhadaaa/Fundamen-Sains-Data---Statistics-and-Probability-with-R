#SOAL STATISTIKA

library(ISLR)

dataCredit <- Credit
head(dataCredit)

#1. Compute the mean and the median of Rating, Cards,
# and Age

mean(dataCredit$Rating)
mean(dataCredit$Cards)
mean(dataCredit$Age)

#2. Compute the mode of Gender, Student, and Married

library(lsr)

modeOf(dataCredit$Gender)
modeOf(dataCredit$Student)
modeOf(dataCredit$Married)

#3. Compute the sample 10,37, and 91 percentiles of Education

quantile(x =dataCredit$Education, probs = 0.1)
quantile(x =dataCredit$Education, probs = 0.37)
quantile(x =dataCredit$Education, probs = 0.91)

#4. Compute the quartiles of Balance and its corresponding boxplot

quantile(x = dataCredit$Balance, probs = c(0.25, 0.50, 0.75))
boxplot(dataCredit$Balance)

#5. Compute the correlation and the scatter plot between pairs of 
#Limit and Rating, Age and Card, Income and Education

newData <- data.frame(limit = dataCredit$Limit, rating = dataCredit$Rating)
newData1 <- data.frame(age = dataCredit$Age, card = dataCredit$Cards)
newData2 <- data.frame(income = dataCredit$Income, education = dataCredit$Education)

cor(newData)
cor(newData1)
cor(newData2)

plot(newData$limit, newData$rating)
plot(newData1$age, newData1$card)
plot(newData2$income, newData2$education)

#SOAL PROBABILITAS

#Contoh kasus : Sebuah mesin yang memproduksi semacam alat, ternyata terdapat 5%
# yang rusak. Jika secara acak diambil 15 buah dari alat tersebut untuk diselidiki,
# berapa probabilitas akan terdapat 2 alat yang rusak?

# - diketahui : x = 2, n = 10, p=5%

dbinom(x = 2, size = 15, prob = 0.05)
