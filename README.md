# README

> Ruby version: v3.1.0

- Configuration

- Install gemfile

```
  bundle install
```

> Database creation

```
  rails db:create
```

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

> Run server

```
  bundle exec foreman start
```

- Check code convention

```
  bundle exec rubocop -A
```

- RSpec for test

```
  bundle exec rspec
```
