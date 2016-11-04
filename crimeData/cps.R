CPS = read.csv("CPSData.csv")
summary(CPS)
str(CPS)
table(CPS$Industry)
sort(table(CPS$Industry))
sort(table(CPS$Region))
sort(table(CPS$Citizenship))
table(CPS$Citizenship)
CPS$Citizenship
table(CPS$Race, CPS$Hispanic)
summary(CPS)

table(CPS$Region,is.na(CPS$Married))
table(CPS$Age,is.na(CPS$Married))
table(CPS$Region,is.na(CPS$MetroAreaCode))

sort(tapply(is.na(CPS$MetroAreaCode), CPS$State, mean))


MetroAreaMap = read.csv("MetroAreaCodes.csv")
CountryMap = read.csv("CountryCodes.csv")

str(MetroAreaMap)
str(CountryMap)


CPS = merge(CPS,MetroAreaMap,by.x = "MetroAreaCode",by.y = "Code",all.x = TRUE)
summary(CPS)
table(CPS$MetroArea)

sort(tapply(CPS$Hispanic, CPS$MetroArea, mean))
