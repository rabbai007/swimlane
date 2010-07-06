### Acceptance Testing with Cucumber

This is the example app for Acceptance Testing with Cucumber tutorial,
presented by Aslak Hellesøy and David Chelimsky at RailsConf 2010.

Scott Smith has "borrowed" this code to see if it can be used
as a front end to augment some Pivotal Tracker functionality
with swimlanes.

### Recommended environment

* git
* rvm 0.1.40 (if you're on *nix)
* pik (if you're on windows)
* ruby 1.8.7

### Get started

Start off with a clean gemset with rvm or pik:

    rvm gemset create swimlane
    rvm gemset use swimlane

Install a couple of gems you'll need to bootstrap everything else:

    gem install rake bundler

Now do all this:

    git clone git://github.com/dchelimsky/railsconf2010-app.git
    cd railsconf2010-app
    bundle install
    bundle lock
    export RAILS_ENV=development
    rake db:migrate
    rake db:test:prepare
    rake db:seed
    export RAILS_ENV=test
    rake spec
    cucumber

If you run 'cucumber' and 'rake spec' successfully at the end, then all is right with
the world.

To run the server:

    export RAILS_ENV=development
    Rails s

  and open a browser on

    http://localhost:3000/cards

