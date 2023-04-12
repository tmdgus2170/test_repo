myvar01 <- matrix(1:10, nrow=5, ncol=2)
myvar01
mytranspose(myvar01)
myvar01[1,2] == mytranspose(myvar01)[2,1] #TRUE
myvar01[2,1] == mytranspose(myvar01)[1,2] #TRUE
myvar01[3,1] == mytranspose(myvar01)[1,3] #TRUE
myvar01[4,2] == mytranspose(myvar01)[2,4] #TRUE
myvar01[5,2] == mytranspose(myvar01)[2,5] #TRUE
all.equal.raw((myvar01), mytranspose(mytranspose(myvar01))) #TRUE

myvar02 <- matrix(NA, nrow=0, ncol=0)
myvar02
mytranspose(myvar02)
all.equal.raw((myvar02), mytranspose(mytranspose(myvar02)), check.attributes = FALSE) #TRUE

myvar03 <- matrix(c(1,2), nrow=1, ncol=2)
myvar03
mytranspose(myvar03)
myvar03[1] == mytranspose(myvar03)[1] #TRUE
myvar03[2] == mytranspose(myvar03)[2] #TRUE
all.equal.raw((myvar03), mytranspose(mytranspose(myvar03))) #TRUE

myvar07 <- c()
myvar07
mytranspose(myvar07)
all.equal.raw((myvar07), mytranspose(mytranspose(myvar07))) #TRUE


d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE, TRUE, TRUE, FALSE)
myvar08 <- data.frame(d,e,f)

myvar08
mytranspose(myvar08)
myvar08[1,2] == mytranspose(myvar08)[2,1] #TRUE
myvar08[2,3] == mytranspose(myvar08)[3,2] #TRUE
myvar08[3,1] == mytranspose(myvar08)[1,3] #TRUE
myvar08[4,1] == mytranspose(myvar08)[1,4] #TRUE
myvar08[4,3] == mytranspose(myvar08)[3,4] #TRUE
all.equal.raw((myvar08), mytranspose(mytranspose(myvar08)), check.attributes = FALSE) #TRUE
