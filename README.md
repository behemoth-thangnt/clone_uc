# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

### Database command:

- Init Schemafile
  ridgepole -c config.yml --export -o Schemafile

- For the first time running migrate
  ridgepole -c config.yml --apply --dry-run

- Manual migrate
  ridgepole -c config.yml --apply
  rails ddb:migrate
