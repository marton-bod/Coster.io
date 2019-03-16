checkError() {
    if [ $? -ne 0 ]; then
        echo Build failed, exiting script.
        exit 1
    fi
}
echo "Starting maven builds."
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
echo "Starting npm install. This might take a few minutes..."
npm install
checkError

echo "Build success!"
