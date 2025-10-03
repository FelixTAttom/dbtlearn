select 
    * 
from {{ ref('fct_reviews') }} as r 
    join {{ ref('dim_listings_cleansed') }} as l
    using (listing_id)
where l.created_at >= r.review_date