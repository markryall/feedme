# Feed Me

Very simple grape + cors services for accepting user comments.

## local setup

Set up and start postgres

    rake db:create
    rake db:migrate
    rackup

## API

# List comments:

    curl http://localhost:9292/comments/asdasdasdsad
    => []

# Adding a comment:

    curl -X POST -H 'Content-Type: application/json' -d '{"comment":{"slug":"asdasdasdsad", "name":"David Jones","email":"david@jones.com","body":"this is my message"}}' http://localhost:9292/comments/create

## deployment

    git clone git://github.com/markryall/feedme.git
    export APP_NAME=<your_favourite_app_name>
    heroku apps:create $APP_NAME
    heroku addons:add heroku-postgresql:dev
    heroku pg:promote HEROKU_POSTGRESQL_BRONZE_URL
    git push heroku master

## future enhancements

* nothing - this is just perfect the way it is