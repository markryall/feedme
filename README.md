# Feed Me

Very simple grape + cors services for accepting user comments.

## deployment

    git clone git://github.com/markryall/feedme.git
    export APP_NAME=<your_favourite_app_name>
    heroku apps:create $APP_NAME
    git push heroku master

## future enhancements

* actually persist comments
* actually restore comments