SELECT
    processes.id,
    processes.starttime,
    processes.endtime,
    processes.state,
    processes.processdefinitionname,
    death_registration_records.district,
    place_of_death.type
FROM {{ ref('fct_processes') }} as processes
LEFT JOIN  {{ ref('fct_death_registration_records') }} as death_registration_records
ON ( processes.businesskey = death_registration_records.id   )
LEFT JOIN {{ ref('fct_place_of_death') }} as place_of_death
ON ( place_of_death.id = death_registration_records.registrationplacedetailsid  )