require "open-uri"

file1 = URI.open('https://i.giphy.com/3hetVnNSl0IBa.gif')
file2 = URI.open('https://media2.giphy.com/media/NyrOYfZlUSLCw/giphy.gif?cid=ecf05e471e36e52c49c7ba2740eb810f91aa9a18a44396c2&rid=giphy.gif')
file3 = URI.open('https://i.giphy.com/media/OvGTyNYODgF8Y/source.gif')
file4 = URI.open('https://img.vistek.net/prodimg/xlarge/401630.jpg')
file5 = URI.open('https://cdn.shopify.com/s/files/1/0036/4806/1509/products/m007214202_d57beb81-f4bc-4782-8cb3-4c1bb3df946f.jpg?v=1581350380')
file6 = URI.open('https://i.pcmag.com/imagery/reviews/02EWeb6Lde92387i2GfIc42-3..v_1569471016.jpg')

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

printer6 = Printer.new(price: 7, model: "Canon Maxify iB4120", address: "2000 McGill College Ave, Montreal")
printer6.user = user6
printer6.photo.attach(io: file6, filename: '6.png', content_type: 'image/png')
printer6.save

puts Printer.all

