Vote.destroy_all
Response.destroy_all
Poll.destroy_all
User.destroy_all
Category.destroy_all

20.times do
  User.new(
    email: Faker::Internet.email,
    password: "pollbattle",
    username: Faker::Internet.user_name,
    picture_url: "http://res.cloudinary.com/dibgaxttc/image/upload/v1488365558/music_wtcq12.jpg"
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
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1488554414/12_lifestyle_gjmymh.jpg"
Category.new(name: "Car").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1488554417/sls_ccu50q.jpg"
Category.new(name: "Compagny").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1488554416/petronas-twin-towers_zaapp3.jpg"
Category.new(name: "Ship").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1488554414/jet_zauoa3.jpg"
Category.new(name: "Travel").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1488554415/travel_yqw0nj.jpg"
Category.new(name: "Brand").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1488554415/brand-logos-thumbs-up_phhucs.jpg"
Category.new(name: "Motorbike").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1488554416/bf070a52edc5f06637efc74cf7fc9258_fsoq3v.jpg"
Category.new(name: "Technology").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1488554416/government-technology_ildjhq.jpg"
Category.new(name: "Celebrity").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1488554415/eve-arnold-marylin-LA_pazgba.jpg"
Category.new(name: "Television").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1488554416/television_zieqaf.jpg"
Category.new(name: "Politics").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1489136637/GOVT1737_ss_71583139_450x450_elarvo.jpg"
Category.new(name: "Actuality").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1489136629/actuality_ozmgtw.jpg"
Category.new(name: "Home").save
Category.last.picture_url = "http://res.cloudinary.com/dibgaxttc/image/upload/v1489137394/home_majer0.jpg"


Poll.new(title: "First challenge, let's go", category: Category.all.sample, user: User.all.sample).save
Response.new(label: "Shakira", poll: Poll.first, picture_url: "http://res.cloudinary.com/dibgaxttc/image/upload/v1488554416/television_zieqaf.jpg" ).save
Response.new(label: "Beyoncé", poll: Poll.first, picture_url: "http://res.cloudinary.com/dibgaxttc/image/upload/v1488554415/eve-arnold-marylin-LA_pazgba.jpg").save

