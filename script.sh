gcloud iam service-accounts keys create key.json --iam-account <your-service-account>@<your-project>.iam.gserviceaccount.com
base64 key.json

kubectl apply -f provider-config.yaml

kubectl apply -f gcsbucket.yaml

kubectl apply -f xrd.yaml

kubectl apply -f bucketclaim.yaml
