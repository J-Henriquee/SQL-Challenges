WITH tweets_count AS (
  SELECT 
    user_id, 
    COUNT(tweet_id) AS tweet_num 
  FROM tweets
  WHERE tweet_date >= '2022-01-01' AND tweet_date < '2023-01-01'
  GROUP BY user_id
)

SELECT 
  tweet_num AS tweet_bucket, 
  COUNT(user_id) AS users_num
FROM tweets_count
GROUP BY tweet_num;