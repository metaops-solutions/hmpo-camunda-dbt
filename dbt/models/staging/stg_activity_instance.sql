SELECT DISTINCT ON (id)
    id, taskid, endtime, canceled, starttime, activityid, executionid, removaltime, activityname, activitytype, completescope, durationinmillis, processinstanceid, processdefinitionid, processdefinitionkey, rootprocessinstanceid, calledprocessinstanceid, parentactivityinstanceid 
FROM (  SELECT id, taskid, endtime, canceled, starttime, activityid, executionid, removaltime, activityname, activitytype, completescope, durationinmillis, processinstanceid, processdefinitionid, processdefinitionkey, rootprocessinstanceid, calledprocessinstanceid, parentactivityinstanceid FROM activity_instance_startedafter
        UNION  
        SELECT id, taskid, endtime, canceled, starttime, activityid, executionid, removaltime, activityname, activitytype, completescope, durationinmillis, processinstanceid, processdefinitionid, processdefinitionkey, rootprocessinstanceid, calledprocessinstanceid, parentactivityinstanceid FROM activity_instance_finishedafter
) AS merged 
ORDER BY id, endtime
