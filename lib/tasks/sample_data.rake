namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    User.create!(:name => "Vanessa Hines",
                 :email => "nin_sandra@hotmail.com",
                 :password => "ness79",
                 :password_confirmation => "ness79")

    User.create!(:name => "Marty Hines",
                 :email => "mhines76@gmail.com",
                 :password => "ness79",
                 :password_confirmation => "ness79")

    User.create!(:name => "Example User",
                 :email => "example@railstutorial.org",
                 :password => "foobar",
                 :password_confirmation => "foobar")

    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(:name => name,
                   :email => email,
                   :password => password,
                   :password_confirmation => password)
    end
  end
end