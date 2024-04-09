* ---- VARIABLES TO COMPUTE ----
* arm
* risk_score
* sign_score
* screening_score
* post_totalscore


list
summarize
describe

* Convert string to numerical
destring risk_score, ignor("%") gen(risk_score1)
destring sign_score, ignor("%") gen(sign_score1)
destring screening_score, ignor("%") gen(screening_score1)
destring post_totalscore, ignor("%") gen(post_totalscore1)


* Determine the mean, median and p-value of the mentioned variables
bysort arm:tabstat risk_score1,by(period) s(mean n p50 p25 p75 sd)
bysort arm:tabstat sign_score1,by(period) s(mean n p50 p25 p75 sd)
bysort arm:tabstat screening_score1,by(period) s(mean n p50 p25 p75 sd)
bysort arm:tabstat post_totalscore1,by(period) s(mean n p50 p25 p75 sd)

* Get the P-Value
ttest risk_score1,by(period)
ttest sign_score1,by(period) 
ttest screening_score1,by(period) 
ttest post_totalscore1,by(period) 
 
 


 