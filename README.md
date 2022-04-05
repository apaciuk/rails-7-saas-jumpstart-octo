# rails 7 sass jumpstart octo 

[https://github.com/xhostcom/rails-7-saas-jumpstart-octo.git]

Epic Ruby On Rails 7 SaaS Jumpstart Dark Themed template with PostgreSQL, Redis Caching, Bootstrap 5, Font Awesome 5, Devise & Roles, Notifications, Announcements, Rollup, Importmap, CSS Bundling, JS Bundling, Administrate, Hotwire, Stimulus and Action Cable/Cable Ready & Request JS. (Strada coming soon) 

## Roles - Devise User Model ##

* Admin as boolean flag on User model (manual - switch it in console)
* Member and other roles as enum integer (hash) on User model (write methods as required, default sign up set as user) No 3rd party gems needed for Roles.

# JS & CSS Bundling with Rollup - no webpack/webpacker

* https://stimulus.hotwired.dev/

* https://docs.stimulusreflex.com/

# Combine with Hotwire and Strada & others #

* https://hotwired.dev/

Style kept minimal so Bootstrap 5 can be swapped out for other CSS or UI if required, Bootstrap icons via CDN (swap/remove), dummy fonts in root of app (not used)

* Ruby/Rails/Node/Postgres

- [Ruby](https://www.ruby-lang.org/en/) 3.0.0 up
- [Rails](https://rubyonrails.org/) 7.0.0 up
- [NodeJS] (https://nodejs.org/es/blog/release/v16.0.0/) 16.0.0
- [PostgreSQL](https://www.postgresql.org/docs/14/index.html) 14.00

## SET UP ##

After first set email & db credentials in .env file (for PostgreSQL, cp .env.example to .env and fill in with your env details)

1. $ bundle install && bundle audit + (bundle audit --update)
2. $ yarn  (engine node v 16.0.0)
3. $ bin/rails css:install:bootstrap  (dont overwrite application.bootstrap)

* Hotwire

4. $ rails hotwire:install  (dont overwrite, request js module declared in root .ts file )

5. $ bin/rails db:migrate:reset

6. Is set up to send basic user signup mail with Gmail, alter smtp or other mail credentials (.env, application_mailer, devise.rb & development.rb), then test signup confirmation emails by signing up & confirming user email
As above be sure to copy .env.example > .env and enter details, or adapt to suit yours.  (2 factor auth Google accs req an App password for the device registered there and being used, not the normal password)

7. $ rails dev:cache (check/toggle, must be cached, if not run again)

## Optional

8. $ rails stimulus_reflex:install (extra config needed see link [https://docs.stimulusreflex.com/])

# Optional

9. $ rails generate favicon (put your favicon.png in assets/images, along with favicon.json in config folder) [see https://realfavicongenerator.net]
   
10. $ rails g rspec:install  (for testing)

(for test db run $ rails db:test:prepare)

11. Run Importmap to set/pin Javascript  [https://github.com/rails/importmap-rails]

# Importmap Examples 

 ./bin/importmap
 ./bin/importmap pin bootstrap  (pin bootstrap & popper, ie import & set)
 ./bin/importmap json (show maps)

## Mandatory - Start server! ##

$ rails s

(For other cmds see  related docs/links)

# Examples

$ rails action_text:install (already done here)

$ rails generate administrate:install (if use default Administrate, for Admin example = in console: User.first.update :admin => true) )

# Live reload/watch CSS

$ $ yarn build:css --watch (separate terminal watch/update changes in styles)

## Author

Paul Anthony McGowan - xhostcom@gmail.com

https://www.patreon.com/xhostcom

## Todo

### Yeet DBA, fix db constraint errors see link in Gemfile ###

#################################################

### Multi Tenancy Support ###

## Todo

