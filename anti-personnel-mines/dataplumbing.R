## ----- Create tidy data sources ----- ##

# load packages
library(devtools)
# install_github('hadley/readxl')
library(readxl)
suppressMessages(library("dplyr"))
library(ggplot2)


## 2. Humanitarian Mine Sweeping
## DESC: Reporte de los resultados de las operaciones de desminado humanitario que se han realizado en el país desde 2005 al mes anterior de la fecha de corte
## http://datosabiertoscolombia.cloudapp.net/frm/catalogo/frmCatalogo.aspx?dsId=62235
## Fix: Re-saving as .xslx
data2 <- read_excel(path = "Departamento_Administrativo_de_la_Presidencia.situaciondesminadohumanitario.xlsx")

write.csv(data2, file = "anti-personnel-mines.csv",row.names=FALSE)
