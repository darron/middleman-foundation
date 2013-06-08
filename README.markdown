## REQUIREMENTS

Ruby 1.9.3 or higher.
[Heroku](http://www.heroku.com) account.

## HOWTO

Download.

```bundle install
middleman```

Browse to [http://localhost:4567](http://localhost:4567)

Edit the files in source/ - your site will automatically reload in the browser.

## DEPLOY

```heroku create
heroku config:add MIDDLEMAN_DOMAIN_NAME="the-domain-name-from-heroku"
git push heroku master```

The Ruby buildpack will statically compile the site during the `rake assets:precompile` phase after it's been pushed to Heroku.