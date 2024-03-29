SELECT
    activities.id,
    activities.starttime,
    activities.endtime,
    EXTRACT(EPOCH FROM (activities.endtime - activities.starttime)) as duration_seconds,
    activities.activityid,
    activities.activityname,
    processes.id as processes_id,
    death_registration_records.district,
    place_of_death.type
FROM {{ ref('fct_activities') }} as activities
LEFT JOIN {{ ref('fct_processes') }} as processes
ON ( activities.processinstanceid = processes.id )
LEFT JOIN  {{ ref('fct_death_registration_records') }} as death_registration_records
ON ( processes.businesskey = death_registration_records.id   )
LEFT JOIN {{ ref('fct_place_of_death') }} as place_of_death
ON ( place_of_death.id = death_registration_records.registrationplacedetailsid  )