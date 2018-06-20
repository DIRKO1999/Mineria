#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(graphics)
library(grid)
library(ggplot2)
library(shinydashboard)
library(dygraphs)


dashboardPage(
  dashboardHeader(title = "Mineria Carbon"),
  dashboardSidebar(
    sidebarMenu(
    menuItem("Registros", tabName = "rg", icon = icon("fas fa-clipboard"),
             menuSubItem("Introduccion", tabName = "ind", icon = icon("fas fa-industry"))
            )
    
    ),
    sidebarMenu(
      menuItem("Produccion", tabName = "p", icon = icon("fas fa-truck"),
               menuSubItem("VALE COAL COLOMBIA LTDA", tabName = "vcc"),
               menuSubItem("DRUMMOND EL DESCANSO", tabName = "ded"),
               menuSubItem("NORCARBON - LA DIVISA", tabName = "nl"),
               menuSubItem("CONSORCIO MINERO UNIDO", tabName = "cmu"),
               menuSubItem("C.I. PRODECO S.A.", tabName = "cp"),
               menuSubItem("CARBONES LA JAGUA", tabName = "clj"),
               menuSubItem("DRUMMOND-LA LOMA", tabName = "dll"),
               menuSubItem("LA FRANCIA", tabName = "lf"),
               menuSubItem("CARBONES DEL TESORO", tabName = "cdt"),
               menuSubItem("CARBOANDES S.A.", tabName = "ca"))
    ),
    
    sidebarMenu(
      menuItem("Resumen", tabName = "rs", icon = icon(""))
    )
  ),
  dashboardBody(
    tabItems(
      tabItem(tabName = "ind",
              h1("Introduccion"),
              h3("En el siguiente aplicativo, se muestra informacion desde diferentes puntos de vista sobre una base de datos, la cual muestra la informacion de produccion de carbon y empresas mineras del departamento del cesar, el objetivo de este trabajo es simplemente mostrar la informacion disponible que requiera el usuario mediante el aplicativo web en el cual se pueda evidenciar la candidad de toneladas que produce cada empresa del carbon en el cesar. haciendo comparaciones entre ellas para ver cual produjo mas.")),
      tabItem(tabName = "vcc",
              tabsetPanel(
                tabPanel("Produccion/Anhios",
                         dygraphOutput("time1")),
                tabPanel("Boxplot",
                         plotlyOutput("box1"))
              )),
      
      tabItem(tabName = "ded",
              tabsetPanel(
                tabPanel("Produccion/Anhios",
                         dygraphOutput("time2")),
                tabPanel("Boxplot",
                         plotlyOutput("box2"))
              )),
      
      tabItem(tabName = "nl",
              tabsetPanel(
                tabPanel("Produccion/Anhios",
                         dygraphOutput("time3")),
                tabPanel("Boxplot",
                         plotlyOutput("box3"))
              )),
      
      tabItem(tabName = "cmu",
              tabsetPanel(
                tabPanel("Produccion/Anhios",
                         dygraphOutput("time4")),
                tabPanel("Boxplot",
                         plotlyOutput("box4"))
              )),
      
      tabItem(tabName = "cp",
              tabsetPanel(
                tabPanel("Produccion/Anhios",
                         dygraphOutput("time5")),
                tabPanel("Boxplot",
                         plotlyOutput("box5"))
              )),
      
      tabItem(tabName = "clj",
              tabsetPanel(
                tabPanel("Produccion/Anhios",
                         dygraphOutput("time6")),
                tabPanel("Boxplot",
                         plotlyOutput("box6"))
              )),
      
      tabItem(tabName = "dll",
              tabsetPanel(
                tabPanel("Produccion/Anhios",
                         dygraphOutput("time7")),
                tabPanel("Boxplot",
                         plotlyOutput("box7"))
              )),
      
      tabItem(tabName = "lf",
              tabsetPanel(
                tabPanel("Produccion/Anhios",
                         dygraphOutput("time8")),
                tabPanel("Boxplot",
                         plotlyOutput("box8"))
              )),
      
      tabItem(tabName = "cdt",
              tabsetPanel(
                tabPanel("Produccion/Anhios",
                         dygraphOutput("time9")),
                tabPanel("Boxplot",
                         plotlyOutput("box9"))
              )),
      
      tabItem(tabName = "ca",
              tabsetPanel(
                tabPanel("Produccion/Anhios",
                         dygraphOutput("time10")),
                tabPanel("Boxplot",
                         plotlyOutput("box10"))
              )),
      
      tabItem(tabName = "rs",
              tabsetPanel(
                tabPanel("Boxplot",
                         plotlyOutput("resu1")),
                tabPanel("Time serie/General",
                         dygraphOutput("timeresu"))
              ))
    )
    
  )
)


