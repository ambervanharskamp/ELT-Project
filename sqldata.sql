-- Drop the table is exists
DROP TABLE IF EXISTS company_index;
DROP TABLE IF EXISTS tweet_df_new;
DROP TABLE IF EXISTS tweet_index;

-- Create company_df table for raw data to be loaded into
CREATE TABLE company_index (
    id INT NOT NULL,
    ticker_symbol VARCHAR(7) NOT NULL,
    company_name VARCHAR(25) NOT NULL,
    PRIMARY KEY (id)
       
);

-- Create Tweet table for raw data to be loaded into
CREATE TABLE tweet_df_new (
    tweet_id BIGINT NOT NULL,
    post_date BIGINT NOT NULL,
    body VARCHAR NOT NULL,	
    comment_num INT NOT NULL,
    retweet_num	INT NOT NULL,	
    like_num INT NOT NULL,
	PRIMARY KEY (tweet_id)
);

-- Create company_tweet, this is a junction table
CREATE TABLE tweet_index (
	id INT NOT NULL,
    tweet_id BIGINT NOT NULL,
    ticker_symbol VARCHAR NOT NULL,
    PRIMARY KEY (id )
);
-- Joins tables
