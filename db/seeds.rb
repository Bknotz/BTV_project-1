# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)






# Used to Seed DB for the Baord Page
user1 = User.create!(:name => "Cezar Cocu", :email =>"a@b.com")
BoardInfo.create!(:user_id => user1.id, :title=> "President", :board => "executive", :photo => "/assets/Contact.jpg", :description => "A nice Description about Cezar")

user1 = User.create!(:name => "Ben Ramos", :email =>"b@d.com")
BoardInfo.create!(:user_id => user1.id, :title=> "Consigliere", :board => "executive", :photo => "/assets/Contact.jpg", :description => "Ben Loves Fashion")


user1 = User.create!(:name => "Chris Graf", :email =>"d@e.com")
BoardInfo.create!(:user_id => user1.id, :title=> "Master Boss", :board => "production", :photo => "/assets/Contact.jpg", :description => "Chris likes stuff")

# video to seed DB for submit page

video1 = Video.create!(:title => "Beyonce as Mrs. Carter on H&M", 
                       :description => "beyonce as mrs. carter", 
                       :url => "http://www.youtube.com/watch?v=ZcD4kPTPE2w",
                       :created_at => "sometime", 
                       :updated_at => "another time")




