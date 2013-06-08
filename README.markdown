# HOWTO

Download.

`bundle install`

`middleman`

Browse to [http://localhost:4567](http://localhost:4567)

# DEPLOY

`heroku create`

`heroku config:add MIDDLEMAN_DOMAIN_NAME="the-domain-name-from-heroku`

`git push heroku master`

The [config.ru](/darron/middleman-foundation/blob/master/config.ru) will statically compile the site.