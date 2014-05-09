
## load train set, activities, subject
train.set <- read.table(file="UCI HAR Dataset/train/X_train.txt",header=FALSE,allowEscapes=T)
train.activities <- read.table(file="UCI HAR Dataset/train/y_train.txt")
train.subject <- read.table(file="UCI HAR Dataset/train/subject_train.txt")

## merge loaded data
train.set <- cbind(train.set,activities=train.activities,subject=train.subject)

## load test set, activities, subject
test.set <- read.table(file="UCI HAR Dataset/test/X_test.txt",header=FALSE,allowEscapes=T)
test.activities <- read.table(file="UCI HAR Dataset/test/y_test.txt")
test.subject <- read.table(file="UCI HAR Dataset/test/subject_test.txt")

## merge loaded data
test.set <- cbind(test.set,activities=test.activities ,subject=test.subject)

## merge training and test sets
total.set <- rbind(test.set, train.set)

## load features names
features <- read.table(file="UCI HAR Dataset/features.txt",header=FALSE)
feature.nm <- sapply(features$V2,function(x){
    x <- gsub("\\(","",x)
    x <- gsub("\\)","",x)
    x <- gsub(",",".",x)
    x <- gsub("-",".",x)
    x
})

## load features names
activities <- read.table(file="UCI HAR Dataset/activity_labels.txt",header=FALSE)
names(activities) <- c("class","name")

## add "subject" name into features names
names(total.set) <- c(feature.nm,"activities","subject")

## chagne class to activitie names
total.set$activities <- sapply(total.set$activities, function(x) activities[activities$class==x,]$name)

## search column for mean and standard deviation
mean.col.nm <- names(total.set)[grep("mean",names(total.set))]
std.col.nm <-  names(total.set)[grep("std",names(total.set))]
## make subset for mean and standard diviation
mean.std.ds <- total.set[,c(mean.col.nm,std.col.nm,"activities","subject")]

## make tidy data.set with the average of each variable for each activity and each subject.  
avg.ds <- aggregate(mean.std.ds[,!(names(mean.std.ds) %in% c("activities","subject"))],
                    list(mean.std.ds$activities,mean.std.ds$subject),mean)

names(avg.ds)[1] <- "activities"
names(avg.ds)[2] <- "subject"

write.csv(file="tidy.data.set.csv",avg.ds, row.names=F,quote=F)
