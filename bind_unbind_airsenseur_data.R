#bind all into one dataframe
#data per type of sensor is bound in one file per sensor set
as10<-rbind(as10_ds01,as10_ds02)
as10<-rbind(as10,as10_ds03)
as10<-rbind(as10,as10_ds04)
as10<-rbind(as10,as10_ds05)


#export cleaned dataframe
write.table(as10, file ="\\\\alt.rivm.nl/users/home/blokhuic/Documents/Data-analyse_airsenseur/Data_cleaned/as10_cleaned/as10.csv",row.names=FALSE,col.names=TRUE,sep=";",dec=".")