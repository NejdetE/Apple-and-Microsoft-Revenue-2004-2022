library(readxl)
MicroApp_Revenue_2004_2022 <- read_excel("C:/Users/nejde/Desktop/MicroApp Revenue 2004-2022.xlsx")
View(MicroApp_Revenue_2004_2022)

MicroApp <- MicroApp_Revenue_2004_2022
MicroApp <- MicroApp %>% 
  rename("Apple" = "Apple Revenue",
         "Microsoft" = "Microsoft Revenue")

MicroApp %>% 
  ggplot() +
  geom_segment(aes(x = Year, xend = Year, y = Apple, yend=Microsoft), col = "darkgrey", size = 1) +
  geom_point(aes(Year, Apple), col = "red", size = 2.5) +
  geom_point(aes(Year, Microsoft), col = "black", size = 2.5) + 
    coord_flip() +
      labs(title = "Apple (Red) and Microsoft (Black) Revenue",
           subtitle = "Worldwide revenue (in billion $) from 2004 to 2022", 
           y = "Revenue",
           caption = "Source: Data from Statista") +
  theme_minimal() +
  theme(axis.title = element_text()) 

  
  

