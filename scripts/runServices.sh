cd user_management_svc/service
mvn spring-boot:run -q &

cd ../../expense_svc
mvn spring-boot:run -q &

cd ../dashboard_svc
mvn spring-boot:run -q &

cd ../coster-frontend
npm start