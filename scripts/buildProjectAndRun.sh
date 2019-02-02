checkError() {
    if [ $? -ne 0 ]; then
        echo Build failed, exiting script.
        exit 1
    fi
}

BASE_PROJECT_DIR=/home/marton/marton/Repositories/Coster.io

cd $BASE_PROJECT_DIR/user-management
sudo mvn clean install
checkError

cd $BASE_PROJECT_DIR/expense_svc
sudo mvn clean install -DskipTests
checkError

cd $BASE_PROJECT_DIR/Coster.io/scripts
sudo docker-compose up
