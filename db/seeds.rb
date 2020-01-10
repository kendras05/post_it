# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first
#
require 'faker'

100.times do |num|
  body = Faker::Hipster.sentences.join(" ")
  hidden = [ true, false].sample
  posted_at = Faker::Date.between(from: 2.years.ago, to: Date.today)

#   puts body
#   puts hidden
#   puts posted_at


  Note.create({
    hidden: hidden,
    posted_at: posted_at,
    body: body
  })
end
