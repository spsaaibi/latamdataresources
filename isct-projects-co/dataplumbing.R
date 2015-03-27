## ----- Create tidy data sources ----- ##

# load packages
library(devtools)
# install_github('hadley/readxl')
library(readxl)
suppressMessages(library("dplyr"))
library(ggplot2)


## 1. R&D Projects 2015
## DESC: Contiene información de los proyectos de investigación e innovación registrados en el Sistema de Gestión de Proyectos - SIGP de Colciencias y han sido evaluados por pares evaluadores y paneles de expertos y aprobados por Colciencias.
## http://datosabiertoscolombia.cloudapp.net/frm/catalogo/frmCatalogo.aspx?dsId=62181
## Fix: Line 631 has a formatting error. Correcting this error and re-saving as .xslx

data1 <- read_excel(path = "Departamento_Administrativo_De_Ciencia_Tecnologia_E_Innovacion.consultaproyectosfinanciados20092014.xlsx")

write.csv(data1, file = "isct-funded-projects-co.csv",row.names=FALSE)

data2 <- read_excel(path = "Colciencias.datosgeneralesgruposinv.xlsx")

write.csv(data2, file = "isct-research-groups-co.csv",row.names=FALSE)




