library(shiny)

shinyServer(function(input,output){
  
  GuardaVector <- reactive({
    x <- as.numeric(unlist(strsplit(input$vec1,",")))
    #cat("Vector")
    return(x)
    
  })
  
  output$contenido<-renderPrint({
    GuardaVector()
  })
  
  #envia el archivo a inputfile
  leerdato<-reactive({
    inFile <- input$file1
    #si el arcivo no contiene datos, retorna mensaje de nulo
    if (is.null(inFile))
      return(NULL)
    #captura los datos del 
    datos<-read.csv(inFile$datapath, header=input$header, sep=input$sep, quote=input$quote)
    return(datos)
  })
  
  
  output$contenido <- renderTable({
    leerdato()
  })
  #Avisos
  
  
  #Conjuntos de Datos
  output$bienvenida<- renderText({
    
    "Estos son los datos que ingresaste :"
  })
  
  #Instrucciones
  output$instruccion <- renderText({
    
    "Por favor elige una opcion del menu para empezar a realizar tus calculos"
  })
  
  
  
  
  
  
})