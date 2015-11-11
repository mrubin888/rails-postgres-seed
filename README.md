# rails-postgres-seed
A rails seed project with postgres as a database.

## Setup
# Dependencies
1. Run ```bundle update``` from project root to install dependencies
# Database
2. Modify ```config/sample_database.yml``` to fit your postgres settings and save it as ```config/database.yml```
3. Run ```rake db:setup``` to create and load your database
# Secrets
4. Generate a secret key with ```rake secret``` and save it off to the environment variable RAILS_SECRET_KEY_BASE