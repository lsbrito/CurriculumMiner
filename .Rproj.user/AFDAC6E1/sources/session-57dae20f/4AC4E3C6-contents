# global.R
library(shiny)
library(shinythemes)
library(tidyverse)
library(DT)
library(plotly)
# 
# # Função para padronizar nomes de disciplinas
# padronizar_disciplina <- function(nome) {
#   nome <- str_to_lower(nome)
#   case_when(
#     str_detect(nome, "aprendizado de máquina|aprendizagem de máquina") ~ "Aprendizado de Máquina",
#     str_detect(nome, "deep learning|aprendizado profundo") ~ "Deep Learning",
#     str_detect(nome, "visão computacional") ~ "Visão Computacional",
#     str_detect(nome, "processamento de linguagem") ~ "Processamento de Linguagem Natural",
#     str_detect(nome, "inteligência artificial") ~ "Inteligência Artificial",
#     str_detect(nome, "estrutura de dados|algoritmos") ~ "Algoritmos e Estrutura de Dados",
#     str_detect(nome, "cálculo") ~ "Cálculo",
#     str_detect(nome, "álgebra linear") ~ "Álgebra Linear",
#     str_detect(nome, "ciência de dados") ~ "Ciência de Dados",
#     TRUE ~ str_to_title(nome)
#   )
# }

# Função neutra: mantém os nomes como estão, apenas capitaliza
padronizar_disciplina <- function(nome) {
  str_to_title(nome)
}