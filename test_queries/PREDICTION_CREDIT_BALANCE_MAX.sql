SELECT reco_id_curr, max(months_balance) as max_cred_months_balance, balance as l_cred_balance,
                    credit_limit as l_credit_limit, drawings_atm as l_drawings_atm, drawings as l_drawings,
                    drawings_other as l_drawings_other, drawings_pos as l_drawings_pos,
                    minimal_payment as l_minimal_payment, payment_now as l_minimal_payment,
                    payment_total_now as l_payment_total_now, receivable as l_receivable,
                    total_receivable as l_total_receivable, drawings_atm_count as l_drawings_atm_count,
                    drawings_count as l_drawings_count, drawings_other_count as l_drawings_other_count,
                    drawings_pos_count as l_drawings_pos_count, installment_mature_cum_count as l_installment_mature_cum_count,
                    contract_status_name as l_contract_status_name
FROM TA4_PREDICTION_CREDIT_BALANCE
GROUP BY reco_id_curr;