
plan:
	infisical run --env prod -- terraform plan

apply:
	infisical run --env prod -- terraform apply -auto-approve

console:
	infisical run --env prod -- terraform console

destroy:
	infisical run --env prod -- terraform destroy

init:
	tflint --init
	infisical run --env prod -- terraform init -backend-config="bucket=${GCS_BUCKET}"

lint:
	terraform fmt
	tflint

refresh:
	infisical run --env prod -- terraform refresh

secrets:
	infisical secrets --env prod

state:
	infisical run --env prod -- terraform state list

validate: lint
	infisical run --env prod -- terraform validate

upgrade:
	infisical run --env prod -- terraform init -upgrade -backend-config="bucket=${GCS_BUCKET}"
