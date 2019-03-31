# Coster.io

First create a temp working folder, and navigate inside it. 
Clone this repo here: `git clone https://github.com/marton-bod/Coster.io.git`
Stay in the root of this temp working folder (without cd-ing into the above checked-out repo) when issuing the below commands.

### Checkout apps from GitHub:
* Run: `bash Coster.io/scripts/gitCloneProjects.sh`

### Build all apps:
* Prerequisites: docker, node + npm, maven, jdk11
* Run: `bash Coster.io/scripts/buildServices.sh`

### Run all apps:
* Run: `bash Coster.io/scripts/runServices.sh`
* Services will start on ports: 3000, 9000, 9001, 9002, 9003
* Browser session will automatically open on localhost:3000
* The services will attempt to connect to a PostgreSQL server running locally on 5432

### Stop all apps:
- Run: `bash Coster.io/scripts/stopServices.sh`
- This command shuts down the Spring backend services. The nodejs frontend app can be shut down by pressing Ctrl+C in the terminal window where the runServices.sh command was run.
