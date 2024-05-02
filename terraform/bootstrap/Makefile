
plan:
	infisical run --env prod -- terraform plan

apply:
	infisical run --env prod -- terraform apply -auto-approve

console:
	infisical run --env prod -- terraform console

init:
	infisical run --env prod -- terraform init -backend-config="bucket=${GCS_BUCKET}"

secrets:
	infisical secrets --env prod

state:
	infisical run --env prod -- terraform state list

validate:
	infisical run --env prod -- terraform validate

upgrade:
	infisical run --env prod -- terraform init -upgrade -backend-config="bucket=${GCS_BUCKET}"
