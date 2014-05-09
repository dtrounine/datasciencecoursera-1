
## load test set
test.set <- read.table(file="data/UCI HAR Dataset/test/X_test.txt",header=FALSE,allowEscapes=T)
## load test subject
test.subject <- read.table(file="data/UCI HAR Dataset/test/subject_test.txt")
## merge test set and subject
test.set <- cbind(test.set,subject=test.subject)

## load train set
train.set <- read.table(file="data/UCI HAR Dataset/train/X_train.txt",header=FALSE,allowEscapes=T)
## load train subject
train.subject <- read.table(file="data/UCI HAR Dataset/train/subject_train.txt")
## merge train set and subject
train.set <- cbind(train.set,subject=train.subject)

## merge training and test sets
total.set <- rbind(test.set, train.set)

## load features names
features <- read.table(file="data/UCI HAR Dataset/features.txt",header=FALSE)
feature.nm <- sapply(features$V2,function(x){
    x <- gsub("\\(","",x)
    x <- gsub("\\)","",x)
    x <- gsub(",",".",x)
    x <- gsub("-",".",x)
    x
})
## add "subject" name into features names
names(total.set) <- c(feature.nm,"subject")

## search column index for mean and standard deviation
mean.col.idx <- grep("mean",names(total.set))
std.col.idx <- grep("std",names(total.set))
## make subset for mean and standard diviation
mean.std.ds <- total.set[,c(mean.col.idx,std.col.idx,ncol(total.set))]

## make tidy data.set with the average of each variable for each activity and each subject.  
avg.ds <- aggregate(mean.std.ds[,-ncol(mean.std.ds)],list(mean.std.ds$subject),mean)
names(avg.ds) <-c("subject",names(avg.ds[,-1]))
write.csv(file="tidy.data.set.csv",avg.ds, row.names=F,quote=F)
