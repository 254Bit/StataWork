* ---- VARIABLES TO COMPUTE ----
* service_avail_23
* missing_service_24
* payment_25
* amount_26
* waiting_time_27
* satisfaction_28
* provider_attit_29
* distance_30
* transport_cost_31
* permission_to_screen_32
* source_of_permission_33
* gender_of_screener_34
* comfortable_with_male_35
* why_uncomfortable_36
* cultural_beliefs_37
* belief_38
* specify_belief_38
* referral_by_chv_39
* improvement_40

list
summarize
describe

sort id

tab screening
tab service_avail_23 screening
tab missing_service_24
tab payment_25
tab amount_26
tab waiting_time_27
tab satisfaction_28
tab provider_attit_29
tab distance_30
tab transport_cost_31
tab permission_to_screen_32
tab source_of_permission_33
tab gender_of_screener_34
tab comfortable_with_male_35
tab why_uncomfortable_36
tab cultural_beliefs_37
tab belief_38
tab specify_belief_38
tab referral_by_chv_39
tab improvement_40

* --- Cross Tabulate tab var1 var2 ---*
tab missing_service_24 screening
tab payment_25 screening
tab amount_26 screening
tab waiting_time_27 screening
tab satisfaction_28 screening
tab provider_attit_29 screening
tab distance_30 screening
tab transport_cost_31 screening
tab permission_to_screen_32 screening

tab source_of_permission_33 permission_to_screen_32
tab source_of_permission if permission_to_screen_32==1 & screening==1

:tabstat permission_to_screen_32


tab gender_of_screener_34 screening
tab why_uncomfortable_36 if gender_of_screener_34==1 & screening==0

tab why_uncomfortable_36 screening

tab cultural_beliefs_37 screening
tab belief_38 if cultural_beliefs_37 ==1 & screening==1

tab belief_38 screening
tab specify_belief_38 screening
tab referral_by_chv_39 screening
tab improvement_40 screening
