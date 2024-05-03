
merge 1:1 HCWN YOB Sex using "D:\PERSONAL\George\POST.dta"

*Identifying correct answers;

*WORKSHOP;

*Eruption Age;

replace EruptionAge_base_Post1="Y" if EruptionAge_base_Post == "5-6 Months"
replace EruptionAge_base_Post1="N" if EruptionAge_base_Post1 == ""

gen EruptionAge_end1="Y" if EruptionAge_end == "5-6 Months"
replace EruptionAge_end1="N" if EruptionAge_end1 == ""

gen EruptionAge_base_Pre1="Y" if EruptionAge_base_Pre == "5-6 Months"
replace EruptionAge_base_Pre1="N" if EruptionAge_base_Pre1 == ""


table (EruptionAge_base_Pre) (EruptionAge_base_Post) (EruptionAge_end),col
tab   EruptionAge_base_Pre1 if SN_end==1
tab   EruptionAge_base_Post1 if SN_end==1
tab   EruptionAge_end1 if SN_end==1



*Eruption Age;

replace EruptionAge_base_Post1="Y" if EruptionAge_base_Post == "5-6 Months"
replace EruptionAge_base_Post1="N" if EruptionAge_base_Post1 == ""

gen EruptionAge_end1="Y" if EruptionAge_end == "5-6 Months"
replace EruptionAge_end1="N" if EruptionAge_end1 == ""

gen EruptionAge_base_Pre1="Y" if EruptionAge_base_Pre == "5-6 Months"
replace EruptionAge_base_Pre1="N" if EruptionAge_base_Pre1 == ""


tab   EruptionAge_base_Pre1 if SN_end==1
tab   EruptionAge_base_Post1 if SN_end==1
tab   EruptionAge_end1 if SN_end==1

*Teeth Eruption;

gen AssEruption_base_Post1="Y" if AssEruption_base_Post == "Itching"
replace AssEruption_base_Post1="N" if AssEruption_base_Post == ""

gen AssEruption_end1="Y" if AssEruption_end == "Itching"
replace AssEruption_end1="N" if AssEruption_end1 == ""

gen AssEruption_base_Pre1="Y" if AssEruption_base_Pre == "Itching"
replace AssEruption_base_Pre1="N" if AssEruption_base_Pre1 == ""


tab   AssEruption_base_Pre1 if SN_end==1
tab   AssEruption_base_Post1 if SN_end==1,mi
tab   AssEruption_end1 if SN_end==1,mi

*Decidous Teeth;

gen TLDecTeeth_base_Pre1="Y" if TLDecTeeth_base_Pre == 20
replace TLDecTeeth_base_Pre1="N" if TLDecTeeth_base_Pre1 == ""

gen TLDecTeeth_base_Post1="Y" if TLDecTeeth_base_Post == 20
replace TLDecTeeth_base_Post1="N" if TLDecTeeth_base_Post1 == ""

gen TLDecTeeth_end1="Y" if TLDecTeeth_end == 20
replace TLDecTeeth_end1="N" if TLDecTeeth_end1 == ""


tab   TLDecTeeth_base_Pre1 if SN_end==1
tab   TLDecTeeth_base_Post1 if SN_end==1,mi
tab   TLDecTeeth_end1 if SN_end==1,mi

*When should one start cleaning a child’s teeth?
gen TeethClean_base_Pre1="Y" if TeethClean_base_Pre == "When first deciduous teeth erupt"
replace TeethClean_base_Pre1="N" if TeethClean_base_Pre1 == ""

gen TeethClean_base_Post1="Y" if TeethClean_base_Post == "When first deciduous teeth erupt"
replace TeethClean_base_Post="N" if TeethClean_base_Post1 == ""

gen TeethClean_end1="Y" if TeethClean_end == "When first deciduous teeth erupt"
replace TeethClean_end1="N" if TeethClean_end1 == ""


tab   TeethClean_base_Pre1 if SN_end==1
tab   TeethClean_base_Post1 if SN_end==1,mi
tab   TeethClean_end1 if SN_end==1,mi

*What is the best suited to clean children teeth?
gen SuitTeethClean_base_Pre1="Y" if SuitTeethClean_base_Pre == "Soft tooth brush"
replace SuitTeethClean_base_Pre1="N" if SuitTeethClean_base_Pre1 == ""

