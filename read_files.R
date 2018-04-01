#read file from Dutch Excel
as10_ds06 <- read.csv2("\\\\alt.rivm.nl/users/home/blokhuic/Documents/Data-analyse_airsenseur/Data/as10_fixed_copy/DataSet_000006.csv_fixed.txt", sep = ";", dec = ",", header=FALSE, stringsAsFactors = FALSE, quote="")

#assign names to columns raw data
colnames(as10_ds06) <- c("Unixdate","Sensor","Variabele","V4","V5","Waarde","Unix2","Longitude","Latitude","Height")

#export cleaned dataframe with dots for decimal sign
write.table(as10_ds06, file ="\\\\alt.rivm.nl/users/home/blokhuic/Documents/Data-analyse_airsenseur/Data_cleaned/as10_cleaned/as10_ds06.csv",row.names=FALSE,col.names=TRUE,sep=";",dec=".")
