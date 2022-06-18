select * from individual_stock_info_history where current_value is not null;

select * from individual_stock_info where listed_date is null;

select * from company_info where established_date is not null;

select distinct on(stock_id) * from company_info where established_date is not null;

select * from company_info where company_industry is null;
