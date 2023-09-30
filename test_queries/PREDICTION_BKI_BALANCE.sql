SELECT reco_bureau_id, MIN(months_balance), stat_for_bureau
FROM TA4_PREDICTION_BKI_BALANCE
WHERE months_balance = -1
GROUP BY reco_bureau_id