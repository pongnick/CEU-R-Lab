
library(shiny)

shinyUI(
  fluidPage(
    titlePanel('The Great MTCars Analysis Engine'),
    sidebarLayout(
      sidebarPanel(
        selectInput('var1', 'x variable',
                    names(mtcars)),
        selectInput('var2', 'y variable',
                    names(mtcars)),
        sliderInput('poly', 'Polynomial',
                    min = 1, max = 16, value = 1),
        checkboxInput('se','Confidence Inverval')
      ),
      mainPanel(
        plotOutput('ggplot')
      )
    )
  )
)
