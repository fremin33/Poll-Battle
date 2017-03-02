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
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1488365558/music_wtcq12.jpg"
Category.new(name: "Movies").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1488365501/movies_zuzfb6.jpg"
Category.new(name: "Sport").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1488365591/sport_vggirl.jpg"
Category.new(name: "Geek").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1488365556/space_v4mxnd.jpg"
Category.new(name: "Food").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1488365544/food_yqjoit.jpg"
Category.new(name: "Fashion").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1488366727/fashion_mmgzk9.jpg"
Category.new(name: "Lifestyle").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1488471600/12_lifestyle_anqsgr.jpg"
Category.new(name: "Car").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1488472758/sls_uzo195.jpg"
Category.new(name: "Compagny").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1488474014/petronas-twin-towers_eumgie.jpg"
Category.new(name: "Ship").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1488473149/jet_xgq2kc.jpg"
Category.new(name: "Travel").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1488473796/travel_n7qszh.jpg"
Category.new(name: "Brand").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1488473296/brand-logos-thumbs-up_zcyeam.jpg"
Category.new(name: "Motorbike").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1488472972/bf070a52edc5f06637efc74cf7fc9258_bm6sz2.jpg"
Category.new(name: "Technology").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1488473723/government-technology_mzzbcs.jpg"
Category.new(name: "Celebrity").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1488473569/eve-arnold-marylin-LA_px7aqt.jpg"
Category.new(name: "Television").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1488473403/television_xjhfzh.jpg"



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

