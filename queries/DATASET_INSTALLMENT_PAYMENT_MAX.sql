SELECT 
    reco_id_curr,
    COUNT(reco_id_last) AS count_reco_id_last,
    AVG(number_of_instalment_num) AS avg_number_of_instalment,
    AVG(days_entry_payment) AS avg_days_entry_payment,
    SUM(payment) AS payment,
    SUM(first_payment_requested - payment) AS payment_difference
FROM 
    TA4_DATASET_INSTALLMENT_PAYMENT tdip 
GROUP BY 
    reco_id_curr;
