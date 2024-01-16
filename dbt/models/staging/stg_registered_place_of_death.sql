SELECT
    id as pod_id,
    address_id as pod_addressid,
    place_of_death_type as pod_type,
    length_of_stay_in_ce as pod_lengthofstayince,
    place_of_death_type_code as pod_typecode
FROM {{ source('application_raw_data', 'registered_place_of_death') }} 