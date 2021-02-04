# ggplot2의 mpg데이터를 데이터 프레임 형태로 불러오기
mpg <- as.data.frame(ggplot2::mpg) #::는 불러오기 역할
head(mpg,3)  #데이터의 앞부분 확인 (정해진 숫자 만큼만)
tail(mpg)  #데이터의 뒷부분 확인
View(mpg)
dim(mpg)   #총 열과 행을 보여줌
str(mpg)   #데이터의 속성 확인
summary(mpg)  #기술통계량(최소값, 중간값, 평균, 최대값 등을 나타냄)(변수지정:$)

#데이터 프레임 복사본 만들기
df_raw <-data.frame(var1=c(1,2,3), var2=c(2,3,2))   #원본 생성
df_raw     #원본 출력
df_new <-df_raw   #원본데이터를 복사본 생성
df_new     #복사본 출력
df_new <- rename(df_new, v2 = var2)  #이름 바꾸기
df_new    #이름 변경 확인

library(ggplot2)
mpg <- as.data.frame(ggplot2::mpg)
head(mpg, 3)
mpg_new <- mpg
mpg_new <-rename(mpg_new, city = city)
mpg_new <-rename(mpg_new, )