#Juntando dois conjuntos de dados usando o pacote deplyr
install.packages("dplyr")
library(dplyr)

install.packages("tidyr") #Transformção de dados
library(tidyr)

#df1 <- data.frame(Produto = c(1,2,3,5), Preco = c(15,10,25,20)) #Código e preço
#head(df1) #imprime as tabelas 
#df1 #imprime as tabelas (também?)

#df2 <- data.frame(Produto = c(1,2,3,4), Nome = c("A","B","C","D")) #Código e número
#head(df2)

#df3 <- left_join(df1,df2,"Produto") #adiciona à tabela da esquerda os dados da tabela da direita - Produto deve existir em ambas
#df3
#df4 <- right_join(df1,df2, "Produto") #adiciona à tabela da direita os dados da tabela da esquerda - Produto deve existir em ambas
#head(df4)
#df5 <- inner_join(df1,df2,"Produto") #une os dois data frames com em Produto, somente se todos sos dados estiverem completos
#df5

#iris #dados que já vem incluídos na linguagem
#?iris

#glimpse(iris) #informações sobre o dataset
#filtrando as linhas que possuem a classificação versicolor na coluna species
#versicolor <- filter(iris, Species == "versicolor")
#dim(versicolor) #retorna a quantidade de linhas e colunas
#slice(iris, 5:10) #filtra das linhas 5 a 10
#select(iris, 2:4) #filtra colunas de 2 a 4
#select(iris, -Sepal.Width) #remove a coluna Sepal.Width da seleção

#Operações com colunas
#iris2 <- mutate(iris, nova.coluna = Sepal.Length + Sepal.Width)
#iris2[,c("Sepal.Length", "Sepal.Width", "nova.coluna")] #exibe os dados utilizados acima

#Ordenar por uma coluna 
#select(iris, Sepal.Length) %>% #Seleciona uma coluna e depois ordena essa coluna
#  arrange(Sepal.Length)

# Agrupando os dados - Tamanho médio da sépala por espécie
#iris %>% group_by(Species) %>% #agrupa por species
#  summarise(mean(Sepal.Length)) #calcula a média do tamanho da sépala

#Quantidade de vendas por ano e produto
#Dataframe - Quantidade de Produtos por Ano
dfDate <- data.frame(Produto = c('A','B','C'),
                     A.2015 = c(10,12,20),
                     A.2016 = c(20,25,35),
                     A.2017 = c(15,20,30)
)

head(dfDate)

dfDate2 <- gather(dfDate, "Ano", "Quantidade", 2:4) #Cria um novo dataframe para receber os dados, alterando a posição de linhas e colunas e indicando as colunas que deve sr transformadas
head(dfDate2)


#Limpeza dos valores repetidos de dfDate2

dfDate3 <- separate(dfDate2, Ano, c("A", "Ano")) #Coluna que se deseja tratar e colunas que serão geradas no novo dataframe
dfDate3 <- dfDate3[-2] #Deleta coluna que não será utilizada
dfDate3

dfDate3$Mes <- c("01", "02", "03") #Adiciona a coluna Mes
dfDate3

#Concatenando as colunas Mes e Aneo
dfDate4 <- dfDate3 %>% unite(Data, Mes, Ano, sep = '/') #nova coluna Data, oriunda da junção de Mes e Ano com separador "/"
dfDate4
