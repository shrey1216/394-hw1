#1)

#a)
height <- c(1.55, 1.92, 1.60, 1.75, 1.58, 1.67, 1.63, 1.82, 1.76,1.77, 1.72, 1.85)

#b)
#mean
mean(height)
#standard deviation
sd(height)

#c)
length(height)

#d)
#The number of heights less than 1.65
length(height[height<1.65])

#e)
#True if the value is greater than 1.6 and less than 1.75. False otherwise.
values <- height>1.6 & height < 1.75
values 


#2)
set.seed(123)
tmp <- matrix(rnorm(12), 3, 4)
tmp

#a)
#if the question is asking to find the sum of all of the elements in each row, you 
#would use sum(tmp[2,]) for the second row and sum(tmp[3,]) for the third row.
#second row plus third row 
answer1 <- tmp[2, ] + tmp[3, ]
answer1

#b)
#if the question is asking to find the product of all of the elements in each column, you 
#would use prod(tmp[,2]) for the second column and prod(tmp[,4]) for the fourth column.
#second column times fourth column
answer2 <- tmp[,2] * tmp[,4]
answer2

#c)
#dimensions of the matrix
dim(tmp)

#d)
#output elements in second row less than 0.2
cat(tmp[2,][tmp[2,] < 0.2])


#3)
a <- thuesen
#blood.glucose greater than 10 (first column)
a[,1][a[,1] > 10]

#short.velocity greater than 1.5 (second column)
a[,2][a[,2] > 1.5]


#4) 
#Generate 15 random integers that are uniformly distributed inclusively between 1 and 80
set.seed(124)
sample(1:80, 15, replace = T)


#5)Generate 10 random integers that follow a multinomial distribution with support
#of {1,2,3} and an associated probability vector (0.2, 0.3, 0.5)
#a)Use sample function
set.seed(123)
sample(1:3, 10, prob = c(0.2, 0.3, 0.5), replace = T)

#b)Without using the sample function
set.seed(123)
for (x in 1:10) {
  probability <- runif(1,min=0,max=1)
  if(probability <= 0.20){
    print(1)
  } else if (probability <= 0.50){
    print(2)
  }else{
    print(3)
  }
}
