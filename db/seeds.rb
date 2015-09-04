# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Game.destroy_all

userOne = User.create(
          username: "Yvonne"
          )
userTwo = User.create(
          username: "Malissa"
          )
gameOne = Game.create(
          win_time: 12,
          user_id: userOne.id
)
gameTwo = Game.create(
          win_time: 10,
          user_id: userTwo.id
)
