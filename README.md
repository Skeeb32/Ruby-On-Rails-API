<h1 align="center">Gotta Catch 'Em All!</h1>
<p align="center">
  <img  alt="Pokedex" height="128px" width="128px" src="https://raw.githubusercontent.com/Mondal10/Pokedex/master/public/assets/logo-128.png">
</p>
<h1 align="center"><a href="https://mondal10.github.io/Pokedex/#/page=0">Pokédex</a></h1>

<h3 align="center">Ruby/Rails API Crossover Project</h3>


# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 2.7.2

* API built with Postman

* Edited the Configuration for database.yml

* Database creation and initialization with Postgresql

* Services (job queues, cache servers, search engines, etc.)

* Deploy the app to Heroku free app/free hobby database  - provide us with the URL for the heroku app and a little documentation on the endpoint to submit events.  We will submit events to the app.

Installation
============

gem install rails

or in your Gemfile
```ruby
gem 'rails', '~> 6.0.3.4'
```
POSTGRES
============
Created ENV file to store password

development:
  <<: *default
  adapter: postgresql
  database: postgres
  host: localhost
  port: 5432
  username: postgres
  password: <%= ENV['APPNAME_DATABASE_PASSWORD'] %> 
  
production:
  adapter: postgresql
  database: postgres
  url: <%= ENV['DATABASE_URL'] %>
  pool: <%= ENV['DATABASE_POOL_SIZE'] || 10 %>


POSTMAN
============

GET: rubyonrailsapi.herokuapp.com/events/
POST: rubyonrailsapi.herokuapp.com/events/

    Body, Raw, JSON
Example:
{
	"name": "right button",
	"event_type": "click",
	"at": "2020-07-12T00:00:03",
	"button_color": "green"
}

UPDATE: rubyonrailsapi.herokuapp.com/events/:id
DELETE:rubyonrailsapi.herokuapp.com/events/:id

* ...
CURL - 
curl --location --request POST 'rubyonrailsapi.herokuapp.com/events/' \
--header 'Content-Type: application/json' \
--data-raw '{
	"name": "right button",
	"event_type": "click",
	"at": "2020-07-12T00:00:03",
	"button_color": "green"
}'


Server
============
Localhost: rails server -p 3333
