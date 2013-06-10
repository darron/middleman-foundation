## Requirements:

Ruby 1.9.3 or higher.

[Heroku](http://www.heroku.com) account.

## How to get started:

```
git clone git://github.com/darron/middleman-foundation.git
bundle install
middleman
```

Browse to [http://localhost:4567](http://localhost:4567)

Edit the files in source/ - your site will automatically reload in the browser.

## Deploy:

```
heroku create
heroku config:add MIDDLEMAN_DOMAIN_NAME="the-domain-name-from-heroku"
heroku config:add FAKER_LOCALE="en"
git push heroku master
```

The Ruby buildpack will statically compile the site during the `rake assets:precompile` phase after it's been pushed to Heroku.

Take a look at this [example site](http://middleman-foundation.herokuapp.com).

## Additional Features:

Want to password protect your site?

```
heroku config:add HTTP_USERNAME="your-username"
heroku config:add HTTP_PASSWORD="your-password"
heroku config:add PASSWORD_PROTECTED="true"
```

To disable password protection:

```
heroku config:add PASSWORD_PROTECTED="false"
```

You can also add helpers to config.rb - they can help with templating.

## To make this better:

1. Better breadcrumb generation - DRY it up: [https://github.com/andi/simple-navigation](https://github.com/andi/simple-navigation)

## Thanks to:

[Middleman](http://middlemanapp.com/)

[Zurb Foundation](http://foundation.zurb.com/)

[Social Web Icons by Fairhead Creative](http://zurb.com/playground/social-webicons)

[Matt Olson's Sitemap Generator](https://github.com/mattolson/middleman-zurb-template)
