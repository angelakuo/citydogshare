#encoding: utf-8 
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
=begin
users = [ {:uid => '12345', :last_name => 'Wayne', :first_name => 'Bruce', :location => 'Bat Cave, Gotham City', :gender => 'Male', :image => 'http://tinyurl.com/opnc38n', :status => 'looking',
           :phone_number => '(555)228-6261', :email => 'not_batman@wayneenterprises.com', :description => 'I love bats', :availability => 'not nights', :oauth_token => 'ABCDEF...', :oauth_expires_at => '12-Jun-1981'},
        ]
users.each do |user|
  User.create!(user)
end
=end

# ========= ADDING AN ADMIN ==========
# Add the email connected to the admin's facebook account to this list.
# Then, run $ rake db:seed to add the admin to the database
admin_list = [
  "erichusk@gmail.com",         # Eric Husk
  "flarefighter526@gmail.com",  # Jacen Sherman
  "angelakuo5@gmail.com"        # Angela Kuo
]
admin_list.each do |admin_email|
  Admin.find_or_create_by(email: admin_email)
end


mix_list = [
  "Affenpinscher",
  "Afghan Hound",
  "Aidi",
  "Airedale Terrier",
  "Akbash",
  "Akita Inu",
  "Alano Español",
  "Alaskan Klee Kai",
  "Alaskan Malamute",
  "Alpine Dachsbracke",
  "Alpine Spaniel",
  "American Akita",
  "American Bulldog",
  "American Cocker Spaniel",
  "American Eskimo Dog",
  "American Foxhound",
  "American Hairless Terrier",
  "American Pit Bull Terrier",
  "American Staffordshire Terrier",
  "American Water Spaniel",
  "Anatolian Shepherd Dog",
  "Anglo-Français de Petite Vénerie",
  "Appenzeller Sennenhund",
  "Ariege Pointer",
  "Ariegeois",
  "Armant",
  "Armenian Gampr dog",
  "Artois Hound",
  "Australian Cattle Dog",
  "Australian Kelpie",
  "Australian Shepherd",
  "Australian Silky Terrier",
  "Australian Stumpy Tail Cattle Dog",
  "Australian Terrier",
  "Austrian Black and Tan Hound",
  "Austrian Pinscher",
  "Azawakh",
  "Bakharwal Dog",
  "Barbet",
  "Basenji",
  "Basque Shepherd Dog",
  "Basset Artésien Normand",
  "Basset Bleu de Gascogne",
  "Basset Fauve de Bretagne",
  "Basset Griffon Vendéen Grand",
  "Basset Griffon Vendéen Petit",
  "Basset Hound",
  "Bavarian Mountain Hound",
  "Beagle",
  "Beagle-Harrier",
  "Bearded Collie",
  "Beauceron",
  "Bedlington Terrier",
  "Belgian Shepherd Dog (Groenendael)",
  "Belgian Shepherd Dog (Laekenois)",
  "Belgian Shepherd Dog (Malinois)",
  "Belgian Shepherd (Tervuren)",
  "Bergamasco Shepherd",
  "Berger",
  "Blanc Suisse",
  "Berger Picard",
  "Berner Laufhund",
  "Bernese Mountain Dog",
  "Bichon Frisé",
  "Billy",
  "Black and Tan Coonhound",
  "Black and Tan Virginia Foxhound",
  "Bullenbeisser",
  "Black Norwegian Elkhound",
  "Black Russian Terrier",
  "Blackmouth Cur",
  "Bleu de Gascogne Grand",
  "Bleu de Gascogne Petit",
  "Bloodhound",
  "Blue Lacy",
  "Blue Paul Terrier",
  "Bluetick Coonhound",
  "Boerboel",
  "Bohemian Shepherd",
  "Bolognese",
  "Border Collie",
  "Border Terrier",
  "Borzoi",
  "Bosnian Coarse-haired Hound",
  "Boston Terrier",
  "Bouvier des Ardennes",
  "Bouvier des Flandres",
  "Boxer",
  "Boykin Spaniel",
  "Bracco Italiano",
  "Braque d'Auvergne",
  "Braque du Bourbonnais",
  "Braque du Puy",
  "Braque Francais",
  "Braque Saint-Germain",
  "Brazilian Terrier",
  "Briard",
  "Briquet Griffon Vendéen",
  "Brittany",
  "Broholmer",
  "Bruno Jura Hound",
  "Bucovina Shepherd Dog",
  "Bull and Terrier",
  "Bull Terrier",
  "Bull Terrier (Miniature)",
  "Bulldog",
  "Bullmastiff",
  "Bully Kutta",
  "Burgos Pointer Cairn Terrier",
  "Canaan Dog",
  "Canadian Eskimo Dog",
  "Cane Corso",
  "Cão da Serra de Aires",
  "Cão de Castro Laboreiro",
  "Cão Fila de São Miguel",
  "Carolina Dog",
  "Carpathian Shepherd Dog",
  "Catahoula Cur",
  "Catalan Sheepdog",
  "Caucasian Shepherd Dog",
  "Cavalier King",
  "Charles Spaniel",
  "Central Asian Shepherd Dog",
  "Cesky Fousek",
  "Cesky Terrier",
  "Chesapeake Bay Retriever",
  "Chien Français Blanc et Noir",
  "Chien Français Blanc et Orange",
  "Chien Français Tricolore Chien-gris",
  "Chihuahua",
  "Chilean Fox Terrier",
  "Chinese",
  "Chongqing Dog",
  "Chinese Crested Dog",
  "Chinese Imperial Dog",
  "Chinook",
  "Chippiparai",
  "Chow Chow",
  "Cierny Sery",
  "Cimarrón Uruguayo",
  "Cirneco dell'Etna",
  "Clumber Spaniel",
  "Collie, Rough",
  "Collie, Smooth",
  "Combai",
  "Cordoba Fighting Dog",
  "Coton de Tulear",
  "Cretan Hound",
  "Croatian Sheepdog",
  "Cumberland Sheepdog",
  "Curly Coated Retriever",
  "Cursinu",
  "Czechoslovak Wolfdog",
  "Dachshund",
  "Dalmatian",
  "Dandie",
  "Dinmont Terrier",
  "Danish Swedish Farmdog",
  "Deutsche Bracke",
  "Doberman Pinscher",
  "Dogo Argentino",
  "Dogo Cubano",
  "Dogue de Bordeaux",
  "Drentse Patrijshond",
  "Drever",
  "Dunker",
  "Dutch Shepherd Dog",
  "Dutch Smoushond",
  "East Siberian Laika",
  "East-European Shepherd",
  "Elo",
  "English Cocker Spaniel",
  "English Coonhound",
  "English Foxhound",
  "English Mastiff",
  "English Setter",
  "English Sheep Dog",
  "English Shepherd",
  "English Springer Spaniel",
  "English Toy Terrier (Black & Tan)",
  "English Water Spaniel",
  "English White Terrier",
  "Entlebucher Mountain Dog",
  "Épagneul Bleu de Picardie",
  "Estonian Hound",
  "Estrela Mountain Dog",
  "Eurasier Field Spaniel",
  "Fila Brasileiro",
  "Finnish Hound",
  "Finnish Lapphund",
  "Finnish Spitz",
  "Flat-Coated Retriever",
  "Formosan Mountain Dog",
  "Fox Terrier (Smooth)",
  "Fox Terrier, Wire",
  "French Brittany",
  "French Bulldog",
  "French Spaniel Galgo Español",
  "Gascon Saintongeois",
  "Georgian shepherd",
  "German Longhaired Pointer",
  "German Pinscher",
  "German Rough-haired Pointer",
  "German Shepherd Dog",
  "German Shorthaired Pointer",
  "German Spaniel",
  "German Spitz",
  "German Wirehaired Pointer",
  "Giant Schnauzer Glen of Imaal Terrier",
  "Golden Retriever",
  "Gordon Setter",
  "Gran Mastín de Borínquen",
  "Grand Anglo-Français Blanc et Noir",
  "Grand Anglo-Français Blanc et Orange",
  "Grand Anglo-Français Tricolore",
  "Grand Griffon Vendéen",
  "Great Dane Great Pyrenees",
  "Greater Swiss Mountain Dog",
  "Greek Harehound",
  "Greenland Dog",
  "Greyhound",
  "Griffon Bleu de Gascogne",
  "Griffon Bruxellois",
  "Griffon Fauve de Bretagne",
  "Griffon Nivernais",
  "Hamiltonstövare",
  "Hanover Hound",
  "Hare Indian Dog",
  "Harrier",
  "Havanese",
  "Hawaiian Poi Dog",
  "Himalayan Sheepdog",
  "Hokkaido",
  "Hortaya Borzaya",
  "Hovawart",
  "Huntaway",
  "Hygenhund",
  "Ibizan Hound",
  "Icelandic Sheepdog",
  "Indian pariah dog",
  "Indian Spitz",
  "Irish Red and White Setter",
  "Irish Setter",
  "Irish Terrier",
  "Irish Water Spaniel",
  "Irish Wolfhound",
  "Istrian Coarse-haired Hound",
  "Istrian Shorthaired Hound",
  "Italian Greyhound",
  "Jack Russell Terrier",
  "Jagdterrier",
  "Jämthund",
  "Japanese Chin",
  "Japanese Spitz",
  "Japanese Terrier",
  "Kaikadi",
  "Kai Ken",
  "Kangal Dog",
  "Kanni",
  "Karakachan Dog",
  "Karelian Bear Dog",
  "Karst Shepherd",
  "Keeshond Kerry Beagle",
  "Kerry Blue Terrier",
  "King Charles Spaniel",
  "King Shepherd",
  "Kintamani",
  "Kishu",
  "Komondor",
  "Kooikerhondje",
  "Koolie",
  "Korean Jindo Dog",
  "Kromfohrländer",
  "umaon Mastiff",
  "Kunming Wolfdog",
  "Kuri",
  "Kuvasz",
  "Kyi-Le",
  "Labrador",
  "Husky",
  "Labrador Retriever",
  "Lagotto Romagnolo",
  "Lakeland Terrier",
  "Lancashire Heeler",
  "Landseer Lapponian Herder",
  "Leonberger",
  "Lhasa Apso",
  "Lithuanian Hound",
  "Longhaired Whippet",
  "Löwchen",
  "Magyar Agár",
  "Mahratta Greyhound",
  "Maltese Manchester Terrier",
  "Maremma Sheepdog McNab",
  "Mexican Hairless Dog",
  "Miniature Australian Shepherd",
  "Miniature American Shepherd",
  "Miniature Fox Terrier",
  "Miniature Pinscher",
  "Miniature Schnauzer",
  "Miniature Shar Pei",
  "Mioritic",
  "Molossus",
  "Montenegrin Mountain Hound",
  "Moscow Watchdog",
  "Moscow Water Dog",
  "Mountain Cur",
  "Mucuchies",
  "Mudhol Hound",
  "Mudi",
  "Münsterländer Large",
  "Münsterländer Small",
  "Neapolitan Mastiff Newfoundland",
  "New Zealand Heading Dog",
  "Norfolk Spaniel",
  "Norfolk Terrier",
  "Norrbottenspets",
  "North Country Beagle",
  "Northern Inuit Dog",
  "Norwegian Buhund",
  "Norwegian Elkhound",
  "Norwegian Lundehund",
  "Norwich Terrier",
  "Nova Scotia Duck-Tolling Retriever",
  "Old Croatian Sighthound",
  "Old Danish Pointer",
  "Old English Sheepdog",
  "Old English Terrier",
  "Old German Shepherd Dog",
  "Old Time Farm Shepherd",
  "Olde English Bulldogge",
  "Otterhound",
  "Pachon Navarro",
  "Paisley Terrier",
  "Papillon",
  "Parson Russell Terrier",
  "Patterdale Terrier",
  "Pekingese",
  "Perro de Presa Canario",
  "Perro de Presa Mallorquin",
  "Peruvian Hairless Dog",
  "Phalène",
  "Pharaoh Hound",
  "Phu Quoc ridgeback dog",
  "Picardy Spaniel",
  "Pitt Bull",
  "Plott Hound",
  "Podenco Canario",
  "Pointer",
  "Polish Greyhound",
  "Polish Hound",
  "Polish Hunting Dog",
  "Polish Lowland Sheepdog",
  "Polish Tatra Sheepdog",
  "Pomeranian",
  "Pont-Audemer Spaniel",
  "Poodle",
  "Porcelaine",
  "Portuguese Podengo",
  "Portuguese Pointer",
  "Portuguese Water Dog",
  "Posavac Hound",
  "Praský Krysarík",
  "Pudelpointer",
  "Pug",
  "Puli",
  "Pumi",
  "Pungsan Dog",
  "Pyrenean Mastiff",
  "Pyrenean Shepherd",
  "Rafeiro do Alentejo",
  "Rajapalayam",
  "Rampur Greyhound",
  "Rastreador Brasileiro",
  "Ratonero Bodeguero Andaluz",
  "Ratonero Valenciano",
  "Rat Terrier",
  "Redbone Coonhound",
  "Rhodesian Ridgeback",
  "Rottweiler",
  "Russian Spaniel",
  "Russian Toy",
  "Russian tracker",
  "Russo-European Laika",
  "Russell Terrier",
  "Saarlooswolfhond",
  "Sabueso Español",
  "Saint-Usuge Spaniel",
  "Sakhalin Husky",
  "Saluki",
  "Samoyed",
  "Sapsali",
  "Šarplaninac",
  "Schapendoes",
  "Schillerstövare",
  "Schipperke",
  "Standard Schnauzer",
  "Schweizer Laufhund",
  "Schweizerischer Niederlaufhund",
  "Scotch Collie",
  "Scottish Deerhound",
  "Scottish Terrier",
  "Sealyham Terrier",
  "Segugio Italiano",
  "Seppala Siberian Sleddog",
  "Serbian Hound",
  "Serbian Tricolour Hound",
  "Shar Pei",
  "Shetland Sheepdog",
  "Shiba Inu",
  "Shih Tzu",
  "Shikoku",
  "Shiloh Shepherd Dog",
  "Short Haired Pointer",
  "Siberian Husky",
  "Silken Windhound",
  "Sinhala Hound",
  "Skye Terrier",
  "Sloughi",
  "Slovak Cuvac",
  "Slovakian Rough-haired Pointer",
  "Slovenský Kopov",
  "Smålandsstövare",
  "Small Greek Domestic Dog",
  "Soft-Coated Wheaten Terrier",
  "South Russian Ovcharka",
  "Southern Hound",
  "Spanish Mastiff",
  "Spanish Water Dog",
  "Spinone Italiano",
  "Sporting Lucas Terrier",
  "St. Bernard",
  "St. John's water dog",
  "Stabyhoun",
  "Staffordshire Bull Terrier",
  "Stephens Cur",
  "Styrian Coarse-haired Hound",
  "Sussex Spaniel",
  "Swedish Lapphund",
  "Swedish Vallhund",
  "Tahltan Bear Dog",
  "Taiga",
  "Talbot",
  "Tamaskan Dog",
  "Teddy Roosevelt Terrier",
  "Telomian",
  "Tennessee Treeing Brindle",
  "Tenterfield Terrier",
  "Thai Bangkaew Dog",
  "Thai Ridgeback",
  "Tibetan Mastiff",
  "Tibetan Spaniel",
  "Tibetan Terrier",
  "Tornjak",
  "Tosa",
  "Toy Bulldog",
  "Toy Fox Terrier",
  "Toy Manchester Terrier",
  "Toy Trawler Spaniel",
  "Transylvanian Hound",
  "Treeing Cur",
  "Treeing Walker Coonhound",
  "Trigg Hound",
  "Tweed Water Spaniel",
  "Tyrolean Hound",
  "Vizsla",
  "Volpino Italiano",
  "Weimaraner",
  "Welsh Corgi Cardigan",
  "Welsh Corgi Pembroke",
  "Welsh Sheepdog",
  "Welsh Springer Spaniel",
  "Welsh Terrier",
  "West Highland White Terrier",
  "West Siberian Laika",
  "Westphalian Dachsbracke",
  "Wetterhoun",
  "Wheaton Terrier",
  "Whippet",
  "White Shepherd",
  "Wirehaired Pointing Griffon",
  "Wirehaired Vizsla",
  "Yorkshire Terrier",
  "Mutt",
  "I don't know",
  "Rescue",
  "Miscellaneous",
  "Unknown"
]

