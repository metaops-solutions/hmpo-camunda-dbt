SELECT
    id,
    address_id as addressid,
    place_of_death_type as type,
    length_of_stay_in_ce as lengthofstayince,
    place_of_death_type_code as typecode
FROM {{ source('application_raw_data', 'registered_place_of_death') }} 