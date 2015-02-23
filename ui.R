library(shiny)

shinyUI(fluidPage(
  titlePanel(title=h4("Employment: Degree earned vs Current Occupation domain", align="center")),
  sidebarLayout(
   sidebarPanel(
     selectInput("var","1. Select the field of the college degree", 
                 choices = c("Computers, Mathematics, Statistics" = 2, "Engineering" = 3, "Physical Sciences" = 4, 
                             "Biological, Environmental, Agricultural sciences" = 5, 
                             "Psychology" = 6, "Social Sciences" = 7, "Multi-disciplinary studies" = 8,
                             "Science and Engineering-related" = 9, "Business" = 10, "Education" = 11,
                             "Literature, Languages" = 12, "Liberal Arts and History" = 13,
                             "Visual and Performing arts" = 14, "Communications" = 15,
                             "Other (Eg. criminal justice and social work)" = 16),
                 selected = 6
                 ),
     br(),
     br(),
     radioButtons("Color", "3. Select Histogram color", choices=c("darkred", "darkblue", "darkgreen"), selected ="darkred")
   ),
   mainPanel(
     plotOutput("myHist"),
     strong("Y-axis represents the count of employees in that occupation for that degree"),
     strong("and the x-axis represents current occupation as below:"),
     h6("1 - Computer workers"), 
     h6("2 - Engineers"), 
     h6("3 - Mathematicians and statisticians"), 
     h6("4 - Life scientists"), 
     h6("5 - Physical scientists"), 
     h6("6 - Social scientists"), 
     h6("7 - Architects"), 
     h6("8 - Health care workers"), 
     h6("9 - Managers (non-STEM)"), 
     h6("10 - Business and financial"), 
     h6("11 - Social services"), 
     h6("12 - Legal"), 
     h6("13 - Education"), 
     h6("14 - Arts and entertainment"), 
     h6("15 - Service"), 
     h6("16 - Sales"), 
     h6("17 - Office support"), 
     h6("18 - Agriculture"), 
     h6("19 - Construction"), 
     h6("20 - Production")    )
  )
  ))
