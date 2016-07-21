
library(shiny)


# Define UI 
shinyUI(fluidPage(
  headerPanel("BMI for Adults"),
  
  sidebarLayout(
    sidebarPanel(
                textInput("name","Name:","Hello!!!"),
                 numericInput("age","Age (greater than 18):","19",min = 19, max = 95, step = 1),
      radioButtons("sex", "Gender:",
                   c("Male" = "male",
                     "Female" = "female",
                     "Neutral" = "neutral"
                     )
                   ),
      br(),
      
      sliderInput("height", 
                  "Height in centimeter", 
                  value = 150,
                  min = 150, 
                  max = 250),
      
      sliderInput("weight", 
                  "Body Weight in Kilogram", 
                  value = 50,
                  min = 50, 
                  max = 200)
    ),
    
  
    mainPanel(h4("Your BMI"),
      h3(textOutput("BMI")),
      tableOutput("matrix"),
      h4("Recommended"),
      tableOutput("recommended")
      )
    )
)
)
  
