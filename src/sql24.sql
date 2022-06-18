select ci.company_id,ci.stock_id,ci.company_name,ci.headquarters_location,industry_type,isi.market_id,isi.ticker_simbol,isi.current_value from company_info as ci left join individual_stock_info as isi on ci.stock_id = isi.stock_id where isi.ticker_simbol like '%A%' group by isi.stock_id,ci.company_id;


select isi.stock_id,isi.ticker_simbol,isi.current_value from individual_stock_info_history as isih left join individual_stock_info as isi on isih.stock_id = isi.stock_id where isi.current_value > 500 group by isih.stock_history_id,isi.stock_id;

select isi.stock_id,isi.ticker_simbol,isi.current_value from individual_stock_info_history as isih left join individual_stock_info as isi on isih.stock_id = isi.stock_id group by isih.stock_history_id,isi.stock_id having isi.current_value > 500;

select isi.stock_id,isi.ticker_simbol,isi.current_value from individual_stock_info_history as isih left join individual_stock_info as isi on isih.stock_id = isi.stock_id having isi.current_value > 500 group by isih.stock_history_id,isi.stock_id;
