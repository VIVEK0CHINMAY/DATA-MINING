df <- data.frame(
  Grade = c("A", "B", "C", "A", "B","A", "B", "C", "A", "B"),
  Subject = c("Math", "Science", "History", "English", "Art","Math", "Science", "History", "English", "Art"),
  Marks = c(95, 88, 76, 90, 82,95, 88, 76, 90, 82))

print(df)

install.packages("tidyverse")
library(tidyverse)

# 1. arrange() method
arr_df<-df%>%arrange(Marks)
print(arr_df)

arr_df<-df%>%arrange(Grade)
print(arr_df)

# 2. select() method
arr_df1<-df%>%select(Grade,Subject)
print(arr_df1)

arr_df2<-df%>%select(Grade:Marks)
print(arr_df2)

# 3. filter() method
arr_df3<-df%>%filter(Subject=="Art")
print(arr_df3)

arr_df3<-df%>%filter(Marks>80)
print(arr_df3)

arr_df3<-df%>%filter(Marks>80,Subject=="Math")
print(arr_df3)

# 4. SPREAD() METHOD (key value pair)
arr_df4<-df%>%spread(Grade,Marks)
print(arr_df4)

# 5. mutate() method

arr_df5 <- df %>% mutate(marks1 = Marks + 1)
print(arr_df5)

arr_df5 <- arr_df5 %>% mutate(total = Marks + marks1)
print(arr_df5)

