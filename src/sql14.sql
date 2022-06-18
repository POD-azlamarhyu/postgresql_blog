select * from individual_stock_info where current_value between 1000 and 10000;

select stock_id,market_id,ticker_simbol from individual_stock_info where current_value not between 1000 and 10000;

select stock_id,market_id,ticker_simbol,listed_date from individual_stock_info where listed_date not between '2000-01-01' and '2022-06-11';

select stock_id,market_id,ticker_simbol,listed_date from individual_stock_info where listed_date between '2000-01-01' and '2022-06-11';