mix_delete_list = [
"Australian Stumpy Tail Cattle Dog[10]",
"Welsh Corgi, Cardigan",
  "Welsh Corgi, Pembroke",
    "Münsterländer, Large",
  "Münsterländer, Small",
    "Bleu de Gascogne, Grand",
  "Bleu de Gascogne, Petit",
    "Basset Griffon Vendéen, Grand",
  "Basset Griffon Vendéen, Petit"
]

mix_list.each do |name|
  Mix.find_or_create_by(value: name)
end

mix_delete_list.each do |name|
  m = Mix.find_or_create_by(value: name)
  m.destroy if m
end

energy_list = [
  "high",
  "active",
  "good",
  "some",
  "low",
  "zzzzz"
]

energy_list.each do |level|
  EnergyLevel.find_or_create_by(value: level)
end

personality_list = [
  "anxious",
  "curious",
  "timid",
  "whatever",
  "friendly",
  "fetcher",
  "lover",
  "still a puppy"
]

personality_list.each do |type|
  Personality.find_or_create_by(value: type)
end


likes_list = [
  "dogs (all)",
  "dogs (some or most)",
  "cats",
  "men",
  "women",
  "children"
]

likes_list.each do |item|
  Like.find_or_create_by(value: item)
end

sizes_list = [
  "small (0-15)",
  "medium (16-40)",
  "large (41-100)",
  "xl (101+)"
]

sizes_list.each do |size|
  Size.find_or_create_by(value: size)
end

barks_list = [
  "Rarely",
  "When playing",
  "When someone's at the door",
  "When left alone",
  "All the time"
]

barks_list.each do |bark|
  Bark.find_or_create_by(value: bark)
end

locations_list = [
  "My Place",
  "Your Place",
  "Either",
  "Other"
]

locations_list.each do |location|
  Location.find_or_create_by(value: location)
end

#dogs_list = [{:name => "Fluffy", :gender => "Female", :size_id => 1}, {:name => "Fido", :gender => "Male", :size_id => 3}, {:name => "Batman", :gender => "Female", :size_id => 2}]
#
#dogs_list.each do |dog|
#  dog = Dog.create(:name => dog[:name], :gender => dog[:gender])
#  dog.size_id = dog[:size_id]
#  dog.save 
#end
