Response.destroy_all
Poll.destroy_all
User.destroy_all
Category.destroy_all



10.times do
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

Response.new(label: "A", poll: Poll.all[0]).save
Response.new(label: "B", poll: Poll.all[0]).save

Response.new(label: "C", poll: Poll.all[1]).save
Response.new(label: "D", poll: Poll.all[1]).save

Response.new(label: "E", poll: Poll.all[2]).save
Response.new(label: "F", poll: Poll.all[2]).save

Response.new(label: "G", poll: Poll.all[3]).save
Response.new(label: "H", poll: Poll.all[3]).save

Response.new(label: "I", poll: Poll.all[4]).save
Response.new(label: "J", poll: Poll.all[4]).save

Response.new(label: "K", poll: Poll.all[5]).save
Response.new(label: "L", poll: Poll.all[5]).save

Response.new(label: "M", poll: Poll.all[6]).save
Response.new(label: "N", poll: Poll.all[6]).save

Response.new(label: "O", poll: Poll.all[7]).save
Response.new(label: "P", poll: Poll.all[7]).save

Response.new(label: "Q", poll: Poll.all[8]).save
Response.new(label: "R", poll: Poll.all[8]).save

Response.new(label: "S", poll: Poll.all[9]).save
Response.new(label: "T", poll: Poll.all[9]).save

Response.new(label: "U", poll: Poll.all[10]).save
Response.new(label: "V", poll: Poll.all[10]).save


