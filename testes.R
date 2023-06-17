#Instalando um novo pacote

##Instalando o pacote ggplot2
install.packages("ggplot2")

#Carregando o pacote ggplot2
#library(ggplot2)

# ggplot 2 é um pacote de visualização de dados - utilizado para a criação de gráficos
#?ggplot2

#Vetores
#cidades <- c("Brasilia", "Rio de Janeiro", "Sao Paulo", "Curitiba", "Macapa")
#print(cidades)
#temperaturas <- c(20, 37, 13, 4, 41)
#print(temperaturas)
#regioes <- c(3, 4, 4, 5, 1)
#print(regioes)
#cidade <- cidades[3]
#print(cidade)
#excluir a temperatura 4 graus, quarta posicao
#temperaturas <- c(temperaturas[-4])
#temperatura <- temperaturas[2:4]
#print(temperatura)
#temperaturas[4] <- 4
#temperaturas[5] <- 41
#temperaturas <- NULL
#estados <- factor(c("DF", "RJ", "SP", "PR", "AP"))
#print(estados)
grau.instrucao <- factor(c("Medio", "Fundamental", "Superior"), 
                         levels = c("Fundamental", "Medio", "Superior"),
                         ordered = TRUE)
grau.instrucao
