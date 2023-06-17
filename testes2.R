for (i in seq(1:12)) {
  print(i)
}

j <- 1
while (j <= 20) {
  print(j)
  j = j+1
}


x=-2
if (x > 0) {
  print("Número positivo")
}else if (x < 0) {
  print("Número negativo")
}else {
  print("Neutro")
}

par.impar <- function(num){
  if((num %% 2) == 0){
    return("Par")
  }else{
    return("impar")
  }
}

x = 456
par.impar(x)

m <- matrix(seq(1:9), nrow = 3)
resultado <- apply(m, 1, sum) # 1 - por linha 2- por coluna apply é aplicada a vetores
#mapply é aplicada a vetores e listas
numeros.pares <- c(2,4,6,8,12)
numeros.impares <- c(1,3,5,7,9,11)
#adicionando os vetores acima à uma lista
numeros <- list(numeros.impares,numeros.pares) #lista de vetores
lapply(numeros, mean) #media de cada vetor
sapply(numeros, mean) #media de cada vetor


# gerando gráficos
?mtcars

carros <- mtcars[,c(1,2,9)] #apenas 3 colunas foram importadas
hist(carros$mpg) #histograma
plot(carros$mpg,carros$cyl)

library(ggplot2)
ggplot(carros, aes(am)) +
  geom_bar()
