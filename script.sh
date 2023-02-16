#!/bin/sh

dbt --version
dbt --version --profiles-dir .  # Pulls the most recent version of the dependencies listed in your packages.yml from git
dbt deps --profiles-dir .  # Pulls the most recent version of the dependencies listed in your packages.yml from git
dbt debug --target dev --profiles-dir .
dbt debug --target prod --profiles-dir .
dbt $1 --target prod --profiles-dir .

dbt $1 --vars "var_cust_id: '$2'" --select standard_reports

