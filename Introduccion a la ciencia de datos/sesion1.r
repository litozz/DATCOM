?iris
class(iris)
names(iris)
?plot
#example(plot)
class(iris$Sepal.Length)

##########################GRAFICA PUNTOS##########################
plot(
  iris$Sepal.Length,
  iris$Petal.Length,
  main="PLOT iris",
  xlab="Sepal length", ylab="Petal length", col=iris$Species,pch=c(16,17,18)[as.numeric(iris$Species)] )


abline(6.5,-0.8,lty=2)

legend(
  "topleft",
  legend=levels(iris$Species),
  col=1:length(levels(iris$Species)),
  pch=16
)

##########################FUNCIONES##########################

plot(0:10,sin(0:10),type="l")
curve(sin(x),0,10,n=100)


##########################FUNCIONES A TROZOS##########################

myfun <- function(x){ifelse(x>0,7,-2)}
curve(myfun(x),-5,5)

#[,-5] Quita la 5ta columna
plot(iris[,-5],col=iris$Species)

##########################HISTOGRAMA##########################

hist(iris$Petal.Length,main="Histogram",xlab="Petal length",breaks=5)




minimo<-min(iris$Petal.Length,iris$Sepal.Length)
maximo<-max(iris$Petal.Length,iris$Sepal.Length)

hist(iris$Petal.Length,main="Histogram",xlab="Variable",col="lightblue",xlim=c(minimo,maximo))
hist(iris$Sepal.Length,main="Histogram",xlab="Variable",col="pink",add=TRUE)#Add another graphic into an existing graphic.

hist(iris$Petal.Length,main="Histogram",xlab="Variable",col=rgb(1,0,0,1),xlim=c(minimo,maximo))
hist(iris$Sepal.Length,main="Histogram",xlab="Variable",col=rgb(0,0,1,0.5),add=TRUE)#Add another graphic into an existing graphic.


##########################BOXPLOTS##########################

data<-data.frame(Stat11=rnorm(100,mean = 3,sd=2),Stat12=rnorm(100,mean = 0,sd=3))

boxplot(data,las=2)
boxplot(data,las=2,names=c("Station 1","Station 2"))
boxplot(data,las=2,at=c(1,5),col=c("red","sienna"))


##########################BARPLOT##########################

counts<-table(mtcars$gear) #Table nos dice cuantos elementos hay de cada tipo
barplot(counts,main="Car Distribution", xlab="Number of gears",col=c(1,2,3))
barplot(counts,main="Car Distribution", xlab="Number of gears",col=c(1,2,3),horiz=TRUE,names=c("3 gears","4 gears","5 gears"))



counts<-table(mtcars$vs,mtcars$gear) #Table nos dice cuantos elementos hay de cada tipo
barplot(counts,
        main="Car Distribution by Gears and VS",
        xlab="Number of gears",
        col=c("darkblue","red"),
        legend=rownames(counts),
        beside=TRUE)


##########################PIE PLOT##########################

pie.sales<-c(0.12,0.3,0.26,0.16,0.04,0.12)

pie(pie.sales,c("Uno","Dos","Tres","Cuatro","Cinco","Seis"),col=rainbow(6))






##########################EJERCICIOS##########################

#EJ1

stretch<-c(46,54,48,50,44,42,52)
distance<-c(148,182,173,166,109,141,)






