library(shiny)


# Define server logic for random distribution application
shinyServer(function(input, output) {
  
  # Reactive expression to generate the requested distribution.
  # This is called whenever the inputs change. The output
  # functions defined below then all use the value computed from
  # this expression
  data <- reactive({
    
   
    #Bodyweight in kilograms divided by height in meters squared
    #or
    #BMI = x KG / (y M * y M)
    #Where:
    #  x=bodyweight in KG
    #   y=height in m
    
    BMI <- input$weight / ((input$height/100) * (input$height/100))
    
  })
  
  
  
  output$BMI <- renderText({
    data()
  })
  
  output$myname <- renderText(input$name)
  output$myage <- renderText(input$age)
  output$mysex <- renderText(input$sex)
  output$myheight <- renderText(input$height)
  output$myweight <- renderText(input$weight)
  
  output$matrix <- renderTable({
    #matrix <- matrix(rep(1,4),nrow=2)
    
    #colnames(matrix) <- c('Value','Comment on BMI')
    #rownames(matrix) <- c('Age','Weight')
    #matrix[1][1]<-input$age
    #matrix[1][2]<- ifelse(input$age < 25, "abc","xyz" )
    #matrix
    as.data.frame(reactiveValuesToList(input))
  })
  output$recommended <- renderTable({
    #recommended<-data.frame(matrix(c(1,2,3,4),nrow=2,ncol=2))
    
    Age <- input$age
    
     BMI<- ifelse(Age < 25, "19-24",
                               ifelse(Age < 35, "20-25", 
                                      ifelse(Age < 45, "21-26",
                                             ifelse(Age < 55, "22-27",
                                                    ifelse(Age < 65, "23-29", "24-29"
                                                    )) )))
    
     
    Meaning <-ifelse(data() < 25, "Normal Weight",
                  ifelse(data() < 30, "Overweight", 
                         ifelse(data() < 35, "Obesity level I",
                                ifelse(data() < 40, "Obesity level II",
                                       "Obesity level III"
                                       )) ))
    recommended<-data.frame(Age,BMI,Meaning)
    
    row.names(recommended)<- c("")
    
    recommended
  })
})