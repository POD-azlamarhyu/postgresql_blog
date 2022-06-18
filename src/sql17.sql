update individual_stock_info_history as isih set current_value = isi.current_value from individual_stock_info as isi where isi.stock_id = isih.stock_id;

update individual_stock_info_history as isih set current_value = isi.current_value from individual_stock_info as isi where isi.stock_id = isih.stock_id and isi.stock_id >= 10;

insert into individual_stock_info_history(stock_id,ticker_simbol,current_value) select isi.stock_id,isi.ticker_simbol,isi.current_value from individual_stock_info as isi where isi.stock_id = 7;

select stock_id as kabushiki_id,market_id as shijou_id,ticker_simbol,listed_date as joujoubi from individual_stock_info as isi where listed_date not between '2000-01-01' and '2022-06-11';


select stock_id as "株式ID",market_id as "市場ID",ticker_simbol as "ティッカー名",listed_date as "上場日" from individual_stock_info as isi where listed_date between '2000-01-01' and '2022-06-11';

