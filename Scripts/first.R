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

#matrices
nat <- matrix(nrow=2,ncol=3)
nat
attributes(nat) #attributes gives attributes
dim(nat)        #dim is one attribute matrcies have

mat <- matrix(1:6, nrow=2,ncol=3)
mat

#factor
f <- factor(c("Male","Female","Male"))
f
attributes(f)
levels(f)

table(x)
table(f)

f1 <-factor(c("Male","Female","Male"),levels = c("Male","Female"))
f1

#na, nan functions
is.na(f)
is.nan(f)

#dataframes
#either create by read.table, read.csv
#or
df <- data.frame(foo=1:4,bar=c(T,F,T,F))
df
attributes(df)
names(df)
row.names(df)
nrow(df)
ncol(df)

#names
x <-1:3
x
names(x) <- c("foo","bar","bla")
x

y <- list(a=1,b=2,c=3)
y$a
y$b

#read.
read.table("file.name",header=F,nrows = 2)
read.csv("file.csv")
x<-data.frame(a=1,b=2)
y<-list(c=3,d=4)
dput(x)
dput(x,"x.R")
new<-dget("x.R")
new
#dump functioncan be used for multiple objects
dump(c("x","y"),"data.R")
source("data.R")
x
y

#connections
#file, gzfile, bzfile,url
#same as read.csv, read.table but in deep
con<-gzfile("file.gz")
x<-readLines(con,10)
x

#subsetting
x <- c("a","b","a","c","d","c")
x[2]
x[1:4]
x[x>"a"]
u <- x>"a"
u

x<- list(foo=1:4, bar=0.6, baz=1:6)
x
x[c(1,3)]
x$baz
name<-"foo"
x[[name]] #[[]] can be used for assigned variable
