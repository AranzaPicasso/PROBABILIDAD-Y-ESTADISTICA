
#tema: tabla de frecuencias

#1: leer la matriz de datos 
data("iris")

#2: exploramos la matriz de datos 
names(iris)

#3:explorar la dimesión de la matriz 
dim(iris)

#4: identificar los tipos de variables
str(iris)

#5: detectar los valores perdidos
anyNA(iris)

#6: explorar una variable 
iris$spacies

iris$Sepal.Length

typeof(iris)

tabla_PL<-as.data.frame(table(PL-iris$Petal.Length))

tabla_PL

transform(tabla_PL,
          freqAc=cumsum(Freq),
          Rel=round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))

tabla_clases<-as.data.frame(table(Petal.legth=factor(cut(iris$Petal.Length,
                                                         breaks = 9))))

tabla_clases<-as.data.frame(table(
  Petal.length=factor(
    cut(iris$Petal.Length,
        breaks=9))))


tabla_clases    
