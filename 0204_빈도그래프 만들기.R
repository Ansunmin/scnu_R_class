df <-data.frame(var1 =c(4,5,6), var2= c(2,6,9))    #데이터 프레임 만들기
df$sum <- df$var1 + df$var2   #var1 + var2
df$sum
df <-data.frame(var1 =c(4,5,6), var2= c(2,6,9))  
df$var_mean <- (df$var1 + df$var2)
df$var_mean

mpg <- as.data.frame(ggplot2::mpg)     #그래프 그리는 패키지
mpg$total <- (mpg$cty + mpg$hwy)/2     #통합 연비 변수 생성
head(mpg)
mean(mpg$total)
summary(mpg$total)   #요약통계량
hist(mpg$total)      #히스토그램 생성
mpg$test<-ifelse(mpg$total >= 20, "pass", "fail")  #연비가 20이상이면 pass, 미만이면 fail
mpg$test
head(mpg)
View(mpg)
#빈도표 만들기
table(mpg$test)
qplot(mpg$test) 
qplot
#중첩조건문
mpg$grade2 <- ifelse(mpg$total >= 30, "A", ifelse(mpg$total >= 25, "B", ifelse(mpg$total >= 20, "C","D") ) )     #거짓인 부분에 if를 삽입_30이상이면 A이고 이하면 거짓으로 B > 그 무엇도 아니면 마지막 D를 입력하라.
View(mpg)

midwest<-as.data.frame(ggplot2::midwest) #프레임 불러오기
library(dplyr)  #라이브러리 불러오기
head(midwest)   #확인
midwest <- rename(midwest, total = poptotal)  #poptotal을 total로 이름 바꾸기
midwest <- rename(midwest, asian = popasian)  #popasian을 asian로 이름 바꾸기
midwest$ratio <- midwest$asian / midwest$total*100 #파생변수 만들기
hist(midwest$ratio)       #히스토그램 만들기
mean(midwest$ratio)       #평균구하기
midwest$group<-ifelse(midwest$ratio > 0.009393013, "Large", "small")   #평균과 비교하여 크기 확인하기
table(midwest$group)   #막대그래프만들기
qplot(midwest$group)   


#무작위 중 1반 데이터만 가져오기
library(dplyr)
exam <- read.csv("./teacher/Data/csv_exam.csv")
exam
#exam에서 class가 1인것만 추출
exam %>% filter(class ==1)
exam %>% filter(class ==2)
exam %>% filter(class !=1)
exam %>% filter(math >50)
exam %>% filter(math <50)
#논리연산자
exam %>% filter(class ==1 & math >=50)
exam %>% filter(class ==1 & math >=50)
exam %>% filter(math >= 90 | english >= 90)
exam %>% filter(class==1| class==3 |class==5)
#매치연산자
exam %>% filter(class %in%)
mean(class1$math)



mpg <- as.data.frame(ggplot2::mpg)
library(dplyr)
mpg_a <- mpg %>% filter(displ<=5)
mpg_b <- mpg %>% filter(displ>=4)
mpg_a
mpg_b
mean (mpg_a$ hwy)
mean (mpg_b$ hwy)
mpg_audi <- mpg %>% filter(manufacturer == "audi")
mpg_toyota <- mpg %>% filter(manufacturer=="toyota")
mean (mpg_audi$ cty)
mean (mpg_toyota$ cty)
mpg_new <- mpg %>% filter(manufacturer %in% c("chevrolet", "ford", "honda"))
mean(mpg_new$hwy)
