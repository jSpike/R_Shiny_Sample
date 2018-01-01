library(shiny)
shinyUI(fluidPage(
  titlePanel("Header panel"),
  sidebarLayout(
    sidebarPanel("Sidebar panel",
                 selectInput('element_id', label = 'Select one option', choices = LETTERS[1:10]),
                 numericInput(inputId = "n", "Sample Size", value = 25),
                 plotOutput(outputId="hist")
                 ),
    mainPanel("Main panel",
              h1('header title'),
              p('paragarph content'),
              actionButton(inputId="actionbtn", label="action button"),
              actionLink(inputId="actlink", label="Link"),
              checkboxInput(inputId="chkinput", label="check me", TRUE),
              checkboxGroupInput(inputId="chkGrpInpt", 
                                 label = h3("check box grp"), 
                                 choices = list("one" = 1, "two" = 2),selected = 1, inline = FALSE),
              dateInput(inputId="date", 
                        label = h3("Date Input"),
                        value = "2018-01-01"),
              dateRangeInput(inputId ="dateRange", 
                             label = h3("Date Range Input")),
              fileInput(inputId='fileUpLd', label = h3("File Upload")),
              radioButtons(inputId="radioBtn", 
                           label = h3("Radio Button"),
                           choices = list("One" = 1, "Two" =2, "Three" =3),
                           selected = 1),
              selectInput(inputId="dropdownSelect", 
                          label = h3("Radio Button"),
                          choices = list("one"=1,"two"=2,"three"=3),
                          selected = 2)
              )
  )
))