gen SuitTeethClean_base_Post1="Y" if SuitTeethClean_base_Post == "Soft tooth brush"
replace SuitTeethClean_base_Post="N" if SuitTeethClean_base_Post1 == ""

gen SuitTeethClean_end1="Y" if SuitTeethClean_end == "Soft tooth brush"
replace SuitTeethClean_end1="N" if SuitTeethClean_end1 == ""


tab   SuitTeethClean_base_Pre1 if SN_end==1
tab   SuitTeethClean_base_Post1 if SN_end==1,mi
tab   SuitTeethClean_end1 if SN_end==1,mi

*The following are risk factors For dental caries in children except?
gen RiskFDC_base_Pre1="Y" if RiskFDC_base_Pre == "Extended breast feeding"
replace RiskFDC_base_Pre1="N" if RiskFDC_base_Pre1 == ""

gen RiskFDC_base_Post1="Y" if RiskFDC_base_Post == "Extended breast feeding"
replace RiskFDC_base_Post="N" if RiskFDC_base_Post1 == ""

gen RiskFDC_end1="Y" if RiskFDC_end == "Extended breast feeding"
replace RiskFDC_end1="N" if RiskFDC_end1 == ""


tab   RiskFDC_base_Pre1 if SN_end==1
tab   RiskFDC_base_Post1 if SN_end==1,mi
tab   RiskFDC_end1 if SN_end==1,mi


*The following are indicators of dental decay EXCEPT? Yellow discoloration 
gen IndDC_base_Pre1="Y" if IndDC_base_Pre == "Yellow discoloration"
replace IndDC_base_Pre1="N" if IndDC_base_Pre1 == ""

gen IndDC_base_Post1="Y" if IndDC_base_Post == "Yellow discoloration"
replace IndDC_base_Post="N" if IndDC_base_Post1 == ""

gen IndDC_end1="Y" if IndDC_end == "Yellow discoloration"
replace IndDC_end1="N" if IndDC_end1 == ""


tab   IndDC_base_Pre1 if SN_end==1
tab   IndDC_base_Post1 if SN_end==1,mi
tab   IndDC_end1 if SN_end==1,mi

*The following can cause gum Disease or mucosal lesions in childhood EXCEPT?
gen GumDis_base_Pre1="Y" if GumDis_base_Pre == "Erupting teeth"
replace GumDis_base_Pre1="N" if GumDis_base_Pre1 == ""

gen GumDis_base_Post1="Y" if GumDis_base_Post == "Erupting teeth"
replace GumDis_base_Post1="N" if GumDis_base_Post1 == ""

gen GumDis_end1="Y" if GumDis_end == "Erupting teeth"
replace GumDis_end1="N" if GumDis_end1 == ""


tab   GumDis_base_Pre1 if SN_end==1
tab   GumDis_base_Post1 if SN_end==1,mi
tab   GumDis_end1 if SN_end==1,mi

*Which of the following condition can manifest in the oral cavity?
gen OralCavManifest_base_Pre1="Y" if OralCavManifest_base_Pre == "All the above teeth"
replace OralCavManifest_base_Pre1="N" if OralCavManifest_base_Pre1 == ""

gen OralCavManifest_base_Post1="Y" if OralCavManifest_base_Post == "All the above"
replace OralCavManifest_base_Post1="N" if OralCavManifest_base_Post1 == ""

gen OralCavManifest_end1="Y" if OralCavManifest_end == "All the above"
replace OralCavManifest_end1="N" if OralCavManifest_end1 == ""


tab   OralCavManifest_base_Pre1 if SN_end==1
tab   OralCavManifest_base_Post1 if SN_end==1,mi
tab   OralCavManifest_end1 if SN_end==1,mi

*Which of the following are manifestations of HIV/AIDS in the oral cavity?
gen HIV_AIDManifest_base_Pre1="Y" if HIV_AIDManifest_base_Pre == "All the above teeth"
replace HIV_AIDManifest_base_Pre1="N" if HIV_AIDManifest_base_Pre1 == ""

