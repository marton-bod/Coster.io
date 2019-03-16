cd user_management_svc
mvn spring-boot:run &

cd ../expense_svc
mvn spring-boot:run &

cd ../dashboard_svc
mvn spring-boot:run &

cd ../coster-frontend
npm start