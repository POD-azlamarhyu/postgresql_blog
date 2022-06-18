select isi.ticker_simbol,isi.current_value - 1000 from individual_stock_info as isi;

select isi.ticker_simbol,isi.current_value * 1.12 from individual_stock_info as isi;

select isi.ticker_simbol,(isi.current_value / 3) as cv_s from individual_stock_info as isi;

select isi.ticker_simbol,abs(isi.current_value) from individual_stock_info as isi;


select isi.ticker_simbol,div(isi.current_value) from individual_stock_info as isi;

select isi.ticker_simbol,exp(isi.current_value) from individual_stock_info as isi;

select isi.ticker_simbol,floor(isi.current_value) from individual_stock_info as isi;

select isi.ticker_simbol,mod(isi.current_value,100) from individual_stock_info as isi;

select isi.ticker_simbol,round(isi.current_value,100) from individual_stock_info as isi;

select isi.ticker_simbol,trunc(isi.current_value * 1.12) from individual_stock_info as isi;

select isi.ticker_simbol,trunc(isi.current_value * random()) from individual_stock_info as isi;


