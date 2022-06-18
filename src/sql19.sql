select anime_id,character_name from character_name_info
union
select anime_id,anime_name from anime_info;

select distinct on(isih.stock_id) isih.stock_history_id, isih.stock_id,ticker_simbol,isih.current_value from individual_stock_info_history as isih
union all
select distinct on(isi.stock_id) isi.stock_id,isi.market_id,isi.ticker_simbol,isi.current_value from individual_stock_info as isi;

select * from individual_stock_info order by asc current_value;

select isih.stock_history_id, isih.stock_id,ticker_simbol,isih.current_value from individual_stock_info_history as isih
union
select isi.stock_id,isi.market_id,isi.ticker_simbol,isi.current_value from individual_stock_info as isi;

select isih.stock_history_id, isih.stock_id,ticker_simbol,isih.current_value from individual_stock_info_history as isih
except
select isi.stock_id,isi.market_id,isi.ticker_simbol,isi.current_value from individual_stock_info as isi;

select isih.stock_history_id, isih.stock_id,ticker_simbol,isih.current_value from individual_stock_info_history as isih
intersect
select isi.stock_id,isi.market_id,isi.ticker_simbol,isi.current_value from individual_stock_info as isi;