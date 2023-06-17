#Instalando o pacote ggplot2
#install.packages("ggplot2")

#Carregando o pacote ggplot2
#library(ggplot2)

# ggplot 2 é um pacote de visualização de dados - utilizado para a criação de gráficos
#?ggplot2

#Vetores
cidades <- c("Brasilia", "Rio de Janeiro", "Sao Paulo", "Curitiba", "Macapa")
#print(cidades)
temperaturas <- c(20, 37, 13, 4, 41)
#print(temperaturas)
regioes <- c(3, 4, 4, 5, 1)
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
estados <- factor(c("DF", "RJ", "SP", "PR", "AP"))
#print(estados)

#grau.instrucao <- factor(c("Medio", "Fundamental", "Superior"), 
#                         levels = c("Fundamental", "Medio", "Superior"),
#                         ordered = TRUE)
#grau.instrucao

#Adicionando uma lista. Esse e um "tipo de vetor" que aceita valores de diferentes tipos
#pessoa <- list(sexo="M", cidade="Macapa", idade=40)
#Alterando valor de um item da lista
#pessoa[2] <- "Guarulhos"
#pessoa[2]
#pessoa[["cidade"]] <- "Rio de Janeiro"
#pessoa[["cidade"]]
#Excluindo valor de um item da lista, ele na sera mostrado quando consultado
#pessoa[1] <- NULL
#pessoa
#Filtrando informacao para mostrar apenas a idade
#pessoa[c("idade")] #as outras informacoes nao foram apagadas

#criando uma lista de listas
lista.cidades <- list(cidade = cidades, estado = estados, temperatura = temperaturas)
#lista.cidades

#Data frame - Uma "tabela" que aceita diferentes tipos de dados
df  <- data.frame(cidades,temperaturas)
df

df2 <- data.frame(lista.cidades)
df2

#filtrando o data frame (obtendo o valor de uma celula) linha, coluna
df[1,2]
#filtrandouma linha
df2[3,]
#filtrando intervalos
df2[c(1:3),c(1:3)]
#obtendo infoormacoes do data frame
dim(df2)
str(df2)
names(df2)
#recuperando uma coluna
df2$cidade
