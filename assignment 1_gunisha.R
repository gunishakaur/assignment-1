#Creating two dataframes
df1= data.frame ("Id"=c(1,2,3,4), "Names"=c("priya","little","jai","jaanvi"), "Age"=c(15,16,17,16))
print(df1)

df2= data.frame("Id"=c(1,2,3,4), "Class"=c(12,11,10,11), "Course"=c("c","c++","java","python"))
print(df2)

#merge to dataframes
df= merge(x=df1,y=df2,by="Id",all=TRUE)
print(df)

#Adding new column 
df3= cbind(df,data.frame(Year=c(2015,2016,2017,2020)))
print(df3)

#Adding new row
df4= rbind(df1,data.frame(Id=5,Names="shreya", Age=16))
print(df4)

#new dataframe with the subset of data from previous dataframe
pd2=subset(df, Names=="priya"|Age==16)
print(pd2)

#Edit the values of 3rd row and 2nd column
pd2[[3]][2]="19"
print(pd2)

#Delete last row
pd2[-3,]

#Recasting operation
df6=recast(df, variable+Course~Names, 
           id.var=c("Names","Course"))
df6

         
         











                


