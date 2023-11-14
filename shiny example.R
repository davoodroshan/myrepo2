library(shiny)
library(tidyverse)
library(palmerpenguins)


ui <- fluidPage(
  titlePanel("Palmer Penguins Explorer"),
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "species", label = "Select Penguin Species:", choices = c("Adelie", "Gentoo", "Chinstrap"), multiple = FALSE),
      radioButtons(inputId = "sex", label = "Select Penguin Sex:", choices = c("female", "male")),
      sliderInput("bmass", "Select Body Mass Range:", min = 2500, max = 7000, value = c(4000, 5000)),
      sliderInput("year", "Select year of the study:", min = 2007, max = 2009, value = 2007, step = 1, animate = TRUE)
      
    ),
    mainPanel(
      plotOutput("plot1")
    )
  )
  
)

server <- function(input, output) {
  
  output$plot1 <- renderPlot({ 
    penguins %>%
      filter(species == input$species) %>%
      filter(sex == input$sex) %>%
      filter(body_mass_g >= input$bmass[1] & body_mass_g <= input$bmass[2]) %>%
      filter(year == input$year) %>%
      ggplot(aes(x = bill_depth_mm, y = bill_length_mm)) +
      geom_point()
  })
}

shinyApp(ui, server)