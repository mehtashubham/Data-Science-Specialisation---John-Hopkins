################# ~~~~~~~~~~~~~~~~~~~~~~~~~~ ######## ~~~~~~~~~~~~~~~~~~~~~~~~~~ #################
##                                                                                              ##
##                        Data Science Capstone Project                                         ##
##                                                                                              ##            
##                              Shubham Mehta                                                   ##
##                                                                                              ##
##   Github Repo:https://github.com/mehtashubham/Data-Science-Specialisation---John-Hopkins     ##
##                                                                                              ##
################# ~~~~~~~~~~~~~~~~~~~~~~~~~~ ######## ~~~~~~~~~~~~~~~~~~~~~~~~~~ #################

suppressPackageStartupMessages(c(
        library(shinythemes),
        library(shiny),
        library(tm),
        library(stringr),
        library(markdown),
        library(stylo)))

shinyUI(navbarPage("Coursera Data Science Capstone", 
                   
                   theme = shinytheme("flatly"),
                   
############################### ~~~~~~~~1~~~~~~~~ ##############################  
## Tab 1 - Prediction

tabPanel("Next Word Prediction",
         
         tags$head(includeScript("./js/ga-shinyapps-io.js")),
         
         fluidRow(
                 
                 column(3),
                 column(6,
                        tags$div(textInput("text", 
                                  label = h3("Enter your text here:"),
                                  value = ),
                        tags$span(style="color:grey",("Only English words are supported.")),
                        br(),
                        tags$hr(),
                        h4("The predicted next word:"),
                        tags$span(style="color:green",
                                  tags$strong(tags$h3(textOutput("predictedWord")))),
                        br(),
                        tags$hr(),
                        h4("What you have entered:"),
                        tags$em(tags$h4(textOutput("enteredWords"))),
                        align="center")
                        ),
                 column(3)
         )
),

############################### ~~~~~~~~2~~~~~~~~ ##############################
## Tab 2 - About 

tabPanel("About This Application",
         fluidRow(
                 column(2,
                        p("")),
                 column(8,
                        includeMarkdown("./about/about.md")),
                 column(2,
                        p(""))
         )
),

############################### ~~~~~~~~F~~~~~~~~ ##############################

## Footer

tags$hr(),

tags$br(),

tags$span(style="color:#808080", 
          tags$footer(("Created in 2017 by "), 
                      tags$a(
                              href="http://www.linkedin.com/",
                              target="_blank",
                              "Shubham Mehta."), 
                      tags$br(),
                      ("Built with"), tags$a(
                              href="http://www.r-project.org/",
                              target="_blank",
                              "R"),
                      ("&"), tags$a(
                              href="http://shiny.rstudio.com",
                              target="_blank",
                              "Shiny."),
                      align = "center"),
          tags$head(tags$style(HTML("a {color: navy}"))),
          
          tags$br()
)
)
)
