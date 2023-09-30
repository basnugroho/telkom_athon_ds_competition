SELECT reco_id_curr, AVG(annuity_payment), AVG(loan_body_requested), AVG(loan_body), avg(first_payment),
       AVG(goods_price), AVG(hour_of_approval_process_start), AVG(down_payment_rate), AVG(days_decision),
       AVG(area_seller_place), AVG(days_first_drawing), AVG(days_first_due), AVG(first_due_date),
       AVG(termination_date)
FROM TA4_PREDICTION_PREVIOUS_LOAN
GROUP BY reco_id_curr;