require "open-uri"

file1 = URI.open('https://i.giphy.com/3hetVnNSl0IBa.gif')
file2 = URI.open('https://media2.giphy.com/media/NyrOYfZlUSLCw/giphy.gif?cid=ecf05e471e36e52c49c7ba2740eb810f91aa9a18a44396c2&rid=giphy.gif')
file3 = URI.open('https://i.giphy.com/media/OvGTyNYODgF8Y/source.gif')
file4 = URI.open('https://img.vistek.net/prodimg/xlarge/401630.jpg')
file5 = URI.open('https://cdn.shopify.com/s/files/1/0036/4806/1509/products/m007214202_d57beb81-f4bc-4782-8cb3-4c1bb3df946f.jpg?v=1581350380')
file6 = URI.open('https://i.pcmag.com/imagery/reviews/02EWeb6Lde92387i2GfIc42-3..v_1569471016.jpg')
file7 = URI.open('https://thumbs.gfycat.com/PastelDeadChicken-size_restricted.gif')
file8 = URI.open('https://i.pinimg.com/originals/ed/aa/7f/edaa7f2789e222e3a630b206082ccc7e.gif')
file9 = URI.open('https://thumbs.gfycat.com/NeatEmptyChick-max-1mb.gif')
file10 = URI.open('https://media2.giphy.com/media/NyrOYfZlUSLCw/giphy.gif?cid=ecf05e471e36e52c49c7ba2740eb810f91aa9a18a44396c2&rid=giphy.gif')
# file11 = URI.open('https://fortheremix.files.wordpress.com/2013/04/print.gif?w=404&h=539')
# file12 = URI.open('https://64.media.tumblr.com/0456eaa00ff239ee8389e8e5d1c14492/tumblr_ozf8d8W4xf1toamj8o1_500.gifv')

puts "Destroying Bookings"
Booking.destroy_all if Rails.env.development?

puts "Destroying Reviews"
Review.destroy_all if Rails.env.development?

puts "Destroying Printers"
Printer.destroy_all if Rails.env.development?

puts "Destroying Users"
User.destroy_all if Rails.env.development?



user1 = User.create(email: "nachiket@owner.com", name: "Joe Green", password: "nachiket", is_owner: true, address: "123 Street")
user2 = User.create(email: "nachiket@customer.com", name: "Lebron James", password: "nachiket", is_owner: true, address: "456 Street")
user3 = User.create(email: "user3@user.com", name: "Barack Obama", password: "password", is_owner: true, address: "789 Street")
user4 = User.create(email: "user4@user.com", name: "Tom Brady", password: "password", is_owner: true, address: "123 Street")
user5 = User.create(email: "user5@user.com", name: "Chuck Norris", password: "password", is_owner: true, address: "456 Street")
user6 = User.create(email: "user6@user.com", name: "Honest Abe", password: "password", is_owner: true, address: "789 Street")
user7 = User.create(email: "user7@user.com", name: "Hillary Clinton", password: "nachiket", is_owner: true, address: "123 Street")
user8 = User.create(email: "user8@user.com", name: "Benjamin Franklin", password: "nachiket", is_owner: true, address: "456 Street")
user9 = User.create(email: "user9@user.com", name: "Steve Harvey", password: "password", is_owner: true, address: "789 Street")
user10 = User.create(email: "user10@user.com", name: "Mike Smith", password: "password", is_owner: true, address: "123 Street")
# user11 = User.create(email: "user11@user.com", name: "Gandalf", password: "password", is_owner: true, address: "456 Street")
# user12 = User.create(email: "user12@user.com", name: "Harry Potter", password: "password", is_owner: true, address: "789 Street")



printer1 = Printer.new(price: 6, model: "Brother HL-L2320D", address: "1253 McGill College, Montreal")
printer1.user = user1
printer1.photo.attach(io: file1, filename: '1.png', content_type: 'image/png')
printer1.save

printer2 = Printer.new(price: 4, model: "Canon XP 800", address: "5333 Avenue Casgrain, Montreal")
printer2.user = user2
printer2.photo.attach(io: file2, filename: '2.png', content_type: 'image/png')
printer2.save

printer3 = Printer.new(price: 7, model: "Espon XP 15000", address: "1455 Boulevard de Maisonneuve, Montreal")
printer3.user = user3
printer3.photo.attach(io: file3, filename: '3.png', content_type: 'image/png')
printer3.save

printer4 = Printer.new(price: 7, model: "Canon PRO 1000", address: "845 Sherbrooke St, Montreal")
printer4.user = user4
printer4.photo.attach(io: file4, filename: '4.png', content_type: 'image/png')
printer4.save

printer5 = Printer.new(price: 7, model: "Lexmark C3224", address: "1909 Avenue des Canadiens-de-Montreal, Montreal")
printer5.user = user5
printer5.photo.attach(io: file5, filename: '5.png', content_type: 'image/png')
printer5.save

printer6 = Printer.new(price: 7, model: "Brother HL-L2320D", address: "7700 Decarie Blvd, Montreal")
printer6.user = user6
printer6.photo.attach(io: file6, filename: '6.png', content_type: 'image/png')
printer6.save

printer7 = Printer.new(price: 7, model: "Canon Maxify iB4120", address: "680 Sherbrooke St, Montreal")
printer7.user = user7
printer7.photo.attach(io: file7, filename: '7.png', content_type: 'image/png')
printer7.save

printer8 = Printer.new(price: 7, model: "Brother HL-L2320D", address: "1175 Sherbrooke St, Montreal")
printer8.user = user8
printer8.photo.attach(io: file8, filename: '8.png', content_type: 'image/png')
printer8.save

printer9 = Printer.new(price: 12, model: "Lexmark C3224", address: "1145 Union Ave, Montreal")
printer9.user = user9
printer9.photo.attach(io: file9, filename: '9.png', content_type: 'image/png')
printer9.save

printer10 = Printer.new(price: 7, model: "Canon Maxify iB4120", address: "424 Rue Guy, Montreal")
printer10.user = user10
printer10.photo.attach(io: file10, filename: '10.png', content_type: 'image/png')
printer10.save

# printer11 = Printer.new(price: 7, model: "Espon XP 15000", address: "3433 Stanley St, Montreal")
# printer11.user = user11
# printer11.photo.attach(io: file11, filename: '11.png', content_type: 'image/png')
# printer11.save

# printer12 = Printer.new(price: 7, model: "Lexmark C3224", address: "1440 Drummond St, Montreal")
# printer12.user = user12
# printer12.photo.attach(io: file12, filename: '12.png', content_type: 'image/png')
# printer12.save

puts Printer.all

