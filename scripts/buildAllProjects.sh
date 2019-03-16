checkError() {
    if [ $? -ne 0 ]; then
        echo Build failed, exiting script.
        exit 1
    fi
}

cd user_management_svc
mvn clean install
checkError

cd ../expense_svc
mvn clean install
checkError

cd ../dashboard_svc
mvn clean install
checkError

cd ../coster-frontend
npm install
checkError

echo "Build success!"
