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
     
     strong("x-axis represents current occupation as below:"),
     p("* 1 - Computer workers"), 
     p("* 2 - Engineers"), 
     p("* 3 - Mathematicians and statisticians"), 
     p("* 4 - Life scientists"), 
     p("* 5 - Physical scientists"), 
     p("* 6 - Social scientists"), 
     p("* 7 - Architects"), 
     p("* 8 - Health care workers"), 
     p("* 9 - Managers (non-STEM)"), 
     p("* 10 - Business and financial"), 
     p("* 11 - Social services"), 
     p("* 12 - Legal"), 
     p("* 13 - Education"), 
     p("* 14 - Arts and entertainment"), 
     p("* 15 - Service"), 
     p("* 16 - Sales"), 
     p("* 17 - Office support"), 
     p("* 18 - Agriculture"), 
     p("* 19 - Construction"), 
     p("* 20 - Production")    )
  )
  ))
