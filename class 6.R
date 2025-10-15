getwd()
setwd("C:\\Users\\ece-lab\\Desktop\\data science 3rd year")
fin<-read.csv(file.choose())
fin[!complete.cases(fin),]

fin$Salary==NA

is.na(fin$Salary)
fin[is.na(fin$Salary),]
fin_backup<-fin
fin[!complete.cases(fin),]
fin[is.na(fin$Salary),]
fin[!is.na(fin$Salary),]
fin<-fin[!is.na(fin$Salary),]
fin
fin[!complete.cases(fin),]
fin$Age=ifelse(is.na(fin$Age), 
                   ave(fin$Age, FUN = function(x) mean(x, na.rm = TRUE)),fin$Age)
fin
