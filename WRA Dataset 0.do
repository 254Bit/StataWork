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
tab missing_service_24 screening, col
tab payment_25 screening, col
tab amount_26 screening, col
tab waiting_time_27 screening, col
tab satisfaction_28 screening, col
tab provider_attit_29 screening, col
tab distance_30 screening, col
tab transport_cost_31 screening, col
tab permission_to_screen_32 screening, col
tab source_of_permission_33 screening, col
tab gender_of_screener_34 screening, col
tab comfortable_with_male_35 screening, col
tab why_uncomfortable_36 screening, col
tab cultural_beliefs_37 screening, col
tab belief_38 screening, col
tab specify_belief_38 screening, col
tab referral_by_chv_39 screening, col
tab improvement_40 screening, col

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
