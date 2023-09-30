SELECT reco_id_curr, reco_id_last, min(months_balance) as min_cred_months_balance, balance as f_cred_balance,
                    credit_limit as f_credit_limit, drawings_atm as f_drawings_atm, drawings as f_drawings,
                    drawings_other as f_drawings_other, drawings_pos as f_drawings_pos,
                    minimal_payment as f_minimal_payment, payment_now as f_minimal_payment,
                    payment_total_now as f_payment_total_now, receivable as f_receivable,
                    total_receivable as f_total_receivable, drawings_atm_count as f_drawings_atm_count,
                    drawings_count as f_drawings_count, drawings_other_count as f_drawings_other_count,
                    drawings_pos_count as f_drawings_pos_count, installment_mature_cum_count as f_installment_mature_cum_count,
                    contract_status_name as f_contract_status_name
FROM TA4_PREDICTION_CREDIT_BALANCE
GROUP BY reco_id_curr;