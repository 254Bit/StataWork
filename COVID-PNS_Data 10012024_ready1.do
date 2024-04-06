*To get a general description of the dataset and the format of each variable type
describe
*To get some basic descriptive statisitics
summarize
tab noofferedpns 

*table period, contents(freq mean noofferedpns mean noacceptingpns)

*contingency tables, crosstabs help one to analyze the relationship between two or more categorical variables.
*command is tab var1 var2

tab period noofferedpns, column row

tab noacceptingpns period, column row

tab period
tab noacceptingpns

tab period noacceptingpns

bysort noacceptingpns: tab period agegroups

svyset:tabulate period

tabulate noacceptingpns period, row

tabstat noacceptingpns, by(period) s(sum mean n)

tabstat noofferedpns, by(period) s(sum mean n)

tabstat noofferedpns, by(period) s(sum mean n)

ttest noofferedpns , by(period) 

ttest noacceptingpns , by(period) 
