# Northwoods Interview Kata

# Background
This simulates the task of supervisors assigning workers to varying client visits. 
## _Supervisor use case:_

As a supervisor
    In order to assign workers to client visits
        I need to know which case workers are available

## _Caseworker_
    1. Has work hours
    2. Has experience level (junior, mid, senior)
	     - Junior takes full allocated time
	     - Mid level and senior can do visits in 75% and 50% of junior time, respectively)

## _Supervisor_

    1. Supervises multiple case workers
    2. Must assign a worker to a client visit

## _Visits_ 
    1. Has urgency
        - Normal visits must leave clients no later than 6PM
        - Urgent visits disregard any time deadlines
    2. Reason
        - Check-in 
            - Takes a half hour plus 15 minutes for paperwork
            - Pefer junior caseworker first, but send anyone
        - Abuse investigation 
             - Takes 2 hours - plus 20 minutes for paperwork
             - Prefer mid level caseworker first, but send anyone
        - Intervention 
            - Takes 3 hours plus 30 minutes for paperwork
            - Must be senior
    3. Has travel time (assume from home office)
    4. All visits other than urgent must end with paperwork completed by 6:00PM
