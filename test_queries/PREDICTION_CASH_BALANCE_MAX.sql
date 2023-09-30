SELECT reco_id_curr, max(months_balance) as max_months_balance,
                    installment_count as max_installment_count, installment_future_count as max_installment_future_count,
                    contract_status_name as max_contract_status_name
FROM TA4_PREDICTION_CASH_BALANCE
GROUP BY reco_id_curr