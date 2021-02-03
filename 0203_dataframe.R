English <- c(90, 80, 60, 70)  #각점수
English
Math <- c(50, 60, 100, 20)
Math
class <- c(1, 1, 2, 2)
class
d_frame <- data.frame(English, Math, class)   #행과 열을 포함한 정리
d_frame

#평균구하기
mean(d_frame$English) #$는 평균표시

d_frame_02 <- data.frame (English = c(90, 50, 10, 30),
                          Math= c(50,80,40,30), 
                          class=c(1,1,2,2))
d_frame_02

#엑셀파일 가져오기
library(readxl)
read_data_exel <- read_excel("./teacher/Data/excel_exam.xlsx")
View(read_data_exel)   #엑셀 불러왔는지 확인하기

#sheet 가져오기
read_sheet <- read_excel("./teacher/Data/0203_sample data.xlsx", sheet=3)
View(read_sheet)

#CSV 파일 가져오기
read_csv_data <- read.csv("0203_sample_csv_data_.csv")
