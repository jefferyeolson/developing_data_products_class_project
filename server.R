library(shiny) 
library(scales)
utah <- read.csv("utah.csv")

shinyServer(
        function(input, output) {
        roi <- reactive({utah[utah$program == input$program & utah$name == input$name,]})
        output$name <- renderText({input$name})
        output$program <- renderText({input$program})
        output$earnings <- renderText({roi()$earnings})
        output$debt <- renderText({roi()$debt})
        return_on_investment <- reactive({ roi()$earnings / roi()$debt })
        output$return <- renderText({return_on_investment()})
} )