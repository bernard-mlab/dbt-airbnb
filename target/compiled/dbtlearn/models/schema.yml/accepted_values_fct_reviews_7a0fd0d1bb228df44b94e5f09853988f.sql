
    
    

with all_values as (

    select
        reviewer_sentiment as value_field,
        count(*) as n_records

    from airbnb.dev.fct_reviews
    group by reviewer_sentiment

)

select *
from all_values
where value_field not in (
    'positive','neutral','negative'
)


