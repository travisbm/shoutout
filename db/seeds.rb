# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do
  user = User.new({
    user_name: Faker::Internet.user_name
  })
  [1, 3, 5].sample.times do
    user.shouts.build({
      message: Faker::Lorem.paragraph[0..159],
      created_at: Faker::Time.backward(15, :evening)
    })
  end
  user.save!
end
