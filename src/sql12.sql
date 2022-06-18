select distinct * from individual_stock_info_history;

select distinct stock_id,ticker_simbol from individual_stock_info_history;

select distinct on(stock_id) * from individual_stock_info_history;

select distinct on(stock_history_id) * from individual_stock_info_history;

select distinct on(ticker_simbol) * from individual_stock_info_history;

select distinct on(current_value) * from individual_stock_info_history;

select distinct on(stock_id) stock_history_id,stock_id,ticker_simbol,current_value from individual_stock_info_history;
