update anime_info set onair='2022年';

update individual_stock_info set ticker_simbol = 'SAAS' where market_id = 2;

update individual_stock_info set ticker_simbol = 'TAS', current_value = 10000, listed_date = '1999-11-21' where stock_id = 3;

update individual_stock_info set current_value = 153, where stock_id = 7;

update individual_stock_info set current_value = current_value*1.4;

update individual_stock_info_history set current_value = 2401 where stock_id = 7;

update individual_stock_info_history set current_value = (
     select individual_stock_info.current_value from individual_stock_info where stock_id = 7
) where stock_history_id=3;

update individual_stock_info_history set current_value = individual_stock_info.current_value from individual_stock_info where individual_stock_info.stock_id = individual_stock_info_history.stock_id;

update individual_stock_info_history set current_value = individual_stock_info.current_value from individual_stock_info where individual_stock_info.stock_id = individual_stock_info_history.stock_id and individual_stock_info.stock_id >= 9;


--  anime_id |      anime_name      | onair  | cool_term 
-- ----------+----------------------+--------+-----------
--         1 | SPY FAMILY           | 2022年 |         1
--         2 | カッコウの許嫁       | 2022年 |         1
--         3 | かぐや様は告らせたい | 2022年 |         1
--         4 | デート・ア・ライブIV | 2022年 |         1
--         5 | トモダチゲーム       | 2022年 |         1

--  anime_id |      anime_name      |    onair     | cool_term 
-- ----------+----------------------+--------------+-----------
--         1 | SPY FAMILY           | 2022年 4-6月 |         1
--         2 | カッコウの許嫁       | 2022年 4-6月 |         1
--         3 | かぐや様は告らせたい | 2022年 4-6月 |         1
--         4 | デート・ア・ライブIV | 2022年 4-6月 |         1
--         5 | トモダチゲーム       | 2022年 4-6月 |         1