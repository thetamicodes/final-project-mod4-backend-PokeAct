# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p1 = Player.create(username: "Sarah")

g1 = Game.create(score: 100, player_id: p1.id)

c1 = Card.create(img_url: "Example")

j1 = GameCard.create(game_id: g1.id, card_id: c1.id)