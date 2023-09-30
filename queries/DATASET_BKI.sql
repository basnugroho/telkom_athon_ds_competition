SELECT reco_id_curr, reco_bureau_id, credit_status last_credit_status,
       MAX(days_credit) as max_days_credit,  credit_sum, credit_currency,
       days_credit, credit_day_overdue, days_credit_enddate, days_enddate_fact, credit_limit_max_overdue,
       credit_prolong_count, credit_sum_limit, credit_sum_overdue,
       days_credit_update
FROM
TA4_DATASET_BKI bki
GROUP BY reco_id_curr