
plan:
	infisical run --env prod -- terraform plan

apply:
	infisical run --env prod -- terraform apply

init:
	infisical run --env prod -- terraform init -backend-config="bucket=${GCS_BUCKET}"

secrets:
	infisical secrets --env prod
