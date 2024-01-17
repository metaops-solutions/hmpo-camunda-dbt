SELECT
    id,
    comment as district,
    createdat,
    registrationdate,
    registrationplacedetailsid
FROM {{ ref('stg_death_registration_record') }} as death_registration_records