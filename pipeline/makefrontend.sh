cd ../frontend
frontend="frontendrats"
cp ~/.ssh/onuallaic.dev.key ./ssl
sudo docker build --tag $frontend .
docker tag $frontend gcr.io/rats-290113/$frontend
docker push gcr.io/rats-290113/$frontend
rm ./ssl/onuallaic.dev.key