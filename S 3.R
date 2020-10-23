

install.packages("datos")
library(datos)

flores<-(datos::flores)

?flores #ayuda

dim(flores) #dimesión

names(flores) #nombre de las variables

str(flores) #tipos de variables

anyNA(flores) #indica los datos perdidos:solo sale respuesta en True o False

typeof(flores) #tipo de matriz de datos

View(flores) #visualización de la tabla (data frame)


#convertimos la matriz de datos en data frame: 
#l orden: vector,lista,matriz,data frame,factor

flores_1<-as.data.frame(flores)

#iniciamos calculando los estadísticos descriptivos 

summary(flores_1)

#calculamos la moda, primero debemos instalar el paquete modeest y abrir
#la libreria 

install.packages("modeest")

library(modeest)

#la función que utilizamos para identificar la moda es mfv()
#el signo de pesos es para posicionarse en una columna

mfv(flores_1$Largo.Sepalo)
mfv(flores_1$Ancho.Sepalo)
mfv(flores_1$Largo.Petalo) #¿Qué se observa?
mfv(flores_1$Ancho.Petalo)
mfv(flores_1$Especies) #¿Qué observas? 

#calculamos la varianza de cada una de las variables cuntitativas
# var() es el comando para hacerlo

var(flores_1$Largo.Sepalo)
var(flores_1$Ancho.Sepalo)
var(flores_1$Largo.Petalo)
var(flores_1$Ancho.Petalo)

#calcularemos la desviación standar para cada una de las variables cuantitativas

sd(flores_1$Largo.Sepalo)
sd(flores_1$Ancho.Sepalo)
sd(flores_1$Largo.Petalo)
sd(flores_1$Ancho.Petalo)

#calculamos el error para la variable largo del sepalo 

mean_1<-mean(flores_1$Largo.Sepalo)
error_1<-(flores_1$Largo.Sepalo-(mean_1))

#visualizamos el objeto error_1 

error_1

#coeficiente de variación
#vamos a instalar el paquete FinCal y aprimos la librería
install.packages("FinCal")
library(FinCal)

#calculamos el coeficiente de variación 
coefficient.variation(sd = sd(flores_1$Largo.Sepalo),
                      avg = mean(flores_1$Largo.Sepalo))

#interpretación: el largo del sépalo de las 3 especies tiene un 
#coeficiente de variación de 0.14,lo multiplicamos por 100 y obtenemos
#el 14%, es decir, la variable largo del sépalo tiene un coeficiente de
#variación de 14% con respecto a la media. 


#---------------empezamos a contruir algunos gráficos---------

#instalamos el paquete tidyverse y abriremos la libreria 
install.packages("tidyverse")
install.packages("RColorBrewer")

#abrimos las librerías 

library(tidyverse)
library(RColorBrewer)

#grafico de barras 

#construcción de la tabla con la que vamos a trabajar 

attach(flores_1)
tabla_especies<-table(flores_1$Especies)

#visualizamos la variable x que contiene la columna de especies 
tabla_especies

#especificamos la paleta de colores que vamos a utilizar 
color=c("darkseagreen","lightpink","mediumpurple1")

#construimos el gráfico de la variable X
barplot(tabla_especies,xlab = "Especies",ylab = "Frecuencias",
        main = "Gráfico de barras de Especies", col = color)

#BOXPLOT

boxplot<-ggplot(flores_1,aes(factor(Especies),
                             Largo.Sepalo, fill=Especies))+
  geom_boxplot()+
  ggtitle("Boxplot del largo del sepalo")+
  xlab("Especies")+
  ylab("Largo.Sepalo")

#visualisamos el gráfico

boxplot

#DIAGRAMA DE DISPERSIÓN 1 
dispersion_1<-ggplot(flores_1,aes(x=Largo.Petalo, y=Largo.Sepalo, color=Especies))+
  geom_point()

#visualizamos el gráfico 
dispersion_1

#Diagrama de dispersion 2 
attach(flores)
par(mfrow=c(1,1)) #volver a definir una ventana normal 
dispersion_2<-plot(flores$Largo.Petalo,flores$Ancho.Petalo,pch=19,
                   col="purple",
                   xlab = "Largo de pétalo",
                   ylab="Ancho del pétalo")

#DIAGRAMA DE DISPERSION 3 
dispersion_3<-ggplot(flores, aes(x=flores$Largo.Sepalo, y=flores$Ancho.Sepalo,
                                colour=Especies))+
  geom_point(alpha=.9)+
  xlab("largo del sépalo")+
  ylab("ancho del sépalo")

#VISUALIZAMOS EL GRÁFICO
dispersion_3

#DIAGRAMA DE DISPERSIÓN MÚLTIPLE
pairs(flores[,1:4],pch=19,
      col=c("blue","green","orange")[flores[,5]])

#HISTOGRAMA 1, VISUALIZANDO LA VARIABLE LARGO DEL PÉTALO

ggplot(flores,aes(x=Largo.Petalo))+
  geom_histogram(binwidth = 0.1,col="black",fill="green",alpha=0.4)+
  xlab("Largo del pétalo")+
  ylab("Frecuencia")+
  ggtitle("Histograma del largo del pétalo")
  
#HISTOGRAMA 2 
par(mfrow=c(1,3))

hist(flores[1:50,3],main="Largo del pétalo (setosa)",
     xlab="",ylab ="Frecuencias",col="red",breaks="Sturges")+
  
hist(flores[51:100,3],main = "Largo del pétalo (versicolor)",
     xlab = "", ylab = "Frecuencias",col = "blue",breaks = "Sturges")

hist(flores[101:150,3],main="Largo de pétalo(virginica)",
     xlab="",ylab="Frecuencias",col="green",breaks="Sturges")

