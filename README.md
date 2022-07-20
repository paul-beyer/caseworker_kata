# Northwoods Interview Kata

# Background
This simulates the task of supervisors assigning workers to varying client visits. 
## _Supervisor use case:_

As a supervisor
    In order to assign workers to client visits
        I need to know which case workers fit the criteria to be assinged to a case

## __CaseWorker_

    1. Has work hours. 
    2. Has an experience level (junior, mid, senior)

## _Supervisor_

    1. Has work hours. 
    1. Has multiple caseworkers assigned to them
    2. Must assign a specific worker to a client visit

## _Visits_ 
    1. Has urgency
        - Normal visits must leave clients no later than 6PM
        - Urgent visits disregard any time of day constraints
    2. Reason
        - Check-in 
            - Takes a half hour plus 15 minutes for paperwork
            - Pefer junior caseworker first, but can send anyone
        - Abuse investigation 
             - Takes 2 hours plus 45 minutes for paperwork
             - Prefer mid level caseworker first, but can send senior
        - Intervention 
            - Takes 3 hours plus 30 minutes for paperwork
            - Must be senior
    3. Has travel time (assume from home office)
    4. All visits other than urgent must end with paperwork completed by 6:00PM
    5. Mid and senior Caseworkers can do visits in 75% and 50% of junior time, respectively.
