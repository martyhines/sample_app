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
                 :password_confirmation => "ness79",
                 :admin => 't')

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

    users = User.all(:limit => 6)
    50.times do
      content = Faker::Lorem.sentence(5)
      users.each { |user| user.microposts.create!(:content => content) }
    end

    users = User.all
    user  = users.first
    followed_users = users[2..50]
    followers      = users[3..40]
    followed_users.each { |followed| user.follow!(followed) }
    followers.each      { |follower| follower.follow!(user) }

  end
end