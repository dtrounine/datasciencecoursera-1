
## load train set, activities, subject
trainSet <- read.table(file="UCI HAR Dataset/train/X_train.txt",header=FALSE,allowEscapes=T)
trainActivities <- read.table(file="UCI HAR Dataset/train/y_train.txt")
trainSubject <- read.table(file="UCI HAR Dataset/train/subject_train.txt")

## merge loaded data
trainSet <- cbind(trainSet,activities=trainActivities,subject=trainSubject)

## load test set, activities, subject
testSet <- read.table(file="UCI HAR Dataset/test/X_test.txt",header=FALSE,allowEscapes=T)
testActivities <- read.table(file="UCI HAR Dataset/test/y_test.txt")
testSubject <- read.table(file="UCI HAR Dataset/test/subject_test.txt")

## merge loaded data
testSet <- cbind(testSet,activities=testActivities ,subject=testSubject)

## merge training and test sets
totalSet <- rbind(testSet, trainSet)

## load features names
features <- read.table(file="UCI HAR Dataset/features.txt",header=FALSE)
feature.nm <- sapply(features$V2,function(x){
    x <- gsub("\\(","",x)
    x <- gsub("\\)","",x)
    x <- gsub(",","",x)
    x <- gsub("-","",x)
    x <- gsub("mean","Mean",x)
    x <- gsub("std","Std",x)
})

## load features names
activities <- read.table(file="UCI HAR Dataset/activity_labels.txt",header=FALSE)
names(activities) <- c("class","name")

## add "subject" name into features names
names(totalSet) <- c(feature.nm,"activities","subject")

## chagne class to activitie names
totalSet$activities <- sapply(totalSet$activities, function(x) activities[activities$class==x,]$name)

## search column for mean and standard deviation
mean.col.nm <- names(totalSet)[grep("Mean",names(totalSet))]
std.col.nm <-  names(totalSet)[grep("Std",names(totalSet))]
## make subset for mean and standard diviation
mean.std.ds <- totalSet[,c(mean.col.nm,std.col.nm,"activities","subject")]

## make tidy data.set with the average of each variable for each activity and each subject.  
tidyDataset <- aggregate(mean.std.ds[,!(names(mean.std.ds) %in% c("activities","subject"))],
                    list(mean.std.ds$activities,mean.std.ds$subject),mean)

names(tidyDataset)[1] <- "activities"
names(tidyDataset)[2] <- "subject"

## Save tidy data
write.table(file="tidy.data.set.txt", tidyDataset, row.names=F,quote=F,se="\t")
