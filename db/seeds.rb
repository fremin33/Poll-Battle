100.times do
  User.new(
    email: Faker::Internet.email,
    password: "pollbattle",
    username: Faker::Internet.user_name,
    picture_url: "http://res.cloudinary.com/dibgaxttc/image/upload/v1488365558/music_wtcq12.jpg"
    ).save
end

Category.new(name: "Politics").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1489136637/GOVT1737_ss_71583139_450x450_elarvo.jpg"
Category.new(name: "Actuality").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1489136629/actuality_ozmgtw.jpg"
Category.new(name: "Home").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1489137394/home_majer0.jpg"



Category.new(name: "Beauty").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1489136637/beauty_yehdvk.jpg"
