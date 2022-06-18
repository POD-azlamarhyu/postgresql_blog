create table if not exists user_info(
    user_id UUID PRIMARY KEY NOT NULL DEFAULT gen_random_uuid(),
    email VARCHAR(225) not null UNIQUE,
    password VARCHAR(1000) not null CHECK(length(password)>8),
    is_admin BOOLEAN DEFAULT false,
    last_login TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

create table if not exists user_profile_info(
    profile_id SERIAL PRIMARY KEY not NULL,
    user_id INTEGER not null,
    nickname VARCHAR(100),
    bio VARCHAR(500),
    link VARCHAR(1000),
    icon bytea,
    bg_image bytea,
    age INTEGER(100000),
    created_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

create table if not exists tweet_info(
    tweet_id SERIAL PRIMARY KEY NOT NULL,
    user_id INTEGER not null,
    text VARCHAR(500),
    tweet_image bytea,
    tweet_video bytea,
    created_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    delete_flag SMALLINT DEFAULT 0
);

create table if not exists character_name_info(
    character_id SERIAL PRIMARY KEY NOT NULL,
    anime_id INTEGER NOT NULL,
    character_name VARCHAR(1000) NOT NULL,
    character_age SMALLINT,
    character_sex SMALLINT
);

create table if not exists anime_info(
    anime_id SERIAL PRIMARY KEY not null,
    anime_name VARCHAR(500) not null,
    onair VARCHAR(10),
    cool_term INTEGER
);

CREATE TABLE IF NOT EXISTS individual_stock_info(
    stock_id SERIAL PRIMARY KEY NOT NULL,
    market_id INTEGER NOT NULL,
    ticker_simbol VARCHAR(10) NOT NULL,
    current_value INTEGER,
    listed_date DATE,
    created_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS company_info(
    company_id SERIAL  PRIMARY KEY NOT NULL,
    stock_id INTEGER NOT NULL,
    company_name VARCHAR(500) NOT NULL,
    company_name_english VARCHAR(500) NOT NULL,
    post_code SMALLINT NOT NULL,
    headquarters_location VARCHAR(100),
    established_date DATE NOT NULL,
    industry_type VARCHAR(100),
    company_industry VARCHAR(1000)
);

CREATE TABLE IF NOT EXISTS company_reference_info(
    reference_id SERIAL  PRIMARY KEY NOT NULL,
    stock_id INTEGER NOT NULL,
    market_value REAL NOT NULL,
    dividend_yield REAL NOT NULL,
    per REAL NOT NULL,
    pbr REAL NOT NULL,
    eps REAL NOT NULL,
    bps REAL NOT NULL
);

CREATE TABLE IF NOT EXISTS market_info(
    market_id SERIAL PRIMARY KEY NOT NULL,
    market_name VARCHAR(100) NOT NULL,
    contry_name VARCHAR(50) NOT NULL,
    currency VARCHAR(15) NOT NULL,
    establish_date DATE,
    listed_company_number INTEGER,
    location VARCHAR(100),
    created_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS stock_market_index_info(
    index_id SERIAL PRIMARY KEY NOT NULL,
    market_id INTEGER NOT NULL,
    index_name VARCHAR(50) NOT NULL,
    constituent_stocks INTEGER,
    index_point REAL,
    created_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS individual_stock_info_history(
    stock_history_id SERIAL PRIMARY KEY NOT NULL,
    stock_id INTEGER NOT NULL,
    ticker_simbol VARCHAR(10) NOT NULL,
    current_value INTEGER,
    created_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE tweet_info;

ALTER TABLE company_reference_info ADD COLUMN divided_yield_one REAL;

ALTER TABLE company_reference_info ALTER COLUMN divided_yield_one TYPE REAL;

ALTER TABLE company_info ALTER COLUMN headquatuer_location TYPE TEXT;

ALTER TABLE company_info DROP COLUMN created_on;

ALTER TABLE company_info RENAME TO conpany_detail_info;

ALTER TABLE company_info ADD CONSTRAINT oto_stock_id FOREIGN KEY(stock_id) REFERENCES individual_stock_info(stock_id);

ALTER TABLE company_info ADD CHECK (length(post_code)=7);

ALTER TABLE market_info ADD CONSTRAINT fk_market_id FOREIGN KEY(stock_id) REFERENCES individual_stock_info(stock_id) ON DELETE CASCADE ON UPDATE CASCADE;

