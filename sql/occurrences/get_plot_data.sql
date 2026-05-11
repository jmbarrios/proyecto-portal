-- name: get_plot_data(plot)
-- Obteniene los datos de la parcela solicitada
SELECT 
    *
FROM 
    Surveys
WHERE
    plot = :plot;