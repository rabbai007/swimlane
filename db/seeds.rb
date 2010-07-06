# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
backlog = Swimlane.create(:name => 'backlog', :default => true, :position => 2)
current = Swimlane.create(:name => 'current', :default => false, :position => 1)
current.cards << Card.create(:title => 'Prepare Garden')
current.cards << Card.create(:title => 'Plant Garden')
backlog.cards << Card.create(:title => 'Water Garden')
backlog.cards << Card.create(:title => 'Harvest Garden')
