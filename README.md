# 📘 CurriculumMiner

**CurriculumMiner** é uma aplicação interativa desenvolvida em **R + Shiny** para análise de disciplinas em currículos acadêmicos.  
A ferramenta permite explorar dados de cursos e instituições a partir de um arquivo `.csv`, oferecendo visualizações dinâmicas e tabelas detalhadas para apoiar estudos de estrutura curricular.


---

## ✨ Objetivo

O CurriculumMiner foi criado para apoiar análises de currículos acadêmicos, permitindo identificar padrões,
recorrências e distribuição de disciplinas em diferentes cursos e instituições. É uma ferramenta útil para pesquisadores,
coordenadores de curso e profissionais interessados em engenharia curricular.

---

## 🚀 Funcionalidades

- Importação de dados via arquivo `disciplinas.csv` (UTF-8, separado por `;`)
- Visualização das **disciplinas mais recorrentes** em gráficos de barras
- Distribuição de disciplinas por **eixo curricular** em gráficos de pizza
- Análise da **carga horária total por instituição** em gráficos de barras
- Exibição de tabela detalhada com todas as disciplinas
- Interface interativa com tema moderno (*Flatly*)

---

## 📊 Exemplo de uso

- Disciplinas mais recorrentes → gráfico de barras horizontal com as 20 disciplinas mais frequentes.

- Distribuição por eixo curricular → gráfico de pizza mostrando a proporção de cada eixo.

- Carga horária por instituição → gráfico de barras com a soma das horas por curso/instituição.

- Tabela detalhada → visualização completa dos dados importados.

---

## 🛠️ Tecnologias utilizadas

- [R](https://www.r-project.org/)
- [Shiny](https://shiny.posit.co/)
- Pacotes:  
  - `tidyverse` (manipulação de dados)  
  - `plotly` (gráficos interativos)  
  - `DT` (tabelas dinâmicas)  
  - `shinythemes` (temas visuais)

---

## 📥 Como instalar e rodar

1. Clone o repositório:
   ```bash
   git clone https://github.com/lsbrito/CurriculumMiner.git

```text
   CurriculumMiner/
├── ui.R               # Interface do usuário (layout e inputs)
├── server.R           # Lógica de cálculo e renderização dos gráficos/tabelas
├── global.R           # Carregamento de pacotes e funções auxiliares
├── CurriculumMiner.Rproj
├── .gitignore
└── disciplinas.csv    # Base de dados de exemplo (entrada principal)

