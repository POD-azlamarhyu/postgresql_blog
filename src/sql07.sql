INSERT INTO anime_info (anime_name,onair,cool_term) VALUES ('SPY FAMILY','2022年春季',1);

INSERT INTO anime_info (anime_name,onair,cool_term) VALUES ('カッコウの許嫁','2022年春季',1);

INSERT INTO anime_info (anime_name,onair,cool_term) VALUES ('かぐや様は告らせたい','2022年春季',1),
('デート・ア・ライブIV','2022年春季',1),
('トモダチゲーム','2022年春季',1);

INSERT INTO individual_stock_info(market_id,ticker_simbol,current_value,listed_date) VALUES (1,'AMZN',100.32,'2004-04-01'),(2,'SAS',3333.33,'2000-08-01'),(1,'TAAS',1000002.44,'2000-01-01'),(4,'SEMT',394,'2014-09-11');

INSERT INTO market_info(market_name,contry_name,currency,establish_date,listed_company_number,location) VALUES ('Nosdaq','アメリカ合衆国','USドル','1990-01-11',30000,'アメリカ合衆国　ニューヨーク州'),('NYSE','アメリカ合衆国','USドル','1989-03-11',50000,'アメリカ合衆国　ニューヨーク州'),('東証プライム','大日本帝国','円','1200-12-11',3500,'大日本帝国　帝都東京'),('札証プライム','大日本帝国','円','2000-03-11',3500,'大日本帝国　副都札幌');

insert into individual_stock_info_history(stock_id,ticker_simbol,current_value) select individual_stock_info.stock_id,individual_stock_info.ticker_simbol,individual_stock_info.current_value from individual_stock_info where individual_stock_info.stock_id = 7;

insert into company_info(stock_id,company_name,company_name_english,post_code,headquarters_location,established_date,industry_type,company_industry) values (1,'アマゾン・コムドット','amazon com.',1111111,'アメリカ　サンフランシスコ','2000-01-01','情報・通信','ECサイト運営、クラウドサービス'),(2,'サステナビリティ・アソシエイト・サービス','sas Inc.',1444111,'アメリカ　シアトル','2000-01-01','情報・通信',''),(4,'セイコーマート','seicomart',1111111,'大日本帝国　副都札幌','2000-01-01','小売','コンビニエンスストア運営'),(10,'ソナイー','SONAY',1670033,'大日本帝国　帝都東京','2000-01-01','','ECサイト運営、クラウドサービス');

insert into company_info(stock_id,company_name,company_name_english,post_code,headquarters_location,established_date,industry_type,company_industry) values (1,'三菱UFJB','mitsubishi ufjb',1111333,'大日本帝国','2000-01-01',null,null);