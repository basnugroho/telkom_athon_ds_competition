SELECT 
    reco_id_curr,
    COUNT(DISTINCT reco_bureau_id) AS bureau_count,
    AVG(credit_day_overdue) AS credit_day_overdue_mean,
    AVG(credit_sum) AS credit_sum_mean,
    SUM(credit_sum) AS credit_sum_sum,
    AVG(credit_sum_overdue) AS credit_sum_overdue_mean,
    AVG(credit_sum_debt) AS credit_sum_debt_mean,
    SUM(credit_sum_debt) AS credit_sum_debt_sum,
    AVG(credit_sum_limit) AS credit_sum_limit_mean,
    AVG(annuity_payment) AS annuity_payment_mean,
    SUM(CASE WHEN credit_status = 'Active' THEN 1 ELSE 0 END) AS Active,
    SUM(CASE WHEN credit_status = 'Closed' THEN 1 ELSE 0 END) AS Closed,
    SUM(CASE WHEN credit_status = 'Sold' THEN 1 ELSE 0 END) AS Sold,
    SUM(CASE WHEN credit_status = 'Bad Debt' THEN 1 ELSE 0 END) AS Bad_Debt
FROM 
    TA4_PREDICTION_BKI
GROUP BY 
    reco_id_curr