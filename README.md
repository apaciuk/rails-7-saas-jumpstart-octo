# rails 7 sass jumpstart

Epic Ruby On Rails 7 SaaS Jumpstart app with PostgreSQL, Bootstrap 5, Font Awesome 5, Devise, Noticed, Announcements, Rollup, CSS Bundling, JS Bundling, Madmin, Hotwire, Stimulus JS and Action Cable/Cable Ready, Request JS with Redis Caching

# JS & CSS Bundling with Rollup - no webpack/webpacker

https://stimulus.hotwired.dev/

https://docs.stimulusreflex.com/

Combine with Hotwire and Strada

https://hotwired.dev/

Style kept minimal so Bootstrap 5 can be swapped out for other CSS or UI if required

* Ruby version

Ruby 3.0.0

Rails 7.0.0 up

* Setup

1. $ bundle install/update (if change any gems)
2. $ yarn  (engine node v 16.0.0)
3. $ rails css:install:bootstrap
4. set db credentials config/database.yml (postgres)
5. $ rails db:create
6. $ rails db:migrate
7. Is set up to send basic user signup mail with gmail, alter smtp or other mail credentials (.env, application_mailer, devise.rb & development.rb), then test signup confirmation emails by signing up & confirming user email
copy .env.example > .env and enter details, or adapt to suit yours.

8. $ rails stimulus_reflex:install (OPTIONAL, extra config needed))

9. $ rails dev:cache (check, should be cached, if not run again)
10. $ rails g madmin:install  (if not, have to alter nav)
11. $ rails g madmin:views  (overwrite)
12. $ rails generate favicon  (put your favicon.png in assets/images, along with favicon.json in config folder)
    (see https://realfavicongenerator.net/)  for more info.
13. $ rails g rspec:install  (for testing)

14. Run Importmap

# examples 

 ./bin/importmap
 ./bin/importmap pin bootstrap  (pin bootstrap & popper, ie import)
 ./bin/importmap json (show maps)


# Woot woot  Start server!

$ rails s

(For other cmds see  related docs/links)

# example

$ rails action_text:install (already done here)


* ...
