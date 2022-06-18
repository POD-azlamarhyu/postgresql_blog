select * from individual_stock_info where stock_id = 2;

select * from individual_stock_info where current_value > 1000;

select * from market_info where currency = '円' or market_name='東証プライム';

select * from market_info where currency = 'USドル' and listed_company_number > 30000;

