 SELECT 
    reco_id_curr,
    AVG(months_balance) AS months_balance_mean,
    AVG(months_balance) AS months_balance_median,
    AVG(installment_count) AS installment_count_mean,
    SUM(installment_count) AS installment_count_sum,
    AVG(installment_count) AS installment_count_median,
    AVG(installment_future_count) AS installment_future_count_mean,
    SUM(installment_future_count) AS installment_future_count_sum,
    AVG(installment_future_count) AS installment_future_count_median,
    AVG(reco_dpd) AS reco_dpd_mean,
    SUM(reco_dpd) AS reco_dpd_sum,
    AVG(reco_dpd) AS reco_dpd_median,
    AVG(reco_dpd_def) AS reco_dpd_def_mean,
    SUM(reco_dpd_def) AS reco_dpd_def_sum,
    AVG(reco_dpd_def) AS reco_dpd_def_median,
    SUM(CASE WHEN contract_status_name = 'Active' THEN 1 ELSE 0 END) AS Active,
    SUM(CASE WHEN contract_status_name = 'Completed' THEN 1 ELSE 0 END) AS Completed,
    SUM(CASE WHEN contract_status_name = 'Returned to the store' THEN 1 ELSE 0 END) AS `Returned to the store`,
    SUM(CASE WHEN contract_status_name = 'Signed' THEN 1 ELSE 0 END) AS Signed,
    SUM(CASE WHEN contract_status_name = 'Demand' THEN 1 ELSE 0 END) AS Demand,
    SUM(CASE WHEN contract_status_name = 'Approved' THEN 1 ELSE 0 END) AS Approved
FROM 
    TA4_DATASET_CASH_BALANCE
GROUP BY 
    reco_id_curr