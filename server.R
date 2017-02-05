library(shiny)
library(ggplot2)

shinyServer(
  function(input, output) {
    
    output$ggplot <- renderPlot({
      
      ggplot(mtcars, aes_string(x = input$var1,
                         y = input$var2)) +
        geom_point() +
        geom_smooth(method = 'lm',
        formula = y ~ poly(x,
                           as.numeric(input$poly)),
        se = input$se)
    })
  }
)
