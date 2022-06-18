select isih.ticker_simbol from individual_stock_info_history as isih group by isih.ticker_simbol;

select isih.stock_id,isih.ticker_simbol from individual_stock_info_history as isih group by isih.stock_id ,isih.ticker_simbol;

select isih.ticker_simbol,isih.current_value from individual_stock_info_history as isih where isih.current_value > 450 group by isih.current_value,isih.ticker_simbol;
