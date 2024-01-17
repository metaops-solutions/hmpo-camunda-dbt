SELECT
    id,
    addressid,
    type,
    typecode
FROM {{ ref('stg_registered_place_of_death') }} as registered_place_of_death