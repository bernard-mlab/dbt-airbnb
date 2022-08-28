select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      SELECT
  l.*
FROM
  airbnb.dev.dim_listings_cleansed AS l
  INNER JOIN airbnb.dev.fct_reviews AS r
    ON l.listing_id = r.listing_id
WHERE
  l.created_at >= r.review_date
      
    ) dbt_internal_test