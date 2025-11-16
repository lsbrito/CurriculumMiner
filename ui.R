

fluidPage(
  theme = shinytheme("flatly"),  # Aqui você aplica o tema
  titlePanel("CurriculumMiner – Análise de Disciplinas"),
  sidebarLayout(
    sidebarPanel(
      selectInput("grafico", "Escolha o tipo de gráfico:",
                  choices = c("Disciplinas mais recorrentes", "Distribuição por eixo curricular", "Carga horária por instituição")),
      checkboxInput("mostrar_tabela", "Mostrar tabela detalhada", value = TRUE)
    ),
    mainPanel(
      plotlyOutput("graficoPlot"),
      DTOutput("tabela")
    )
  )
)
