#EJERCICIO DE NÚMEROS ALEATORIOS: 

#generar numero aleatorios para una muestra de 35 personas en una 
#población de 73 alumnas/os del 5to semestre de la LEP BENV

sample(x, side, replace=True/FALSE)

#Ejemplo
sample(1:73,35, replace = FALSE)
sample(1:70,34, replace=FALSE)

#EJERCICIOS 

#1.1- Calcula el tamaño de muestra para una poblacion de 
#83 alumnas y alumnos que se encuentran en primer grado
#de la Licenciatura en Educación Primaria de la BENV.

#1.2.- Una vez que obtengas el tamaño de la muestra, 
#selecciona el número de lista de las personas que formaran
#parte de la muestra.

#1.3.- Crea un vector llamado muestra con los números de 
#lista de las personas que forman parte de la muestra.


n=83 #ALUMNOS Y ALUMNAS 
m=39 #(68 alumnos y alumnas)


sample(1:83,39,replace = FALSE)


muestra<- c(38, 55, 61, 79, 72, 47, 69, 32, 54, 65, 77, 48, 62, 22, 80, 59, 16, 44, 49, 51, 10,
            71, 60, 8, 6, 19, 63, 42, 57, 9, 34, 35, 26, 36, 56, 70, 33, 27, 81)

View(muestra)

#2.- Repite el ejercicio anterios ahora para una poblacion
# de 90 alumnas y alumnos de integran el segundo año de la
#licenciatura en Educación Primaria de la BENV.

n=90
m=42 


sample(1:90,42,replace=FALSE)


muestra_uwu<-c(45, 81, 76, 56, 21, 26, 78, 43, 46, 60, 88, 83, 51, 32, 68, 37, 30, 33, 52, 64, 19,
              4, 44,  6, 75, 89, 73, 57, 71, 53, 58, 31, 14,  3,  7, 79, 70,  2, 24, 80, 11,  1)


View(muestra_uwu)

#3.- Determina el número e identifíca a las personas que participarán
#en un estudio de seguimiento de egresados de la generación
#2015-2019 de las 5 licenciaturas de la BENV.

#Primaria: 78 personas egresadas.
#Preescolar: 84 personas egresadas.
#Física: 35 personas egresadas.
#Telesecundaria: 83 personas egresadas.
#Especial: 25 personas.


#PRIMARIA (78, número de personas egresadas)

n=78 
m=36 

sample(1:78,36,replace=FALSE)

muestra_primaria<-c(70, 54, 46, 22, 66,  9, 45, 50, 29, 40, 24, 47, 49,  1, 59,  8, 53,
                    6, 76, 72, 55, 64, 73, 37, 42, 33, 39, 69, 27, 51, 65,  4, 30, 21, 26, 23)

View(muestra_primaria)

#PREESCOLAR (84,número de personas egresadas)

n=84
m=38

sample(1:84,38,replace=FALSE)

muestra_preescolar<-c(60, 43, 68, 78, 77, 11, 12, 26, 52, 81, 54, 27, 56, 63, 30, 41, 42, 18, 45, 7, 62, 49, 28, 74, 22,  1, 76, 17, 79, 46, 47, 38, 64, 55, 50, 5, 4, 58)

View(muestra_preescolar)

#FÍSICA (35,número de personas egresadas)

n=35
m=19

sample(1:35,19,replace=FALSE)

muestra_FISICA<-c(1, 23,  7,  3, 22, 32, 28, 26, 16, 18, 17, 30,  5, 19, 13, 10, 27, 34,2)

View(muestra_FISICA)

#TELESECUNDARIA (83,número de personas egresadas)

n=83
m=37

sample(1:83,37,replace=FALSE)

muestra_TELE<-c(63, 25, 23, 30, 75, 31, 77, 38, 21, 54, 68, 15, 58, 56,  9, 70, 50, 17, 26,
                19, 48, 10, 24, 47, 14,  7, 76, 46, 83, 61, 60, 39,  2, 22, 49, 41, 82)

View(muestra_TELE)

#ESPECIAL (25,número de personas egresadas)

n=25
m=13

sample(1:25,13,replace=FALSE)

muestra_ESPECIAL<-c(12, 10, 19,  6,  3,  1, 13, 21, 17, 22,  4, 16,  2)

View(muestra_ESPECIAL)

