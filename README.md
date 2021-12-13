# rails 7 sass jumpstart

Epic Ruby On Rails 7 SaaS Jumpstart app with PostgreSQL, Bootstrap 5, Font Awesome 5, Devise, Noticed, Announcements, Madmin, Stimulus JS and Action Cable/Cable Ready, Request JS with Redis Caching

https://stimulus.hotwired.dev/

https://docs.stimulusreflex.com/

Combine with Hotwire and Strada

https://hotwired.dev/

Also can be easily used with React/Vue via $rails webpacker:install:react (or vue) if required

Style kept minimal so Bootstrap 5 can be swapped out for other CSS or UI if required

* Ruby version

Ruby 3.0.0

Rails 7.0.0 up

* Setup

1. $ bundle install/update (if change any gems)
2. $ yarn  (engine node v 16.0.0)
3. set db credentials config/database.yaml (postgres)
4. $ rails db:create
5. $ rails db:migrate
6. Is set up to send user signup mail with gmail, alter smtp or other mail credentials (.env, application_mailer, devise.rb & development.rb), then test signup confirmation emails by signing up & confirming user email
copy .env.example > .env and enter details, or adapt to suit yours.
7. $ rails stimulus_reflex:install
8. $ rails dev:cache (check, should be cached, if not run again)
9. $ rails g madmin:install  (if not, have to alter nav)
10. $ rails g madmin:views  (overwrite)
11. $ rails generate favicon  (put your favicon.png in assets/images, along with favicon.json in config folder)
    (see https://realfavicongenerator.net/)  for more info.
12. $ rails g rspec:install  (for testing)

* Woot woot  Start server!
(optional: bundle add foreman && foreman start)

$ rails s

(For other cmds see  related docs/links)



* ...
