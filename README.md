Sample app to replicate problem

Rails 4.2.1 with mysql is generating invalid sequence when a has_many :through
relationship gets merged with a scope from another model

Eg, in this app

Post.viewers.merge(Person.nonadmin).to_a

will result in invalid SQL. There is a sample script to demo this in the root called
problem.rb

This only affects MySQL and the problem is not present when run against the SQLite adapter

To test with this app.

# Set your mysql in config/database.yml.mysql
# bundle exec rake db:create
# bundle exec rake db:migrate
# bundle exec rails r problem.rb
