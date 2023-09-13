library(readxl)
MicroApp_Revenue_2004_2022 <- read_excel("xlsx-file")
View(MicroApp_Revenue_2004_2022)

MicroApp <- MicroApp_Revenue_2004_2022
MicroApp <- MicroApp %>% 
  rename("Apple" = "Apple Revenue",
         "Microsoft" = "Microsoft Revenue")

View(MicroApp)

Apple.png <- rep(c("PNG"), 1)
Microsoft.png <- rep(c("PNG"), 1)

MicroApp %>% 
  ggplot() +
  geom_segment(aes(x = Year, xend = Year, y = Apple, yend=Microsoft), col = "grey", size = 1) +
  geom_point(aes(Year, Apple), size = 2.5) +
  geom_point(aes(Year, Microsoft), col = "white", size = 2.5) + 
    coord_flip() +
      labs(title = "Apple and Microsoft Revenue",
           subtitle = "Worldwide revenue (in billion $) from 2004 to 2022", 
           y = "Revenue",
           caption = "Source: Data from Statista") +
  theme_minimal() +
  theme(axis.title = element_text(size = 12.5),
        axis.text = element_text(size = 11),
        plot.title = element_text(family = "serif", size = 18.5),
        plot.subtitle = element_text(family = "serif", face = "italic", size = 15)) + 
  geom_image(aes(x = Year, y = Apple, image = Apple.png), size = 0.04) +
  geom_image(aes(x = Year, y = Microsoft, image = Microsoft.png), size = 0.04)


  
  

