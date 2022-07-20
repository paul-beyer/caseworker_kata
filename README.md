# Northwoods Kata

# Background
In this exercise, you will incrementally be building out a domain model that provides the ability for a Supervisor to find available workers that are eligible to be assigned to client visits. 

## _Iteration 1 - Foundation_

### Feature: Create a Worker 
As a worker I need to have a name and the start and end time of my day so that I can be assingned to visits. 
 - Can set and get name
 - Can set and get start time
 - Can set and get end time

### Feature: Create a supervisor
As a supervisor I have a list of workers assinged to me.  
- Can get and set a collection of workers on the supervisor. 

### Feature: Create a visit
Visits have a durations and start time. 
- Can get and set a duration. 
- Can get and set start time. 

### Feature: Supervisor can provide a list of users who can make a visit. 
As a supervisor I can accept a visit and determine which workers are eligible to make that visit.
- Can accept a visit. 
- An eligible worker must not have the visit extend beyond their workday. 
- Can return a list of eligible workers. 

## _Iteration 2_  - Scheduling visits

### Feature: A worker can be assigned to a visit.
As a visit, I must be able to have a worker assigned to me. 
- A visit can get and set a worker. 

### Feature: A supervisor has visits to manage. 
As a supervisor, I must be able to accept a list of visits so that I can assign workers to them
- Can get and set a list of visits. 

### Feature: A supervisor can schedule a day's worth of visits. 
As a supervisor with a list of visits for the day, I can assign workers to those visits. In today's world a worker can only do one visit a day.
- Supervisor can return a list of visits with workers assigned. 

### Feature: A supervisor can schedule a day's worth of visits and assign workers multiple times. 
As a supervisor with a list of visits for the day, I can assign workers to those visits. I can also assign workers multiple times a day. 
- Supervisor returns a list of visits.
- Multiple visits can have the same worker, as long as durations do not overlap. 

## _Iteration 3 - Scheduling constraints_

### Feature: Workers have experience levels
As a worker I have an experience level that I've achieved. 
 - Experience levels are `junior`, `mid`, `senior`
 - Can get and set experience levels
 
### Feature: Visits vary by type, urgency, and duration
As a visit, I have different types, urgencies, and durations. My durations are determined by type. 
 - A visit can be `check-in`, `abuse-investigation`, or `intervention`
 - Can get and set type
 - A visit can be `urgent`
 - Can get and set urgency
 - Duration for `check-in` is `45 minutes`
 - Duration for `abuse-investigation` is `2 hours`
 - Duration for `intervention` is `3 hours`
 - Add `check-in` as default duration during visit creation
 - Set duration based on type
 
### Feature: Worker experience requirements
As a Supervisor, I require a worker with an appropriate level of experience. 
 - A junior worker can do check-ins
 - A mid worker can do check-ins and abuse-investigations
 - A senior worker can do check-ins, abuse-investigations, and interventions
 - Prefer the lowest skill level available when assigning to a visit
 - Schedule workers to visit based on experience level in addition to availability

## _Iteration 4 Bonus - Considering skill levels_

### Feature: Higher experience levels result in quicker visits
A user with a higher level of experience can do visits quicker than more junior people
 - Mid level workers can do check-ins in 75% of the time it takes juniors
 - Senior level workers can do check-ins in 50% of the time it takes a junior
 - Senior level workers can do abuse-investigations in 75% of the time it takes mid level workers
 - Add this calculation when assinging a worker to a visit
 - Test creating an entire schedule for a day
 
