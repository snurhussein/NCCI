library(shiny)
library(rsconnect)
library(ggplot2)
library(stringr)
library(DT)
library(scales)
library(plotly)
library(xlsx)


NCCIcomplete<-data.frame(NCCIcomplete)

server<-function(input, output) {
  
  # Compute the forumla text in a reactive expression since it is
  # shared by the output$caption and output$Plot expressions
  formulaText <- reactive({
    paste("Résumé du champ pour", input$variable)
  })
  
  # Return the formula text for printing as a caption
  output$caption <- renderText({
    formulaText()
  })
  
  # Generate a plot of the requested variable - ggplot version
  output$Plot <- renderPlot({
    
    # check for the input variable
    if (input$variable == "Comment.Entendu") {
      # Q1
      dataset <- data.frame(Comment.Entendu = NCCImelt2$Comment.Entendu, var = factor(NCCImelt2[[input$variable]]))
    }
    else {
      # Other questions
      dataset <- data.frame(Language = NCCIcomplete$Language, var = factor(NCCIcomplete[[input$variable]]))
    }
    
    p <- ggplot(subset(dataset, var!="NA"), aes(var)) +
      geom_bar(aes(y = (..count..)/sum(..count..)), fill="slateblue")+
      xlab("") + ylab("Percent")+scale_x_discrete(labels = function(x) str_wrap(x, width = 25)) +
      scale_y_continuous(labels=percent) + stat_count(geom="text", colour="gray40", size=3.5, 
      aes(label=paste0(round((100*..count../sum(..count..)),2),'%'), y=((..count..)/sum(..count..))+0.02))

    
    print(p)
    
  })
     output$SubPlot <- renderPlot({
    
    # check for the input variable
    
    dem=factor(NCCIcomplete[[input$variable2]])
    
    if (input$variable == "Comment.Entendu") {
      # Q1
      dataset <- data.frame(Comment.Entendu = NCCImelt2$Comment.Entendu, var = factor(NCCImelt2[[input$variable]]))
    }
    else {
      # Other questions
      dataset <- data.frame(Language = NCCIcomplete$Language, var = factor(NCCIcomplete[[input$variable]]))
    }
   
     
    q <- ggplot(dataset, aes(x=dem, fill=var, y=..count..)) + geom_bar(position="dodge") +
    xlab("") + ylab("Count")+scale_x_discrete(labels = function(x) str_wrap(x, width = 25)) + scale_fill_discrete(name=dataset$dem) + 
      theme(legend.position = "bottom", legend.text = element_text(size = 7))
    
     print(q)
    
  })
  
    
    
  # Generate an HTML table view of the data; when updating, add links to new tables
  output$table <- DT::renderDataTable({
    DT::datatable(NCCIcomplete, options = list(orderClasses = TRUE, pageLength = 25))
  })
  output$downloadData <- downloadHandler(
    filename = function() { paste('NCCIexport-', Sys.Date(), '.xlsx') },
    content = function(file) {
      write.xlsx(NCCIcomplete, file)
    }
  )
  output$AGA041 <- downloadHandler(
    filename = function() {
      paste("AGA041-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(AGA041, file)
    } )
  output$AGA045 <- downloadHandler(
    filename = function() {
      paste("AGA045-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(AGA045, file)
    } )
  output$AGA046 <- downloadHandler(
    filename = function() {
      paste("AGA046-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(AGA046, file)
    } )
  output$AGA051 <- downloadHandler(
    filename = function() {
      paste("AGA051-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(AGA051, file)
    } )
  output$AGA055 <- downloadHandler(
    filename = function() {
      paste("AGA055-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(AGA055, file)
    } )
  output$AGA059 <- downloadHandler(
    filename = function() {
      paste("AGA059-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(AGA059, file)
    } )
  output$AGA060 <- downloadHandler(
    filename = function() {
      paste("AGA060-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(AGA060, file )
    } )
  output$AGA061 <- downloadHandler(
    filename = function() {
      paste("AGA061-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(AGA061, file)
    } )
  output$DIF010 <- downloadHandler(
    filename = function() {
      paste("DIF010-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(DIF010, file )
    } )
  output$DIF018 <- downloadHandler(
    filename = function() {
      paste("DIF018-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(DIF018, file)
    } )
  output$DIF044 <- downloadHandler(
    filename = function() {
      paste("DIF044-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(DIF044, file)
    } )
  output$DIF059 <- downloadHandler(
    filename = function() {
      paste("DIF059-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(DIF059, file)
    } )
  output$NIA029 <- downloadHandler(
    filename = function() {
      paste("NIA029-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(NIA029, file)
    } )
  output$TILL006 <- downloadHandler(
    filename = function() {
      paste("TILL006-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(TILL006, file)
    } )
  output$TILL007 <- downloadHandler(
    filename = function() {
      paste("TILL007-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(TILL007, file)
    } )
  output$TILL009 <- downloadHandler(
    filename = function() {
      paste("TILL009-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(TILL009, file)
    } )
  output$DIF040 <- downloadHandler(
    filename = function() {
      paste("DIF040-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(DIF040, file)
    } )
  output$DIF048 <- downloadHandler(
    filename = function() {
      paste("DIF048-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(DIF048, file)
    } )
  output$DIF045 <- downloadHandler(
    filename = function() {
      paste("DIF045-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(DIF045, file)
    } )
  output$AGA062 <- downloadHandler(
    filename = function() {
      paste("AGA062-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(AGA062, file)
    } )
  output$AGA031 <- downloadHandler(
    filename = function() {
      paste("AGA031-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(AGA031, file)
    } )
  output$DIF038 <- downloadHandler(
    filename = function() {
      paste("DIF038-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(DIF038, file)
    } )
  output$CFWNM2 <- downloadHandler(
    filename = function() {
      paste("CFWNamlewaMada2-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(CFWNM2, file)
    } )
  output$TIL016 <- downloadHandler(
    filename = function() {
      paste("TIL016-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(TIl016, file)
    } )
  output$AGA066 <- downloadHandler(
    filename = function() {
      paste("AGA066-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(AGA066, file)
    } )
  output$DIF050 <- downloadHandler(
    filename = function() {
      paste("DIF050-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(DIF050, file)
    } )
  output$AGA063 <- downloadHandler(
    filename = function() {
      paste("AGA063-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(AGA063, file)
    } )
  output$TIL018 <- downloadHandler(
    filename = function() {
      paste("TIL018-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(TIL018, file)
    } )
  output$TIL010 <- downloadHandler(
    filename = function() {
      paste("TIL010-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(TIL010, file)
    } )
  output$TIL004 <- downloadHandler(
    filename = function() {
      paste("TIL004-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(TIL004, file)
    } )
  output$AtelierLeader <- downloadHandler(
    filename = function() {
      paste("AtelierLeader-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(AtelierLeader, file)
    } )
  output$DIF055 <- downloadHandler(
    filename = function() {
      paste("DIF055-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(DIF055, file)
    } )
  output$AGA052 <- downloadHandler(
    filename = function() {
      paste("AGA052-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(AGA052, file)
    } ) 
 output$TILL023 <- downloadHandler(
    filename = function() {
      paste("TILL023-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(TILL023, file)
    } )
 output$DIF094 <- downloadHandler(
    filename = function() {
      paste("DIF094-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(DIF094, file)
    } )  
 output$TILL025 <- downloadHandler(
    filename = function() {
      paste("TILL025-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(TILL025, file)
    } )  
 output$TILL026 <- downloadHandler(
    filename = function() {
      paste("TILL026-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(TILL026, file)
    } )  
  output$TIL014 <- downloadHandler(
    filename = function() {
      paste("TIL014-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(TIL014, file)
    } ) 
     output$DIF100 <- downloadHandler(
    filename = function() {
      paste("DIF100-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(DIF100, file)
    } ) 
     output$AGA074 <- downloadHandler(
    filename = function() {
      paste("AGA074-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(AGA074, file)
    } ) 
     output$DIF105 <- downloadHandler(
    filename = function() {
      paste("DIF105-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(DIF105, file)
    } ) 
     output$DIF130 <- downloadHandler(
    filename = function() {
      paste("DIF130-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(DIF130, file)
    } ) 
     output$TIL027 <- downloadHandler(
    filename = function() {
      paste("TIL027-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(TIL027, file)
    } ) 
     output$AGA067 <- downloadHandler(
    filename = function() {
      paste("AGA067-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(AGA067, file)
    } ) 
     output$DIF138 <- downloadHandler(
    filename = function() {
      paste("DIF138-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(DIF138, file)
    } ) 
     output$AGA072 <- downloadHandler(
    filename = function() {
      paste("AGA072-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(AGA072, file)
    } ) 
     output$TIL039 <- downloadHandler(
    filename = function() {
      paste("TIL039-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(TIL039, file)
    } ) 
    output$AGA086 <- downloadHandler(
    filename = function() {
      paste("AGA086-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(AGA086, file)
    } ) 
  output$AGA083 <- downloadHandler(
    filename = function() {
      paste("AGA083-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(AGA083, file)
    } ) 
  output$DIF140 <- downloadHandler(
    filename = function() {
      paste("DIF140-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(DIF140, file)
    } ) 
  output$AGA085 <- downloadHandler(
    filename = function() {
      paste("AGA085-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(AGA085, file)
    } )    
  output$TIL035 <- downloadHandler(
    filename = function() {
      paste("TIL035-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(TIL035, file)
    } )   
  output$TIL037 <- downloadHandler(
    filename = function() {
      paste("TIL037-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(TIL037, file)
    } )   
  output$DIF107 <- downloadHandler(
    filename = function() {
      paste("DIF107-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(DIF107, file)
    } )   
  output$DIF145 <- downloadHandler(
    filename = function() {
      paste("DIF145-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(DIF145, file)
    } )   
  output$AGA077 <- downloadHandler(
    filename = function() {
      paste("AGA077-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(AGA077, file)
    } )  
  output$DIF108 <- downloadHandler(
    filename = function() {
      paste("DIF108-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(DIF108, file)
    } )  
   output$DIF123 <- downloadHandler(
    filename = function() {
      paste("DIF123-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(DIF123, file)
    } ) 
  output$DIF125 <- downloadHandler(
    filename = function() {
      paste("DIF125-", date, ".xlsx")
    },
    content = function(file) {
      write.xlsx(DIF125, file)
    } )     
       
    
  output$total <-  renderText({
    paste0(nrow(NCCIcomplete)) 
  })
  output$male<-renderText({paste0(sum(NCCIcomplete$Q8 == "M"))})
  output$female<-renderText({paste0(sum(NCCIcomplete$Q8 == "F"))})
}
ui<-pageWithSidebar(
  
  # Application title
  headerPanel("NCCI Hotline"),
  
  # Sidebar with controls to select the variable 
  
  sidebarPanel(
    selectInput("variable", "Survey Questions:",
                list("1. Dans quelle langue vous sentez-vous le plus à l’aise pour communiquer?" = "Language", 
                     "2. Dans quelle région habitez-vous actuellement ?" = "Region", 
                     "3. Indiquez si l’appelant est un homme ou une femme" = "Gender",
                     "4. A quel groupe ethnique appartenez-vous?" = "Ethnicity",
                     "5. Age" = "Age.Group",
                     "6. Avez-vous participé, organisé, ou vous sentez vous concerné en tant que membre de la communauté par le concours scolaire pour la cohésion 
                     sociale?"="Participation",
                     "7.  La sélection des bénéficiaires pour la participation dans ce projet a été:"="Selection.Beneficiaries",
                     "8. Comment avez-vous entendu parler de la ligne téléphonique/hotline?"="Comment.Entendu",
                     "9. Selon vous, cette activité regroupé les communautés"="RegroupeParticipants",
                     "10. Êtes-vous resté en contact"="ResteEnContact",
                     "11. Comment êtes-vous resté en contact"="CommentContact"
                
                )), 
     selectInput("variable2", "Compare:",
                list("1. All Respondents" = "AllRespondents", 
                     "2. Language" = "Language", 
                     "3. Region" = "Region", 
                     "4. Gender" = "Gender",
                     "5. Ethnicity" = "Ethnicity",
                     "6. Age" = "Age.Group",
                     "7. Type of Participation"="Participation",
                     "8. Selection Fairness"="Selection.Beneficiaries"
                     
                )), 
    
    
    downloadButton('downloadData', 'Download data')
  ),
  
  # Main panel with plot, table and links to surveys; when updating, add new tables to bottom of list
  mainPanel(
    h3(textOutput("caption")),
    tabsetPanel(type="tabs",
                tabPanel("Chart", plotOutput("SubPlot"),
                         h4("Summary"),
                         paste0("Respondents: ", nrow(NCCIcomplete)), tags$br(),
                         paste0("Men: ", nrow(filter(NCCIcomplete, Gender=="M")),",  (" , signif(nrow(filter(NCCIcomplete, Gender=="M"))/nrow(NCCIcomplete),digits = 4)*100,"%)"),tags$br(),
                         paste0("Women: ", nrow(filter(NCCIcomplete, Gender=="F")),",  (" , signif(nrow(filter(NCCIcomplete, Gender=="F"))/nrow(NCCIcomplete),digits = 4)*100,"%)")
                         , tags$br(),
                         paste0("Updated: ", date,"UTC") 
                         
                         ),
                
        
              
                
                             
                
                tabPanel("Table", DT::dataTableOutput("table")),
                tabPanel("Full Surveys", 
                         downloadLink("AGA041", "AGA041"),br(),
                         downloadLink("AGA045", "AGA045"),br(),
                         downloadLink("AGA046", "AGA046"),br(),
                         downloadLink("AGA051", "AGA051"),br(),
                         downloadLink("AGA055", "AGA055"),br(),
                         downloadLink("AGA059", "AGA059"),br(),
                         downloadLink("AGA060", "AGA060"),br(),
                         downloadLink("AGA061", "AGA061"),br(),
                         downloadLink("DIF010", "DIF010"),br(),
                         downloadLink("DIF018", "DIF018"),br(),
                         downloadLink("DIF044", "DIF044"),br(),
                         downloadLink("DIF059", "DIF059"),br(),
                         downloadLink("NIA029", "NIA029"),br(),
                         downloadLink("TILL006", "TILL006"),br(),
                         downloadLink("TILL007", "TILL007"),br(),
                         downloadLink("TILL009", "TILL009"),br(),
                         downloadLink("DIF040", "DIF040"),br(),
                         downloadLink("DIF048", "DIF048"),br(),
                        downloadLink("DIF045", "DIF045"),br(),
                        downloadLink("AGA062", "AGA062"),br(),
                        downloadLink("AGA031", "AGA031"),br(),
                        downloadLink("DIF038", "DIF038"),br(),
                        downloadLink("CFWNM2", "CFWNM2"),br(),
                        downloadLink("TIL016", "TIL016"),br(),
                        downloadLink("AGA066", "AGA066"),br(),
                        downloadLink("DIF050", "DIF050"),br(),
                        downloadLink("AGA063", "AGA063"),br(),
                        downloadLink("TIL018", "TIL018"),br(),
                        downloadLink("TIL010", "TIL010"),br(), 
                        downloadLink("TIL004", "TIL004"),br(),
                        downloadLink("AtelierLeader", "AtelierLeader"),br(),
                        downloadLink("DIF055", "DIF055"),br(),
                        downloadLink("AGA052", "AGA052"),br(), 
                        downloadLink("TILL023", "TILL023"),br(),
                        downloadLink("DIF094", "DIF094"),br(),
                        downloadLink("TILL025", "TILL025"),br(),
                        downloadLink("TILL026", "TILL026"),br(),
                        downloadLink("TIL014", "TIL014"),br(),
                        downloadLink("DIF100", "DIF100"),br(),
                        downloadLink("AGA074", "AGA074"),br(),
                        downloadLink("DIF105", "DIF105"),br(),
                        downloadLink("DIF130", "DIF130"),br(),
                        downloadLink("TIL027", "TIL027"),br(),
                        downloadLink("AGA067", "AGA067"),br(),
                        downloadLink("DIF138", "DIF138"),br(),
                        downloadLink("AGA072", "AGA072"), br(),
                        downloadLink("TIL039", "TIL039"),br(),
                         downloadLink("AGA086", "AGA086"),br(),
                         downloadLink("AGA083", "AGA083"),br(),
                         downloadLink("DIF140", "DIF140"),br(),
                         downloadLink("AGA085", "AGA085"), br(),
                          downloadLink("TIL035", "TIL035"),br(),
                         downloadLink("TIL037", "TIL037"),br(),
                         downloadLink("DIF107", "DIF107"),br(),
                         downloadLink("DIF145", "DIF145"),br(),
                         downloadLink("AGA077", "AGA077"),br(),
                         downloadLink("DIF108", "DIF108"),br(),
                         downloadLink("DIF123", "DIF123"),br(),
                         downloadLink("DIF125", "DIF125")
                      
                        
                        )
    )
  ))

shinyApp(ui = ui, server = server)

 