gen HIV_AIDManifest_base_Post1="Y" if HIV_AIDManifest_base_Post == "All the above"
replace HIV_AIDManifest_base_Post1="N" if HIV_AIDManifest_base_Post1 == ""

gen HIV_AIDManifest_end1="Y" if HIV_AIDManifest_end == "All the above"
replace HIV_AIDManifest_end1="N" if HIV_AIDManifest_end1 == ""


tab   HIV_AIDManifest_base_Pre1 if SN_end==1
tab   HIV_AIDManifest_base_Post1 if SN_end==1,mi
tab   HIV_AIDManifest_end1 if SN_end==1,mi


*Which is the recommended toothpaste for children?
gen RecToothPaste_base_Pre1="Y" if RecToothPaste_base_Pre == "Fluoridated toothpaste"
replace RecToothPaste_base_Pre1="N" if RecToothPaste_base_Pre1 == ""

gen RecToothPaste_base_Post1="Y" if RecToothPaste_base_Post == "Fluoridated toothpaste"
replace RecToothPaste_base_Post1="N" if RecToothPaste_base_Post1 == ""

gen RecToothPaste_end1="Y" if RecToothPaste_end == "Fluoridated toothpaste"
replace RecToothPaste_end1="N" if RecToothPaste_end1 == ""


tab   RecToothPaste_base_Pre1 if SN_end==1
tab   RecToothPaste_base_Post1 if SN_end==1,mi
tab   RecToothPaste_end1 if SN_end==1,mi

*Which of following is NOT true about recording and reporting childhood dental disease?


*MENTORSHIP;
*Eruption Age
tab   EruptionAge_base_Pre1 if SN_end==2
tab   EruptionAge_base_Post1 if SN_end==2
tab   EruptionAge_end1 if SN_end==2

*Teeth Eruption
tab   AssEruption_base_Pre1 if SN_end==2
tab   AssEruption_base_Post1 if SN_end==2,mi
tab   AssEruption_end1 if SN_end==2,mi

*Decidous Teeth
tab   TLDecTeeth_base_Pre1 if SN_end==2
tab   TLDecTeeth_base_Post1 if SN_end==2,mi
tab   TLDecTeeth_end1 if SN_end==2,mi

*When should one start cleaning a child’s teeth?
tab   TeethClean_base_Pre1 if SN_end==2
tab   TeethClean_base_Post1 if SN_end==2,mi
tab   TeethClean_end1 if SN_end==2,mi

*What is the best suited to clean children teeth?
tab   SuitTeethClean_base_Pre1 if SN_end==2
tab   SuitTeethClean_base_Post1 if SN_end==2,mi
tab   SuitTeethClean_end1 if SN_end==2,mi

*The following are risk factors For dental caries in children except?
tab   RiskFDC_base_Pre1 if SN_end==2
tab   RiskFDC_base_Post1 if SN_end==2,mi
tab   RiskFDC_end1 if SN_end==2,mi

*The following are indicators of dental decay EXCEPT?
tab   IndDC_base_Pre1 if SN_end==2
tab   IndDC_base_Post1 if SN_end==2,mi
tab   IndDC_end1 if SN_end==2,mi

*The following can cause gum Disease or mucosal lesions in childhood EXCEPT?
tab   GumDis_base_Pre1 if SN_end==2
tab   GumDis_base_Post1 if SN_end==2,mi
tab   GumDis_end1 if SN_end==2,mi

*Which of the following condition can manifest in the oral cavity?
tab   OralCavManifest_base_Pre1 if SN_end==2
tab   OralCavManifest_base_Post1 if SN_end==2,mi
tab   OralCavManifest_end1 if SN_end==2,mi

*Which of the following are manifestations of HIV/AIDS in the oral cavity?
tab   HIV_AIDManifest_base_Pre1 if SN_end==2
tab   HIV_AIDManifest_base_Post1 if SN_end==2,mi
tab   HIV_AIDManifest_end1 if SN_end==2,mi

*Which is the recommended toothpaste for children?
tab   RecToothPaste_base_Pre1 if SN_end==2
tab   RecToothPaste_base_Post1 if SN_end==2,mi
tab   RecToothPaste_end1 if SN_end==2,mi

*Which of following is NOT true about recording and reporting childhood dental disease?
