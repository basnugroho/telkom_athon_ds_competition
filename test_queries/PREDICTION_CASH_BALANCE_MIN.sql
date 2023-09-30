SELECT reco_id_curr, reco_id_last, min(months_balance) as min_months_balance,
                     installment_count as min_installment_count, 
                     installment_future_count as min_installment_future_count, 
                     contract_status_name as min_contract_status_name
FROM TA4_PREDICTION_CASH_BALANCE
GROUP BY reco_id_curr