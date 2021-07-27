-- Drop the table is exists
DROP TABLE IF EXISTS company_df;
DROP TABLE IF EXISTS tweet_df;
DROP TABLE IF EXISTS company_tweet;

-- Create company_df table for raw data to be loaded into
CREATE TABLE company_df (
    ticker_symbol VARCHAR(7) NOT NULL,
    company_name VARCHAR(25) NOT NULL,
    PRIMARY KEY (ticker_symbol)
       
);


-- Create Tweet table for raw data to be loaded into
CREATE TABLE tweet_df (
    tweet_id INT NOT NULL,
    writer VARCHAR(40) NOT NULL,
    post_date INT NOT NULL,
    body VARCHAR(200) NOT NULL,	
    comment_num INT NOT NULL,
    retweet_num	INT NOT NULL,	
    like_num INT NOT NULL,
    PRIMARY KEY (tweet_id)
);

-- Create company_tweet, this is a junction table
CREATE TABLE company_tweet (
    tweet_id INT REFERENCES tweet_df(tweet_id),
    ticker_symbol VARCHAR(7) REFERENCES company_df(ticker_symbol),
    PRIMARY KEY (tweet_id, ticker_symbol)
);

-- Joins tables
