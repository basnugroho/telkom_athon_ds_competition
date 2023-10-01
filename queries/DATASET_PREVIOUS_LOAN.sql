SELECT 
    reco_id_curr,
    AVG(annuity_payment) AS annuity_payment_mean,
    SUM(annuity_payment) AS annuity_payment_sum,
    AVG(loan_body_requested) AS loan_body_requested_mean,
    SUM(loan_body_requested) AS loan_body_requested_sum,
    AVG(loan_body) AS loan_body_mean,
    SUM(loan_body) AS loan_body_sum,
    AVG(first_payment) AS first_payment_mean,
    SUM(first_payment) AS first_payment_sum,
    AVG(goods_price) AS goods_price_mean,
    SUM(goods_price) AS goods_price_sum
FROM 
    TA4_DATASET_PREVIOUS_LOAN
GROUP BY 
    reco_id_curr
