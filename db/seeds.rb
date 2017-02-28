Vote.destroy_all
Response.destroy_all
Poll.destroy_all
User.destroy_all
Category.destroy_all

20.times do
  User.new(
    email: Faker::Internet.email,
    password: "pollbattle",
    username: Faker::Internet.user_name
    ).save
end

Category.new(name: "Music").save
Category.new(name: "Movies").save
Category.new(name: "Sport").save
Category.new(name: "Geek").save
Category.new(name: "Food").save


Poll.new(title: "A vs B", user: User.all.sample, category: Category.all.sample).save
Poll.new(title: "C vs D", user: User.all.sample, category: Category.all.sample).save
Poll.new(title: "E vs F", user: User.all.sample, category: Category.all.sample).save
Poll.new(title: "G vs H", user: User.all.sample, category: Category.all.sample).save
Poll.new(title: "I vs J", user: User.all.sample, category: Category.all.sample).save
Poll.new(title: "K vs L", user: User.all.sample, category: Category.all.sample).save
Poll.new(title: "M vs N", user: User.all.sample, category: Category.all.sample).save
Poll.new(title: "O vs P", user: User.all.sample, category: Category.all.sample).save
Poll.new(title: "Q vs R", user: User.all.sample, category: Category.all.sample).save
Poll.new(title: "S vs T", user: User.all.sample, category: Category.all.sample).save
Poll.new(title: "U vs V", user: User.all.sample, category: Category.all.sample).save



Poll.all.each do |poll|
  response = Response.new(label: poll.title.first, poll: poll)
  response.picture_url = "http://www.fiche-maternelle.com/coloriage-#{poll.title.first.downcase}.jpg"
  response.save

  response = Response.new(label: poll.title.last, poll: poll)
  response.picture_url = "http://www.fiche-maternelle.com/coloriage-#{poll.title.last.downcase}.jpg"
  response.save
end

2500.times do
  Vote.new(user: User.all.sample, response: Response.all.sample).save
end

