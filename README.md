# README

> Ruby version: v3.1.0

- Configuration

> Database creation

- Init Schemafile:
```
  ridgepole -c config.yml --export -o Schemafile
```

- For the first time running migrate:
```
  ridgepole -c config.yml --apply --dry-run
```

- Manual migrate:
```
  ridgepole -c config.yml --apply
  rails ddb:migrate
```
