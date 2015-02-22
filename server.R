Degree_Occupation <- read.csv("data/Degree_Occupation.csv")

shinyServer(function(input, output) {
  
  output$myHist <- renderPlot({
    col <- as.numeric(input$var)
    
    Current_Occupation <- c(1:20)
    plot(Current_Occupation, Degree_Occupation[,col], col = input$Color,
         main="Degree vs Occupation", type = "s", 
         xlab=names(Degree_Occupation[,1]), 
         ylab = "Employed Count",
         lwd = 7)
  })
   
})
