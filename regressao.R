#Atenção: Alterar Diretório
setwd("C:/...")
options(scipen=999)

#Leitura da Base de Dados
df <- read.csv("df.csv")

#Verificar variáveis
names(df)

# Matriz de Gráfico de Dispersão
#Matriz de Scatter Plot
library(GGally)
ggpairs(Imobiliario, title="correlogram with ggpairs()") 

#Regressão Linear Múltipla
#Modelo de Regressão Linear Múltipla
regressao <- lm(data=df,
                preco ~ 
                  quartos+area+zona+tipo)
summary(regressao)
