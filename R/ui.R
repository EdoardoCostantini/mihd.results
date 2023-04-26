#' User interface call
#'
#' Calls the definition of the user interface and returns it as an output
#' 
#' @return UI object that can be passed directly to shiny::shinyApp()
#' @author Edoardo Costantini, 2023
#' @export
ui_call <- function() {
    # Define UI
    ui <- shiny::fluidPage(

        # App title
        shiny::titlePanel(
            shiny::h1("High-dimensional imputation for the social sciences", align = "center")
        ),

        # Create tabs for different plotting aspects
        shiny::tabsetPanel(
            type = "tabs",
            selected = "MI-PCA deep-dive",
            shiny::tabPanel(
                title = "Simulation study",
                "Coming soon"
            ),
            shiny::tabPanel(
                title = "Collinearity study",
                "Coming soon"
            ),
            shiny::tabPanel(
                title = "MI-PCA deep-dive",
                shiny::fluidRow(
                    shiny::column(
                        width = 3,
                        offset = 1,
                        shiny::titlePanel(
                            shiny::h3("Understanding the MI-PCA behaviour", align = "center")
                        ),
                        shiny::tabsetPanel(
                            type = "tabs",
                            shiny::tabPanel(
                                title = "Introduction",
                                shiny::htmlOutput("introduction")
                            ),
                            shiny::tabPanel(
                                title = "1. Setup",
                                shiny::htmlOutput("setup")
                            ),
                            shiny::tabPanel(
                                title = "2. Correlation matrix",
                                shiny::htmlOutput("heatmap_cor_int")
                            ),
                            shiny::tabPanel(
                                title = "3. PC Loadings",
                                shiny::htmlOutput("heatmap_load_int")
                            ),
                            shiny::tabPanel(
                                title = "4. Non-graphical decision rules",
                                shiny::htmlOutput("hist_int")
                            ),
                            shiny::tabPanel(
                                title = "5. CPVE",
                                shiny::htmlOutput("scatter_int")
                            ),
                            shiny::tabPanel(
                                title = "6. Conclusions",
                                shiny::htmlOutput("conclusions")
                            )
                        )
                    ),
                    shiny::column(
                        width = 7,
                        shiny::fluidRow(
                            shiny::titlePanel(
                                shiny::h3("Input", align = "center")
                            ),
                            shiny::column(
                                width = 8,
                                offset = 2,
                                shiny::sliderInput(
                                    inputId = "colli",
                                    label = "Collinearity",
                                    min = 0,
                                    max = .9,
                                    value = .1,
                                    step = .1,
                                    width = "100%"
                                )
                            ),
                        ),
                        shiny::fluidRow(
                            shiny::titlePanel(
                                shiny::h3("Plots", align = "center")
                            ),
                            shiny::fluidRow(
                                shiny::column(
                                    width = 3,
                                    shiny::titlePanel(
                                        shiny::h5("Panel A", align = "center")
                                    ),
                                    shiny::plotOutput(outputId = "heatmap_cor")
                                ),
                                shiny::column(
                                    width = 3,
                                    shiny::titlePanel(
                                        shiny::h5("Panel B", align = "center")
                                    ),
                                    shiny::plotOutput(outputId = "heatmap_load")
                                ),
                                shiny::column(
                                    width = 3,
                                    shiny::titlePanel(
                                        shiny::h5("Panel C", align = "center")
                                    ),
                                    shiny::plotOutput(outputId = "hist")
                                ),
                                shiny::column(
                                    width = 3,
                                    shiny::titlePanel(
                                        shiny::h5("Panel D", align = "center")
                                    ),
                                    shiny::plotOutput(outputId = "scatter")
                                )
                            )
                        ),
                        style = "border-left: 1px solid; border-left-color: #DDDDDD"
                    )
                )
            ),
            shiny::tabPanel(
                title = "Resampling study",
                "Coming soon"
            ),
        )
    )

    # Return ui
    return(ui)
}