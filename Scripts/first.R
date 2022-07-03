#Type of objects
#character
#numeric
#integer
#complex
#logical
#1L is integer specifically
#Inf is infinity
#NaN is not a number

#attributes
#name, dimnames, dimensions, class, length
x <- c(T,F)
x
y<- c(1+1i, 2+3i)
y

#conversion
as.character(y)
z<-as.integer(y)


#list can have items of diff types
a<- list(1, "String")
a
