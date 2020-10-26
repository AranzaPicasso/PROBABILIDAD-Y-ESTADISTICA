
#EXAMEN DE PROBABILIDAD Y ESTADÍSTICA: UNIDAD 1


#explorar la matriz de datos millas

millas<-datos::millas

#1.- Explora la matriz de datos millas 
#valor: 5 puntos por comando correcto.

?millas

dim(millas)

names(millas)

str(millas)

anyNA(millas)

typeof(millas)

View(millas)

millas_1<-data.frame(millas) #nuevo data frame: millas_1

#2.- Determina las medidas estadísticas descriptivas
#y de variablidad
#Importante: no calcules los errores.
#Valor: 5 puntos por comando correcto.

summary(millas_1) 

#La diferencia de los datos (unos traen más y otros traen menos) se debe a
#la diferencia de variables (cualitativas y cuantitativas,depende de cómo lo
#determine el programa :)

library(modeest)


#no tuve que descargar el paquete "modeest" de nuevo
#por que ya lo reconocía


#moda de cada variable (son once variables en total)

mfv(millas_1$fabricante)
mfv(millas_1$modelo)
mfv(millas_1$cilindrada)
mfv(millas_1$anio)
mfv(millas_1$cilindros)
mfv(millas_1$transmision)
mfv(millas_1$traccion)
mfv(millas_1$ciudad)
mfv(millas_1$autopista)
mfv(millas_1$combustible)
mfv(millas_1$clase)

#VARIANZA (solo sacar las cuantitativas) /son cINCO /cilindrada,anio,cilindros,autopista,ciudad


var(millas_1$cilindrada)
var(millas_1$anio)
var(millas_1$cilindros)
var(millas_1$autopista)
var(millas_1$ciudad)

#DESVIACIÓN STANDAR / con los mismos datos cuantitativos

sd(millas_1$cilindrada)
sd(millas_1$anio)
sd(millas_1$cilindros)
sd(millas_1$autopista)
sd(millas_1$ciudad)

#coeficiente de variación (tuve que volver a instalar el paquete por que no me aparecía)

install.packages("FinCal")
library(FinCal)

coefficient.variation(sd=sd(millas_1$cilindrada),
                      avg=mean(millas_1$cilindrada))

coefficient.variation(sd=sd(millas_1$anio),
                      avg=mean(millas_1$anio))

coefficient.variation(sd=sd(millas_1$cilindros),
                      avg=mean(millas_1$cilindros))

coefficient.variation(sd=sd(millas_1$autopista),
                      avg=mean(millas_1$autopista))

coefficient.variation(sd=sd(millas_1$ciudad),
                      avg=mean(millas_1$ciudad))

#3.- Construye:

#A) Un gráfico de dispersión con las variables cilindrada y autopista
#el color lo indica la variable clase. 
#Valor Total: 20 puntos
#(10 puntos por comando activado correcto).
#(10 punto por la generación del gráfico).

#activar los paquetes para que salgan los colores

library(tidyverse)
library(RColorBrewer)

#DIAGRAMA DE DISPERSIÓN 

dispersion_diagrama<-ggplot(millas_1,aes(x=cilindrada,y=autopista,color= clase))+
  geom_point()

dispersion_diagrama  

#B)
#Un gráfico boxplot con las variables transmisión y ciudad
#El color lo indica la variable transmisión    
#El título del gráfico es Transmisión de autos en ciudad
#Coloca la etiqueta "Transmisión" en el eje x 
#Coloca la etiqueta "Ciudad" en el eje y 
#Valor Total: 20 puntos
#(10 puntos por comando activado correcto).
#(10 punto por la generación del gráfico del gráfico).

#DIAGRAMA DE CAJA (BOXPLOT)

boxplot_uwu<-ggplot(millas_1,aes(factor(transmision), 
                             ciudad, fill=transmision))+
  geom_boxplot()+
  ggtitle("Transmisión de autos en ciudad")+
  xlab("Transmisión")+
  ylab("ciudad")

boxplot_uwu

#C) Un gráfico de barras para la variable "cilindros" 
#Valor Total: 20 puntos
#(10 puntos por comando activado correcto).
#(10 punto por la generación del gráfico).

#GRAFICO DE BARRAS

attach(millas_1)
tabla_cilindros<-table(millas_1$cilindros)

tabla_cilindros
color=c("mediumslateblue","slateblue4","mediumpurple1","slateblue3")

#COMO SON CUATRO VARIABLES TENEMOS QUE OCUPAR CUATRO COLORES 
#(ELEGÍ LOS QUE MÁS ME GUSTARON DE LA GAMA COLOR LAVANDA/AZUL-MORADO)

barplot(tabla_cilindros,xlab="Cilindros", ylab="Frecuencia", 
        main="Gráfico de Barras de Cilindros", col=color)
