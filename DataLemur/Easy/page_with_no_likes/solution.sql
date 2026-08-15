SELECT 
  pg.page_id 
FROM pages pg 
LEFT JOIN page_likes pl 
  ON pg.page_id = pl.page_id 
WHERE pl.page_id IS NULL
ORDER BY pg.page_id ASC;