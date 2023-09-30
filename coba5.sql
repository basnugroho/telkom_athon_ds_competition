(
    SELECT *
    FROM TA4_DATASET_CREDIT_APPLICATION tdca
    RIGHT JOIN TA4_DATASET_TARGET tdt ON tdca.reco_id_curr = tdt.reco_id_curr
    WHERE tdt.target = 1
    LIMIT 7000
)

UNION ALL

(
    SELECT *
    FROM TA4_DATASET_CREDIT_APPLICATION tdca
    RIGHT JOIN TA4_DATASET_TARGET tdt ON tdca.reco_id_curr = tdt.reco_id_curr
    WHERE tdt.target = 0
    LIMIT 7000
)
