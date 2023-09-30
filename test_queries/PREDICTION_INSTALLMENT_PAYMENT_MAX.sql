SELECT reco_id_curr, max(number_of_instalment_num) as l_number_of_instalment_num, installment_due_date as l_installment_due_date,
       installment_due_date as l_installment_due_date, days_entry_payment as l_days_entry_payment,
       first_payment_requested as l_first_payment_requested, payment as l_payment
FROM TA4_PREDICTION_INSTALLMENT_PAYMENT
GROUP BY reco_id_curr;