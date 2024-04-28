
plan:
	infisical run --env prod -- terraform plan

apply:
	infisical run --env prod -- terraform apply

init:
	infisical run --env prod --command 'terraform init -backend-config="bucket=${GCS_BUCKET}"'
