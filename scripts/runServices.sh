cd Coster.io/scripts
docker-compose up -d

cd ../../coster-frontend
echo "Now launching frontend locally. You can shut it down by pressing CTRL + C."
echo "To shut down the backend services, run the stopServices script."
npm run dev