select * from individual_stock_info where current_value > 1000 order by desc listed_date;

select * from market_info where currency = '円' or market_name='東証プライム';

select * from market_info where currency = 'USドル' and listed_company_number > 30000;

select * from character_name_info order by asc market_id;

select * from market_info order by desc listed_company_number;

select * from individual_stock_info order by asc current_value;

