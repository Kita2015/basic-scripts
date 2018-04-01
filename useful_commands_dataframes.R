#Create a dataframe subset based on column names
##select variables which will be part of new data frame
vars.new.df<-c("var1","var2","varn")
new.df<-dataset[vars.new.df]

#create a subset based on column numbers
new.df<-dataset[,1:3]
##in case of several sets of columns, use c(): [,c(1:3,6:9)]

#create a subset based on row numbers
new.df<-dataset[2:4,]

#create a subset based on a selection of observed values of one or more variables
##"==" can be >,<,>=,<=, "20" can be any value, in case of a character string, use "..."
new.df<-dataset[which(dataset$var1==20),]
##in case of omitting data based on a value or character string,use:
new.df<-dataset[which(dataset$var1!="character.string"),]
##subset based on character strings:
new.df<-subset(dataset,var %in% c("value1","value2"))


#add a column or row to a dataset
##column
dataset["new_column"]<-NA # That creates the new column named "new_column" filled with "NA"
dataset$new_column<-column_of_data # As an example, the new column receives the result of another column of data


#remove a column or row from a dataset
## column 
new.df<-dataset[,-1] 
## row
new.df<-dataset[-1,]

#write csv
write.csv(MyData, file = "MyData.csv")



