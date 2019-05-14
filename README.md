# Coster.io

First create a temp working folder, and navigate inside it. 
Clone this repo here: `git clone https://github.com/marton-bod/Coster.io.git`
Stay in the root of this temp working folder (without cd-ing into the above checked-out repo) when issuing the below commands.

### Checkout apps from GitHub:
* Run: `bash Coster.io/scripts/gitCloneProjects.sh`

### Run all apps:
* navigate into `Coster.io/scripts` and execute `docker-compose up`
* This will start the Spring Boot microservices on ports: 9000, 9001, 9002, 9003
  and a containerized PostgreSQL on port 5432
* Browser session for React app will automatically open on localhost:3000

### Stop all apps:
- End the `docker-compose` task
