library(shiny)

u <- shinyUI(fluidPage(
  
  #titlePanel(h2(strong("MEDIDAS DE DISPERSION / DATOS NO AGRUPADOS",align = "center"))),
  sidebarPanel(
    # textInput('vec1','Introducir un vector (delimitado por comas)' ,"0,1,2"),
    h4(strong("MEDIDAS DE DISPERSION / DATOS NO AGRUPADOS",align = "center")),
    br(),
    br(),
    p("A continuacion encontrara los calculos que puede realizar."),
    
    selectInput("opcion1","",c("SELECCIONE UNA OPCION" = "op1",
                                    "VARIANZA POBLACIONAL" = "op2",
                                    "DESVIACION ESTANDAR POBLACIONAL" = "op3",
                                    "DESVIACION ESTANDAR MUESTRAL" = "op4"),
                                     selected = "op1",multiple = FALSE),
    
   
    br(),
    actionButton("Atras", label = "Atras"),  actionButton("Inicio", label = "Inicio"),
    br(),
    br(),
    br(),
    p(img(src="ucc.png", height = 45, width = 200), align="rigth"),
    
    p("Aplicación realizada por", a("Diana Villanueva", href="mailto:dianac.villanueva@campusucc.edu.co"),"con el paquete Shiny del software R.")
    
  ), 
  
  mainPanel(
    
    # br(),
    #textOutput("bienvenida"),
    #br(),
    #textOutput("contenido"),
    #br(),
    #textOutput("instruccion")
  )
))
