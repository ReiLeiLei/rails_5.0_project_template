# rails_5.0_project_template

## Platform
Docker

## Language
Ruby 2.7.2

## Bundler
Bundler 2.22.2

## Framework
Rails 5.0.0

## Test Framework
Rspec
## Usage

### 1.
```$ docker-compose run app rails new . --force --database=mysql```

### 2.
```$ vi config/database.yml```

```
default: &default
  adapter: mysql2
  encoding: utf8mb4
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: root
  password: password <- change setting to docker-compose.yml
  host: db <- change change setting to docker-compose.yml
```

### 3.
```$ docker-compose build```

### 4.
```$ docker-compose up -d```

### 5.
```$ docker-compose run app rails db:create```

### 6.
```$ docker-compose run app bundle exec rails s```


### access test

browser url bar

```localhost:3000```
