#순서대로 정렬하기
exam %>% arrange(math) #math 오름차순으로 정렬
exam %>% arrange(desc(math))    #내림차순으로 정렬
exam %>% arrange(class, desc(math))

mpg <- as.data.frame(ggplot2::mpg)
df_audi <- df %>% filter(class=="audi") 
head(df)
mpg%>% 
  arrange(desc(hwy)) %>% 
  head(5)

exam %>% 
  mutate(test  =ifelse(science >= 60, "pass", "fail")) %>% 
  head

exam %>% 
  mutate(total = math + english + science) %>% 
  arrange(total) %>% 
  head

mpg <- as.data.frame(ggplot2::mpg)
mpg_new <- mpg
mpg_new <- mpg_new %>% mutate(total=cty+hwy)
mpg_new <- mpg_new %>% mutate(mean=total/2)
mpg_new %>% arrange(mean) %>% head(3)

mpg %>% 
  mutate(total=cty+hwy, mean=total/2) %>%
  arrange(desc(mean)) %>% 
  head(3)



exam %>% summarise(mean_math = mean(math)) #집단별로 요약하기
exam %>% 
  group_by(class) %>%                      #class별로 분리
  summarise(mean_math = mean(math))        #math평균 산출

exam %>% 
  group_by(class) %>%                      
  summarise(mean_math = mean(math), sum_math = sum(math), median_math = median(math))  


#각 집단별로 다시 집단 나누기
mpg %>% 
  group_by(manufacturer, drv) %>%        #회사별, 구방방식별 분리
  summarise(mean_cty = mean (cty)) %>%  
  head(10)

mpg <- as.data.frame(ggplot2::mpg)
mpg %>% 
  group_by(manufacturer) %>% 
  filter(class =="suv")
  mutate(tot = (cty+hwy)/2) %>% 
  summarise(mean_tot = mean(tot)) %>% 
  arrange(desc(mean_tot)) %>% 
  head(5)


test1<-data.frame(id = c(1,2,3,4,5), midterm = c(60,70,80,90,100))
test2<-data.frame(id = c(1,2,3,4,5), final = c(70,40,60,95,85)) 


#missing value(결측치-누락된 값, 비어있는 값)
#결측치 표기- 대문자 NA
df<-data_frame(sex=c("M", "f", NA, "M", "F"), score = c(5,4,3,9,NA))
df
table(is.na(df$sex))
table(is.na(df$score))

mean(df$score)
df %>% filter(is.na(score))


















