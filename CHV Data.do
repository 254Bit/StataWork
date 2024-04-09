* ---- VARIABLES TO COMPUTE ----
* riskscore
* symptomsscore
* prevention_score
* screening_score
* treatment_score
* totalscore

list
summarize
describe

* Convert string to numerical
destring riskscore, ignor("%") gen(riskscore1)
destring symptomsscore, ignor("%") gen(symptomsscore1)
destring prevention_score, ignor("%") gen(prevention_score1)
destring screening_score, ignor("%") gen(screening_score1)
destring treatment_score, ignor("%") gen(treatment_score1)
destring totalscore, ignor("%") gen(totalscore1)

* Determine the mean, median and p-value of the mentioned variables
tabstat riskscore1 symptomsscore1 prevention_score1 screening_score1 treatment_score1 totalscore1,by(period) s(mean n p50 p25 p75 sd)
tabstat symptomsscore1,by(period) s(mean n p50 p25 p75 sd)
tabstat prevention_score1,by(period) s(mean n p50 p25 p75 sd)
tabstat screening_score1,by(period) s(mean n p50 p25 p75 sd)
tabstat treatment_score1,by(period) s(mean n p50 p25 p75 sd)
tabstat totalscore1,by(period) s(mean n p50 p25 p75 sd)

* Get the P-Value
ttest riskscore1,by(period) 
ttest symptomsscore1,by(period)
ttest prevention_score1,by(period)
ttest screening_score1,by(period) 
ttest treatment_score1,by(period) 
ttest totalscore1,by(period)

ranksum riskscore1,by(period) 
ranksum symptomsscore1,by(period)
ranksum prevention_score1,by(period)
ranksum screening_score1,by(period) 
ranksum treatment_score1,by(period) 
ranksum totalscore1,by(period)

 