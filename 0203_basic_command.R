library(readxl)
exam <- read.csv(".teacher/Data/csv_exam.csv", fileEncoding = "euc-kr")
View(exam)  #전체 데이터 프레임 보여주기
head(exam)  # 앞에서부터 6개 데이터 프레임 보여주기
tail(exam)  # 뒤에서부터 6개 데이터 프레임 보여주기
head(exam,10) #앞에서부터 원하는 개수만큼 보여주기
summary(exam)
max(exam$math) #math 변수에서의 최대값 찾기
min(exam$english) #english 변수에서의 최소값 찾기

install.packages("ggplot2")







