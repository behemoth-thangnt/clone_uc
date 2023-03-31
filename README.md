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

- Manual migrate: create db development & db test simultaneously
```
  ridgepole -c config.yml --apply
  rails db:migrate db:test:prepare
```

- Annotate
```
bundle exec rake remove_annotation && bundle exec rake annotate_models
```