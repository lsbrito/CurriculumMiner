# server.R
function(input, output, session) {
  dados <- reactive({
    read_csv2("disciplinas.csv", locale = locale(encoding = "UTF-8"))
  })
  
  output$graficoPlot <- renderPlotly({
    df <- dados()
    
    if (input$grafico == "Disciplinas mais recorrentes") {
      plot_data <- df %>%
        count(Disciplina, sort = TRUE) %>%
        top_n(20)
      
      plot_ly(plot_data, x = ~n, y = ~Disciplina, type = "bar", orientation = "h") %>%
        layout(title = "Disciplinas mais recorrentes", 
               xaxis = list(title = "Frequência"), 
               yaxis = list(title = "Disciplina"))
      
    } else if (input$grafico == "Distribuição por eixo curricular") {
      plot_data <- df %>%
        count(`Eixo Curricular`) %>%
        plot_ly(labels = ~`Eixo Curricular`, values = ~n, type = "pie") %>%
        layout(title = "Distribuição por Eixo Curricular")
      
    } else if (input$grafico == "Carga horária por instituição") {
      plot_data <- df %>%
        mutate(Horas = parse_number(`Carga Horária`)) %>%
        group_by(`Curso/Instituição`) %>%
        summarise(TotalHoras = sum(Horas, na.rm = TRUE)) %>%
        arrange(desc(TotalHoras))
      
      plot_ly(plot_data, x = ~`Curso/Instituição`, y = ~TotalHoras, type = "bar") %>%
        layout(title = "Carga Horária por Instituição", 
               xaxis = list(title = ""), 
               yaxis = list(title = "Horas"))
    }
  })
  
  output$tabela <- renderDT({
    req(input$mostrar_tabela)
    dados()
  })
}
