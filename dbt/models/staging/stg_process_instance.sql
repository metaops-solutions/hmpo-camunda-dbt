SELECT DISTINCT ON (id)
    id, state, endtime, starttime, businesskey, removaltime, startactivityid, durationinmillis, processdefinitionid, processdefinitionkey, processdefinitionname, rootprocessinstanceid, superprocessinstanceid, processdefinitionversion 
FROM (  SELECT id, state, endtime, starttime, businesskey, removaltime, startactivityid, durationinmillis, processdefinitionid, processdefinitionkey, processdefinitionname, rootprocessinstanceid, superprocessinstanceid, processdefinitionversion FROM process_instance_startedafter
        UNION  
        SELECT id, state, endtime, starttime, businesskey, removaltime, startactivityid, durationinmillis, processdefinitionid, processdefinitionkey, processdefinitionname, rootprocessinstanceid, superprocessinstanceid, processdefinitionversion FROM process_instance_finishedafter
) AS merged 
ORDER BY id, endtime
