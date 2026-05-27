SELECT
    CASE NAME
        WHEN 'JPMORGAN CHASE BANK NA'    THEN 'JPMorgan Chase'
        WHEN 'BANK OF AMERICA NA'         THEN 'Bank of America'
        WHEN 'WELLS FARGO BANK NA'        THEN 'Wells Fargo'
        WHEN 'CITIBANK NATIONAL ASSN'     THEN 'Citibank'
        WHEN 'GOLDMAN SACHS BANK USA'     THEN 'Goldman Sachs'
        WHEN 'MORGAN STANLEY BANK NA'     THEN 'Morgan Stanley'
        WHEN 'PNC BANK NATIONAL ASSN'     THEN 'PNC Bank'
        WHEN 'TRUIST BANK'                THEN 'Truist Bank'
        WHEN 'CAPITAL ONE NATIONAL ASSN'  THEN 'Capital One'
        WHEN 'CAPITAL ONE BANK USA NA'    THEN 'Capital One USA'
    END                                        AS bank_name,

    CAST(REPDTE AS DATE)                       AS report_date,
    YEAR(CAST(REPDTE AS DATE))                 AS year,
    QUARTER(CAST(REPDTE AS DATE))              AS quarter,

    ROUND(ASSET    / 1000000.0, 2)             AS total_assets_billions,
    ROUND(NETINC   / 1000000.0, 2)             AS net_income_billions,
    ROUND(INTINC   / 1000000.0, 2)             AS interest_income_billions,
    ROUND(EINTEXP  / 1000000.0, 2)             AS interest_expense_billions,
    ROUND(DEP      / 1000000.0, 2)             AS total_deposits_billions,
    ROUND(LNLSNET  / 1000000.0, 2)             AS net_loans_billions,
    ROUND(EQ       / 1000000.0, 2)             AS total_equity_billions,
    ROUND(NIM      / 1000000.0, 2)             AS net_interest_margin_billions,
    ROUND(ROA, 2)                               AS return_on_assets_pct,
    ROUND(ROE, 2)                               AS return_on_equity_pct,
    FED_RATE                                    AS fed_funds_rate_pct

FROM banks
WHERE NAME IS NOT NULL
ORDER BY bank_name, report_date