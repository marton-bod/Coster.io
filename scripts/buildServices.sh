checkError() {
    if [ $? -ne 0 ]; then
        echo Build failed, exiting script.
        exit 1
    fi
}

echo "Starting maven builds."
cd coster_notification_svc
mvn clean install -Pdocker
checkError

cd ../coster_user_management_svc
mvn clean install -Pdocker
checkError

cd ../coster_expense_svc
mvn clean install -Pdocker
checkError

cd ../coster_dashboard_svc
mvn clean install -Pdocker
checkError

cd ../coster_frontend
echo "Starting npm install. This might take a few minutes..."
npm install
checkError

echo "Build success!"
