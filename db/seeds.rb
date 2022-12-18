# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "destroy seeds"
Booking.destroy_all
Book.destroy_all
User.destroy_all

user1 = User.create(nickname: "Alexia", email: "user1@gmail.com", password: 'password')
user2 = User.create(nickname: "Riccardo", email: "user2@gmail.com", password: 'password')
puts "created users"

puts "-------------------------------------------------------"

description1 = "Elle avait entendu l'histoire de gens qui se sont rencontrés au bon et au mauvais moment, de ceux qui se sont aimés jusqu'au bout..."
book1 = Book.new(title: "Eteignez tout et la vie s'allume", description: description1, author: "Marc Levy", year: 2022, publisher: "Robert Laffont", price_per_day: 0.30, user: user1)
file_book1 = URI.open('https://res.cloudinary.com/dlumucj7m/image/upload/v1671401914/Eteignez-tout-et-la-vie-s-allume_gr8c2t.jpg')
book1.photo.attach(io: file_book1, filename: "book1.jpg", content_type: "image/jpg")
book1.save

description2 = "Ellie a disparu à l'âge de quinze ans. Sa mère n'a jamais réussi à faire son deuil, d'autant plus que la police n'a retrouvé ni le coupable ni le corps."
book2 = Book.new(title: "Comme toi", description: description2, author: "Lisa Jewell", year: 2019, publisher: "Hauteville", price_per_day: 0.20, user: user1)
file_book2 = URI.open('https://res.cloudinary.com/dlumucj7m/image/upload/v1671401857/51oZ6R7JcsL._SX307_BO1_204_203_200__uenyik.jpg')
book2.photo.attach(io: file_book2, filename: "book2.jpg", content_type: "image/jpg")
book2.save

description3 = "Camille, trente-huit ans et quart, a tout, semble-t-il, pour être heureuse. Alors pourquoi a-t-elle l'impression que le bonheur lui a glissé entre les doigts ?"
book3= Book.new(title: "Ta deuxième vie commence quand tu comprends que tu n'en as qu'une", description: description3, author: "Raphaëlle Giordano", year: 2017, publisher: "Pocket", price_per_day: 0.40, user: user1)
file_book3 = URI.open('https://res.cloudinary.com/dlumucj7m/image/upload/v1671402291/Ta-deuxieme-vie-commence-quand-tu-comprends-que-tu-n-en-as-qu-une_kyvphu.jpg')
book3.photo.attach(io: file_book3, filename: "book3.jpg", content_type: "image/jpg")
book3.save

puts "created books of user1"

puts "-------------------------------------------------------"
description4 = "Il est une ville, au centre du désert, où nul n'a le droit de se rendre sous peine de mort. De ses entrailles sortaient autrefois d'interminables caravanes chargées de trésors mais, depuis deux cents ans, la cité est coupée du reste du monde... "
book4 = Book.new(title: "Le Faiseur de rêves", description: description4, author: "Laini Taylor", year: 2018, publisher: "Lumen", price_per_day: 0.10, user: user2)
file_book4 = URI.open('https://res.cloudinary.com/dlumucj7m/image/upload/v1671402232/51s5_JeIAdL._SX309_BO1_204_203_200__ebeojg.jpg')
book4.photo.attach(io: file_book4, filename: "book4.jpg", content_type: "image/jpg")
book4.save

description5 = "Imaginez : vous vous baladez sur les quais de San Francisco un dimanche, quand soudain une bohémienne vous saisit la main pour y lire votre avenir. "
book5 = Book.new(title: "Le jour où j'ai appris à vivre", description: description5, author: "Laurent Gounelle", year: 2016, publisher: "Pocket", price_per_day: 0.15, user: user2)
file_book5 = URI.open('https://res.cloudinary.com/dlumucj7m/image/upload/v1671402565/B01F0FOGAE.01._SCLZZZZZZZ_SX500__hiyc7k.jpg')
book5.photo.attach(io: file_book5, filename: "book5.jpg", content_type: "image/jpg")
book5.save

description6 = "Là où chantent les écrevisses est un roman policier de 2018 sur le passage de l'enfance à l'âge adulte de l'auteure américaine Delia Owens. "
book6= Book.new(title: "Là où chantent les écrevisses", description: description6, author: "Delia Owens", year: 2018, publisher: "Point", price_per_day: 0.50, user: user2)
file_book6 = URI.open('https://res.cloudinary.com/dlumucj7m/image/upload/v1671402755/La-ou-chantent-les-ecrevies_fhqwc2.jpg')
book6.photo.attach(io: file_book6, filename: "book6.jpg", content_type: "image/jpg")
book6.save

description7 = "Par une nuit brumeuse de décembre, une jeune femme est repêchée dans la Seine au niveau du Pont-Neuf. Nue, amnésique, mais vivante. "
book7= Book.new(title: "L'Inconnue de la Seine", description: description7, author: "Guillaume Musso", year: 2021, publisher: "Calmann", price_per_day: 0.45, user: user2)
file_book7 = URI.open('https://res.cloudinary.com/dlumucj7m/image/upload/v1671402866/L-Inconnue-de-la-Seine_ppijeu.jpg')
book7.photo.attach(io: file_book7, filename: "book7.jpg", content_type: "image/jpg")
book7.save

puts "created books of user2"

puts "-------------------------------------------------------"
puts "create bookings"
booking1 = Booking.create(starting_date: "21/02/2023", ending_date: "03/03/2023", user: user1, book: book4)
booking2 = Booking.create(starting_date: "21/01/2023", ending_date: "03/02/2023", user: user1, book: book5)

booking3 = Booking.create(starting_date: "15/02/2023", ending_date: "06/03/2023", user: user2, book: book1)
booking4 = Booking.create(starting_date: "15/01/2023", ending_date: "06/02/2023", user: user2, book: book2)
