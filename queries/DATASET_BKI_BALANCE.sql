SELECT reco_bureau_id, MIN(months_balance), stat_for_bureau
FROM TA4_DATASET_BKI_BALANCE
GROUP BY reco_bureau_id