tab gender
tab education
tab Status
tab work
tab Qualifications
tab COVID_infection
tab Threats
tab PNS_Budget
tab Yield
tab PNS_COVID_7
tab Supplies
tab Other_Qualifications
tab Qualifications

tab PPEs_1
tab PPEs_2
tab PPEs_3
tab PPEs_4
tab PPEs_5


sum age, detail
tab age

egen ppe = rowtotal(PPEs_1 PPEs_2 PPEs_3 PPEs_4 PPEs_5)
move ppe Supplies
tab ppe
sum ppe, detail

replace qual=Other_Qualifications_1 if qual !=.

egen trans = rowtotal(Transport_1 Transport_2 Transport_3 Transport_4)
move trans security

tab Transport
tab Transport_1
tab Transport_2
tab Transport_3
tab Transport_4


tab security_1
tab security_2
tab security_3
tab security_4

tab PNS_COVID_1
tab PNS_COVID_2
tab PNS_COVID_3
tab PNS_COVID_4
tab PNS_COVID_5
tab PNS_COVID_6
tab PNS_COVID_7












egen Security = rowtotal(security_1 security_2 security_3 security_4)
move Security_specify Security
tab Security
sum Security, detail


egen PNS_Covid = rowtotal(PNS_COVID_1 PNS_COVID_2 PNS_COVID_3 PNS_COVID_4 PNS_COVID_5 PNS_COVID_6 PNS_COVID_7)
move PNS_Covid Yield
tab PNS_Covid
sum PNS_Covid, detail
