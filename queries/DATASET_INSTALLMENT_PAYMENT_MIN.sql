SELECT reco_id_curr, min(number_of_instalment_num) as f_number_of_instalment_num, installment_due_date as f_installment_due_date,
       installment_due_date as f_installment_due_date, days_entry_payment as f_days_entry_payment,
       first_payment_requested as f_first_payment_requested, payment as f_payment
FROM TA4_DATASET_INSTALLMENT_PAYMENT
GROUP BY reco_id_curr;