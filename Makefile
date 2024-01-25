.PHONY: plan
plan:
	cd terraform
	terraform plan

.PHONY: apply
apply:
	cd terraform
	terraform apply

.PHONY: destroy
destroy:
	@read -p "Are you sure you want to destroy the infrastructure? [y/N] " -n 1 -r; \
	cd terraform
	terraform destroy

.PHONY: docs
docs:
	terraform-docs markdown --output-file README.md ./terraform
