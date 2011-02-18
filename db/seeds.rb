# Users
puts "Started creating users"
User.create!(:pseudo => "ahe", :firstname => "Anthony", :lastname => "Heukmes", :email => "ahe@ahe.be", :role => "admin")
User.create!(:pseudo => "willd", :firstname => "Wilfried", :lastname => "Dalmat", :email => "willd@ahe.be", :role => "middlefielder")
User.create!(:pseudo => "marcos", :firstname => "Marcos", :lastname => "Camozzato", :email => "marcos@ahe.be", :role => "defender")
User.create!(:pseudo => "onyewuo", :firstname => "Ogushi", :lastname => "Onyewu", :email => "onyewuo@ahe.be", :role => "defender")
User.create!(:pseudo => "sarrm", :firstname => "Momo", :lastname => "Sarr", :email => "sarrm@ahe.be", :role => "defender")
User.create!(:pseudo => "mulemol", :firstname => "Landry", :lastname => "Mulemo", :email => "mulemol@ahe.be", :role => "defender")
User.create!(:pseudo => "witsela", :firstname => "Axel", :lastname => "Witsel", :email => "witsela@ahe.be", :role => "middlefielder")
User.create!(:pseudo => "defours", :firstname => "Steven", :lastname => "Defour", :email => "defours@ahe.be", :role => "middlefielder")
User.create!(:pseudo => "goreuxr", :firstname => "Reginal", :lastname => "Goreux", :email => "goureux@ahe.be", :role => "middlefielder")
User.create!(:pseudo => "jova", :firstname => "Milan", :lastname => "Jovanovic", :email => "jova@ahe.be", :role => "striker")
User.create!(:pseudo => "decamar", :firstname => "Igor", :lastname => "De Camargo", :email => "decamar@ahe.be", :role => "striker")
User.create!(:pseudo => "mbokani", :firstname => "Dieumerci", :lastname => "Mbokani", :email => "mbokani@ahe.be", :role => "striker")
User.create!(:pseudo => "nicaise", :firstname => "Benjamin", :lastname => "Nicaise", :email => "nicaise@ahe.be", :role => "middlefielder")
User.create!(:pseudo => "bolats", :firstname => "Sinan", :lastname => "Bolat", :email => "bolats@ahe.be", :role => "goalkeeper")
User.create!(:pseudo => "leonb", :firstname => "Leon", :lastname => "Benko", :email => "leonb@ahe.be", :role => "striker")
User.create!(:pseudo => "espi", :firstname => "Aragon", :lastname => "Espinoza", :email => "espi@ahe.be", :role => "goalkeeper")
User.create!(:pseudo => "carce", :firstname => "Medhi", :lastname => "Carcela", :email => "carce@ahe.be", :role => "middlefielder")
User.create!(:pseudo => "manga", :firstname => "Eliaquim", :lastname => "Mangala", :email => "manga@ahe.be", :role => "middlefielder")
User.create!(:pseudo => "miku", :firstname => "Tomislav", :lastname => "Mikulic", :email => "miku@ahe.be", :role => "defender")
User.create!(:pseudo => "maestro", :firstname => "Segio", :lastname => "Conceicao", :email => "maestro@ahe.be", :role => "middlefielder")
User.create!(:pseudo => "bolo", :firstname => "Laszlo", :lastname => "Boloni", :email => "bolo@ahe.be", :role => "trainer")
User.create!(:pseudo => "pesto", :firstname => "Joaquim", :lastname => "Preto", :email => "ahe@ahe.be", :role => "trainer")
User.create!(:pseudo => "pf", :firstname => "Pierre", :lastname => "Francois", :email => "pf@ahe.be", :role => "admin")
User.create!(:pseudo => "moi", :firstname => "Moi", :lastname => "Moi", :email => "moi@ahe.be", :role => "striker")
puts "Finished creating users"
puts "\n"

# Pets
puts "Started creating pets"
Pet.create!(:name => "Youpi", :user_id => 1)
Pet.create!(:name => "Blouk", :user_id => 1)
Pet.create!(:name => "Pif", :user_id => 1)
Pet.create!(:name => "Paf", :user_id => 2)
Pet.create!(:name => "Meuh", :user_id => 3)
Pet.create!(:name => "Boug", :user_id => 3)
Pet.create!(:name => "Zigg", :user_id => 4)
Pet.create!(:name => "Iop", :user_id => 4)
Pet.create!(:name => "Tcham", :user_id => 4)
Pet.create!(:name => "Outch", :user_id => 5)
Pet.create!(:name => "Tzii", :user_id => 5)
Pet.create!(:name => "Tutu", :user_id => 6)
Pet.create!(:name => "Tata", :user_id => 7)
Pet.create!(:name => "Bobo", :user_id => 7)
Pet.create!(:name => "Bulk", :user_id => 7)
Pet.create!(:name => "Rocky", :user_id => 7)
Pet.create!(:name => "Arnold", :user_id => 8)
Pet.create!(:name => "Miii", :user_id => 9)
Pet.create!(:name => "Tititi", :user_id => 10)
Pet.create!(:name => "Bob", :user_id => 11)
Pet.create!(:name => "Max", :user_id => 12)
Pet.create!(:name => "Poop", :user_id => 12)
Pet.create!(:name => "Bikk", :user_id => 13)
Pet.create!(:name => "Allo", :user_id => 13)
puts "Finished creating pets"
puts "\n"

# Players
puts "Started creating players"
Player.create!(:pseudo => "ahe", :firstname => "Anthony", :lastname => "Heukmes", :email => "ahe@ahe.be", :role => "admin")
Player.create!(:pseudo => "willd", :firstname => "Wilfried", :lastname => "Dalmat", :email => "willd@ahe.be", :role => "middlefielder")
Player.create!(:pseudo => "marcos", :firstname => "Marcos", :lastname => "Camozzato", :email => "marcos@ahe.be", :role => "defender")
Player.create!(:pseudo => "onyewuo", :firstname => "Ogushi", :lastname => "Onyewu", :email => "onyewuo@ahe.be", :role => "defender")
Player.create!(:pseudo => "sarrm", :firstname => "Momo", :lastname => "Sarr", :email => "sarrm@ahe.be", :role => "defender")
Player.create!(:pseudo => "mulemol", :firstname => "Landry", :lastname => "Mulemo", :email => "mulemol@ahe.be", :role => "defender")
Player.create!(:pseudo => "witsela", :firstname => "Axel", :lastname => "Witsel", :email => "witsela@ahe.be", :role => "middlefielder")
Player.create!(:pseudo => "defours", :firstname => "Steven", :lastname => "Defour", :email => "defours@ahe.be", :role => "middlefielder")
Player.create!(:pseudo => "goreuxr", :firstname => "Reginal", :lastname => "Goreux", :email => "goureux@ahe.be", :role => "middlefielder")
Player.create!(:pseudo => "jova", :firstname => "Milan", :lastname => "Jovanovic", :email => "jova@ahe.be", :role => "striker")
Player.create!(:pseudo => "decamar", :firstname => "Igor", :lastname => "De Camargo", :email => "decamar@ahe.be", :role => "striker")
Player.create!(:pseudo => "mbokani", :firstname => "Dieumerci", :lastname => "Mbokani", :email => "mbokani@ahe.be", :role => "striker")
Player.create!(:pseudo => "nicaise", :firstname => "Benjamin", :lastname => "Nicaise", :email => "nicaise@ahe.be", :role => "middlefielder")
Player.create!(:pseudo => "bolats", :firstname => "Sinan", :lastname => "Bolat", :email => "bolats@ahe.be", :role => "goalkeeper")
Player.create!(:pseudo => "leonb", :firstname => "Leon", :lastname => "Benko", :email => "leonb@ahe.be", :role => "striker")
Player.create!(:pseudo => "espi", :firstname => "Aragon", :lastname => "Espinoza", :email => "espi@ahe.be", :role => "goalkeeper")
Player.create!(:pseudo => "carce", :firstname => "Medhi", :lastname => "Carcela", :email => "carce@ahe.be", :role => "middlefielder")
Player.create!(:pseudo => "manga", :firstname => "Eliaquim", :lastname => "Mangala", :email => "manga@ahe.be", :role => "middlefielder")
Player.create!(:pseudo => "miku", :firstname => "Tomislav", :lastname => "Mikulic", :email => "miku@ahe.be", :role => "defender")
Player.create!(:pseudo => "maestro", :firstname => "Segio", :lastname => "Conceicao", :email => "maestro@ahe.be", :role => "middlefielder")
Player.create!(:pseudo => "bolo", :firstname => "Laszlo", :lastname => "Boloni", :email => "bolo@ahe.be", :role => "trainer")
Player.create!(:pseudo => "pesto", :firstname => "Joaquim", :lastname => "Preto", :email => "ahe@ahe.be", :role => "trainer")
Player.create!(:pseudo => "pf", :firstname => "Pierre", :lastname => "Francois", :email => "pf@ahe.be", :role => "admin")
Player.create!(:pseudo => "moi", :firstname => "Moi", :lastname => "Moi", :email => "moi@ahe.be", :role => "striker")
puts "Finished creating players"
puts "\n"

# Animals
puts "Started creating animals"
Animal.create!(:name => "Youpi", :player_id => 1)
Animal.create!(:name => "Blouk", :player_id => 1)
Animal.create!(:name => "Pif", :player_id => 1)
Animal.create!(:name => "Paf", :player_id => 2)
Animal.create!(:name => "Meuh", :player_id => 3)
Animal.create!(:name => "Boug", :player_id => 3)
Animal.create!(:name => "Zigg", :player_id => 4)
Animal.create!(:name => "Iop", :player_id => 4)
Animal.create!(:name => "Tcham", :player_id => 4)
Animal.create!(:name => "Outch", :player_id => 5)
Animal.create!(:name => "Tzii", :player_id => 5)
Animal.create!(:name => "Tutu", :player_id => 6)
Animal.create!(:name => "Tata", :player_id => 7)
Animal.create!(:name => "Bobo", :player_id => 7)
Animal.create!(:name => "Bulk", :player_id => 7)
Animal.create!(:name => "Rocky", :player_id => 7)
Animal.create!(:name => "Arnold", :player_id => 8)
Animal.create!(:name => "Miii", :player_id => 9)
Animal.create!(:name => "Tititi", :player_id => 10)
Animal.create!(:name => "Bob", :player_id => 11)
Animal.create!(:name => "Max", :player_id => 12)
Animal.create!(:name => "Poop", :player_id => 12)
Animal.create!(:name => "Bikk", :player_id => 13)
Animal.create!(:name => "Allo", :player_id => 13)
puts "Finished creating animals"
puts "\n"

# Clients
puts "Started creating clients"
Client.create!(:name => "Client 1")
Client.create!(:name => "Client 2")
Client.create!(:name => "Client 3")
puts "Finished creating clients"
puts "\n"

# Invheaders
puts "Started creating invoice headers"
Invheader.create!(:invdate => "2007-10-01", :client_id => 1, :amount => "100.00", :tax => "20.00", :total => "120.00", :note => "note 1" )
Invheader.create!(:invdate => "2007-10-03", :client_id => 1, :amount => "200.00", :tax => "40.00", :total => "240.00", :note => "note 2" )
Invheader.create!(:invdate => "2007-10-02", :client_id => 2, :amount => "300.00", :tax => "60.00", :total => "360.00", :note => "note for invoice 3" )
Invheader.create!(:invdate => "2007-10-04", :client_id => 3, :amount => "150.00", :tax => "0.00", :total => "150.00", :note => "no tax" )
Invheader.create!(:invdate => "2007-10-05", :client_id => 3, :amount => "100.00", :tax => "0.00", :total => "100.00", :note => "no tax" )
Invheader.create!(:invdate => "2007-10-05", :client_id => 1, :amount => "50.00", :tax => "10.00", :total => "60.00", :note => nil )
Invheader.create!(:invdate => "2007-10-05", :client_id => 2, :amount => "120.00", :tax => "12.00", :total => "134.00", :note => nil )
Invheader.create!(:invdate => "2007-10-06", :client_id => 3, :amount => "200.00", :tax => "0.00", :total => "200.00", :note => nil )
Invheader.create!(:invdate => "2007-10-06", :client_id => 1, :amount => "200.00", :tax => "40.00", :total => "240.00", :note => nil )
Invheader.create!(:invdate => "2007-10-06", :client_id => 2, :amount => "100.00", :tax => "20.00", :total => "120.00", :note => nil )
Invheader.create!(:invdate => "2007-10-06", :client_id => 1, :amount => "600.00", :tax => "120.00", :total => "720.00", :note => nil )
Invheader.create!(:invdate => "2007-10-06", :client_id => 2, :amount => "700.00", :tax => "140.00", :total => "840.00", :note => nil )
Invheader.create!(:invdate => "2007-10-06", :client_id => 3, :amount => "1000.00", :tax => "0.00", :total => "1000.00", :note => nil )
puts "Finished creating invoice headers"
puts "\n"

# Invlines
puts "Started creating invoice lines"
Invline.create!( :invheader_id => 1, :num => 1, :item => "item 1", :qty => "1.00", :unit => "20.00" )
Invline.create!( :invheader_id => 1, :num => 2, :item => "item 2", :qty => "2.00", :unit => "40.00" )
Invline.create!( :invheader_id => 2, :num => 1, :item => "item 1", :qty => "2.00", :unit => "20.00" )
Invline.create!( :invheader_id => 2, :num => 2, :item => "item 2", :qty => "4.00", :unit => "40.00" )
Invline.create!( :invheader_id => 3, :num => 1, :item => "item 3", :qty => "1.00", :unit => "100.00" )
Invline.create!( :invheader_id => 3, :num => 4, :item => "item 4", :qty => "1.00", :unit => "200.00" )
Invline.create!( :invheader_id => 4, :num => 1, :item => "item 1", :qty => "1.00", :unit => "100.00" )
Invline.create!( :invheader_id => 4, :num => 2, :item => "item 2", :qty => "1.00", :unit => "50.00" )
Invline.create!( :invheader_id => 5, :num => 3, :item => "item 3", :qty => "1.00", :unit => "100.00" )
Invline.create!( :invheader_id => 6, :num => 4, :item => "item 4", :qty => "1.00", :unit => "50.00" )
Invline.create!( :invheader_id => 7, :num => 1, :item => "item 5", :qty => "2.00", :unit => "10.00" )
Invline.create!( :invheader_id => 7, :num => 2, :item => "item 1", :qty => "1.00", :unit => "100.00" )
Invline.create!( :invheader_id => 8, :num => 1, :item => "item 3", :qty => "1.00", :unit => "50.00" )
Invline.create!( :invheader_id => 8, :num => 2, :item => "item 2", :qty => "1.00", :unit => "120.00" )
Invline.create!( :invheader_id => 8, :num => 3, :item => "item 3", :qty => "1.00", :unit => "30.00" )
Invline.create!( :invheader_id => 9, :num => 1, :item => "item 6", :qty => "1.00", :unit => "140.00" )
Invline.create!( :invheader_id => 9, :num => 2, :item => "item 3", :qty => "1.00", :unit => "60.00" )
Invline.create!( :invheader_id => 10, :num => 1, :item => "item 5", :qty => "3.00", :unit => "10.00" )
Invline.create!( :invheader_id => 10, :num => 2, :item => "item 4", :qty => "1.00", :unit => "70.00" )
Invline.create!( :invheader_id => 11, :num => 1, :item => "item 1", :qty => "2.00", :unit => "100.00" )
Invline.create!( :invheader_id => 11, :num => 2, :item => "item 2", :qty => "3.00", :unit => "50.00" )
Invline.create!( :invheader_id => 11, :num => 3, :item => "item 3", :qty => "1.00", :unit => "50.00" )
Invline.create!( :invheader_id => 11, :num => 4, :item => "item 4", :qty => "1.00", :unit => "200.00" )
Invline.create!( :invheader_id => 12, :num => 4, :item => "item 4", :qty => "1.00", :unit => "300.00" )
Invline.create!( :invheader_id => 12, :num => 2, :item => "item 2", :qty => "1.00", :unit => "400.00" )
Invline.create!( :invheader_id => 13, :num => 13, :item => "item 13", :qty => "1.00", :unit => "1000.00" )
puts "Finished creating invoice lines"
puts "\n"

# Items
puts "Started creating 20001 items"
puts "Please be patient ..."
f = File.open("#{RAILS_ROOT}/db/longtext.txt", "r")
wordlist = f.read.split(/ /)
wordlist_length = wordlist.length

20001.times do
  word = wordlist[rand(wordlist_length)]
  number = 1
  while number < 99999
    number = rand(999999)
  end
  Item.create!(:item => "#{word}", :cd => "#{number.to_s}")
end
puts "Finished creating items"
puts "\n"

# Accounts
puts "Started creating Accounts"
Account.create!(:parent_id => nil, :name => "ROOT", :level => 0, :lft =>  1, :rgt =>  18 )
Account.create!(:parent_id =>   1, :name => "Cash" ,        :acc_num => 100, :debit =>  400, :credit =>  250, :balance =>   150, :level => 1, :lft =>  2, :rgt =>  9 )
Account.create!(:parent_id =>   2, :name => "Cash 1" ,      :acc_num =>   1, :debit =>  300, :credit =>  200, :balance =>   100, :level => 2 ,:lft =>  3, :rgt =>  6 )
Account.create!(:parent_id =>   3, :name => "Sub Cash 1" ,  :acc_num =>   1, :debit =>  300, :credit =>  200, :balance =>   100, :level => 3, :lft =>  4, :rgt =>  5 )
Account.create!(:parent_id =>   2, :name => "Cash 2" ,      :acc_num =>   2, :debit =>  100, :credit =>   50, :balance =>    50, :level => 2, :lft =>  7, :rgt =>  8 )
Account.create!(:parent_id =>   1, :name => "Bank's" ,      :acc_num => 200, :debit => 1500, :credit => 1000, :balance =>   500, :level => 1, :lft => 10, :rgt => 15 )
Account.create!(:parent_id =>   6, :name => "Bank 1" ,      :acc_num =>   1, :debit =>  500, :credit =>    0, :balance =>   500, :level => 2, :lft => 11, :rgt => 12 )
Account.create!(:parent_id =>   6, :name => "Bank 2" ,      :acc_num =>   2, :debit => 1000, :credit => 1000, :balance =>     0, :level => 2, :lft => 13, :rgt => 14 )
Account.create!(:parent_id =>   1, :name => "Fixed asset" , :acc_num => 300, :debit =>    0, :credit => 1000, :balance => -1000, :level => 1, :lft => 16, :rgt => 17 )
puts "Finished creating Accounts"
puts "\n"

# Birds
puts "Started creating birds"
Bird.create!(:name => "Great <em>Bittern</em>", :scientific_name => "Botaurus stellaris")
Bird.create!(:name => "Little <em>Grebe</em>", :scientific_name => "Tachybaptus ruficollis")
Bird.create!(:name => "Black-necked Grebe", :scientific_name => "Podiceps nigricollis")
Bird.create!(:name => "Little Bittern", :scientific_name => "Ixobrychus minutus")
Bird.create!(:name => "Black-crowned Night Heron", :scientific_name => "Nycticorax nycticorax")
Bird.create!(:name => "Purple Heron", :scientific_name => "Ardea purpurea")
Bird.create!(:name => "White Stork", :scientific_name => "Ciconia ciconia")
Bird.create!(:name => "Spoonbill", :scientific_name => "Platalea leucorodia")
Bird.create!(:name => "Red-crested Pochard", :scientific_name => "Netta rufina")
Bird.create!(:name => "Common Eider", :scientific_name => "Somateria mollissima")
Bird.create!(:name => "Red Kite", :scientific_name => "Milvus milvus")
Bird.create!(:name => "Hen Harrier", :scientific_name => "Circus cyaneus")
Bird.create!(:name => "Montagu`s Harrier", :scientific_name => "Circus pygargus")
Bird.create!(:name => "Black Grouse", :scientific_name => "Tetrao tetrix")
Bird.create!(:name => "Grey Partridge", :scientific_name => "Perdix perdix")
Bird.create!(:name => "Spotted Crake", :scientific_name => "Porzana porzana")
Bird.create!(:name => "Corncrake", :scientific_name => "Crex crex")
Bird.create!(:name => "Common Crane", :scientific_name => "Grus grus")
Bird.create!(:name => "Avocet", :scientific_name => "Recurvirostra avosetta")
Bird.create!(:name => "Stone Curlew", :scientific_name => "Burhinus oedicnemus")
Bird.create!(:name => "Common Ringed Plover", :scientific_name => "Charadrius hiaticula")
Bird.create!(:name => "Kentish Plover", :scientific_name => "Charadrius alexandrinus")
Bird.create!(:name => "Ruff", :scientific_name => "Philomachus pugnax")
Bird.create!(:name => "Common Snipe", :scientific_name => "Gallinago gallinago")
Bird.create!(:name => "Black-tailed Godwit", :scientific_name => "Limosa limosa")
Bird.create!(:name => "Common Redshank", :scientific_name => "Tringa totanus")
Bird.create!(:name => "Sandwich Tern", :scientific_name => "Sterna sandvicensis")
Bird.create!(:name => "Common Tern", :scientific_name => "Sterna hirundo")
Bird.create!(:name => "Arctic Tern", :scientific_name => "Sterna paradisaea")
Bird.create!(:name => "Little Tern", :scientific_name => "Sternula albifrons")
Bird.create!(:name => "Black Tern", :scientific_name => "Chlidonias niger")
Bird.create!(:name => "Barn Owl", :scientific_name => "Tyto alba")
Bird.create!(:name => "Little Owl", :scientific_name => "Athene noctua")
Bird.create!(:name => "Short-eared Owl", :scientific_name => "Asio flammeus")
Bird.create!(:name => "European Nightjar", :scientific_name => "Caprimulgus europaeus")
Bird.create!(:name => "Common Kingfisher", :scientific_name => "Alcedo atthis")
Bird.create!(:name => "Eurasian Hoopoe", :scientific_name => "Upupa epops")
Bird.create!(:name => "Eurasian Wryneck", :scientific_name => "Jynx torquilla")
Bird.create!(:name => "European Green Woodpecker", :scientific_name => "Picus viridis")
Bird.create!(:name => "Crested Lark", :scientific_name => "Galerida cristata")
Bird.create!(:name => "White-headed Duck", :scientific_name => "Oxyura leucocephala")
Bird.create!(:name => "Pale-bellied Brent Goose", :scientific_name => "Branta hrota")
Bird.create!(:name => "Tawny Pipit", :scientific_name => "Anthus campestris")
Bird.create!(:name => "Whinchat", :scientific_name => "Saxicola rubetra")
Bird.create!(:name => "European Stonechat", :scientific_name => "Saxicola rubicola")
Bird.create!(:name => "Northern Wheatear", :scientific_name => "Oenanthe oenanthe")
Bird.create!(:name => "Savi`s Warbler", :scientific_name => "Locustella luscinioides")
Bird.create!(:name => "Sedge Warbler", :scientific_name => "Acrocephalus schoenobaenus")
Bird.create!(:name => "Great Reed Warbler", :scientific_name => "Acrocephalus arundinaceus")
Bird.create!(:name => "Bearded Reedling", :scientific_name => "Panurus biarmicus")
Bird.create!(:name => "Red-backed Shrike", :scientific_name => "Lanius collurio")
Bird.create!(:name => "Great Grey Shrike", :scientific_name => "Lanius excubitor")
Bird.create!(:name => "Woodchat Shrike", :scientific_name => "Lanius senator")
Bird.create!(:name => "Common Raven", :scientific_name => "Corvus corax")
Bird.create!(:name => "Yellowhammer", :scientific_name => "Emberiza citrinella")
Bird.create!(:name => "Ortolan Bunting", :scientific_name => "Emberiza hortulana")
Bird.create!(:name => "Corn Bunting", :scientific_name => "Emberiza calandra")
Bird.create!(:name => "Great Cormorant", :scientific_name => "Phalacrocorax carbo")
Bird.create!(:name => "Hawfinch", :scientific_name => "Coccothraustes coccothraustes")
Bird.create!(:name => "Common Shelduck", :scientific_name => "Tadorna tadorna")
Bird.create!(:name => "Bluethroat", :scientific_name => "Luscinia svecica")
Bird.create!(:name => "Grey Heron", :scientific_name => "Ardea cinerea")
Bird.create!(:name => "Barn Swallow", :scientific_name => "Hirundo rustica")
Bird.create!(:name => "Hooded Crow", :scientific_name => "Corvus cornix")
Bird.create!(:name => "Dunlin", :scientific_name => "Calidris alpina")
Bird.create!(:name => "Eurasian Pied Flycatcher", :scientific_name => "Ficedula hypoleuca")
Bird.create!(:name => "Eurasian Nuthatch", :scientific_name => "Sitta europaea")
Bird.create!(:name => "Short-toed Tree.Creeper", :scientific_name => "Certhia brachydactyla")
Bird.create!(:name => "Wood Lark", :scientific_name => "Lullula arborea")
Bird.create!(:name => "Tree.Pipit", :scientific_name => "Anthus trivialis")
Bird.create!(:name => "Eurasian Hobby", :scientific_name => "Falco subbuteo")
Bird.create!(:name => "Marsh Warbler", :scientific_name => "Acrocephalus palustris")
Bird.create!(:name => "Wood Sandpiper", :scientific_name => "Tringa glareola")
Bird.create!(:name => "Tawny Owl", :scientific_name => "Strix aluco")
Bird.create!(:name => "Lesser Whitethroat", :scientific_name => "Sylvia curruca")
Bird.create!(:name => "Barnacle Goose", :scientific_name => "Branta leucopsis")
Bird.create!(:name => "Common Goldeneye", :scientific_name => "Bucephala clangula")
Bird.create!(:name => "Western Marsh Harrier", :scientific_name => "Circus aeruginosus")
Bird.create!(:name => "Common Buzzard", :scientific_name => "Buteo buteo")
Bird.create!(:name => "Sanderling", :scientific_name => "Calidris alba")
Bird.create!(:name => "Little Gull", :scientific_name => "Larus minutus")
Bird.create!(:name => "Eurasian Magpie", :scientific_name => "Pica pica")
Bird.create!(:name => "Willow Warbler", :scientific_name => "Phylloscopus trochilus")
Bird.create!(:name => "Wood Warbler", :scientific_name => "Phylloscopus sibilatrix")
Bird.create!(:name => "Great Crested Grebe", :scientific_name => "Podiceps cristatus")
Bird.create!(:name => "Eurasian Jay", :scientific_name => "Garrulus glandarius")
Bird.create!(:name => "Common Redstart", :scientific_name => "Phoenicurus phoenicurus")
Bird.create!(:name => "Blue-headed Wagtail", :scientific_name => "Motacilla flava")
Bird.create!(:name => "Common Swift", :scientific_name => "Apus apus")
Bird.create!(:name => "Marsh Tit", :scientific_name => "Poecile palustris")
Bird.create!(:name => "Goldcrest", :scientific_name => "Regulus regulus")
Bird.create!(:name => "European Golden Plover", :scientific_name => "Pluvialis apricaria")
Bird.create!(:name => "Eurasian Bullfinch", :scientific_name => "Pyrrhula pyrrhula")
Bird.create!(:name => "Common Whitethroat", :scientific_name => "Sylvia communis")
Bird.create!(:name => "Meadow Pipit", :scientific_name => "Anthus pratensis")
Bird.create!(:name => "Greylag Goose", :scientific_name => "Anser anser")
Bird.create!(:name => "Spotted Flycatcher", :scientific_name => "Muscicapa striata")
Bird.create!(:name => "European Greenfinch", :scientific_name => "Carduelis chloris")
Bird.create!(:name => "Common Greenshank", :scientific_name => "Tringa nebularia")
Bird.create!(:name => "Great Spotted Woodpecker", :scientific_name => "Dendrocopos major")
Bird.create!(:name => "Greater Canada Goose", :scientific_name => "Branta canadensis")
Bird.create!(:name => "Mistle Thrush", :scientific_name => "Turdus viscivorus")
Bird.create!(:name => "Great Black-backed Gull", :scientific_name => "Larus marinus")
Bird.create!(:name => "Goosander", :scientific_name => "Mergus merganser")
Bird.create!(:name => "Great Egret", :scientific_name => "Casmerodius albus")
Bird.create!(:name => "Northern Goshawk", :scientific_name => "Accipiter gentilis")
Bird.create!(:name => "Dunnock", :scientific_name => "Prunella modularis")
Bird.create!(:name => "Stock Dove", :scientific_name => "Columba oenas")
Bird.create!(:name => "Common Wood Pigeon", :scientific_name => "Columba palumbus")
Bird.create!(:name => "Eurasian Woodcock", :scientific_name => "Scolopax rusticola")
Bird.create!(:name => "House Sparrow", :scientific_name => "Passer domesticus")
Bird.create!(:name => "Common House Martin", :scientific_name => "Delichon urbicum")
Bird.create!(:name => "Red Knot", :scientific_name => "Calidris canutus")
Bird.create!(:name => "Western Jackdaw", :scientific_name => "Corvus monedula")
Bird.create!(:name => "Brambling", :scientific_name => "Fringilla montifringilla")
Bird.create!(:name => "Northern Lapwing", :scientific_name => "Vanellus vanellus")
Bird.create!(:name => "European Reed Warbler", :scientific_name => "Acrocephalus scirpaceus")
Bird.create!(:name => "Lesser Black-backed Gull", :scientific_name => "Larus fuscus")
Bird.create!(:name => "Little Egret", :scientific_name => "Egretta garzetta")
Bird.create!(:name => "Little Stint", :scientific_name => "Calidris minuta")
Bird.create!(:name => "Common Linnet", :scientific_name => "Carduelis cannabina")
Bird.create!(:name => "Mute Swan", :scientific_name => "Cygnus olor")
Bird.create!(:name => "Common Cuckoo", :scientific_name => "Cuculus canorus")
Bird.create!(:name => "Black-headed Gull", :scientific_name => "Larus ridibundus")
Bird.create!(:name => "Greater White-fronted Goose", :scientific_name => "Anser albifrons")
Bird.create!(:name => "Great Tit", :scientific_name => "Parus major")
Bird.create!(:name => "Redwing", :scientific_name => "Turdus iliacus")
Bird.create!(:name => "Gadwall", :scientific_name => "Anas strepera")
Bird.create!(:name => "Fieldfare", :scientific_name => "Turdus pilaris")
Bird.create!(:name => "Tufted Duck", :scientific_name => "Aythya fuligula")
Bird.create!(:name => "Crested Tit", :scientific_name => "Lophophanes cristatus")
Bird.create!(:name => "Willow Tit", :scientific_name => "Poecile montanus")
Bird.create!(:name => "Eurasian Coot", :scientific_name => "Fulica atra")
Bird.create!(:name => "Common Blackbird", :scientific_name => "Turdus merula")
Bird.create!(:name => "Smew", :scientific_name => "Mergus albellus")
Bird.create!(:name => "Common Sandpiper", :scientific_name => "Actitis hypoleucos")
Bird.create!(:name => "Sand Martin", :scientific_name => "Riparia riparia")
Bird.create!(:name => "Purple Sandpiper", :scientific_name => "Calidris maritima")
Bird.create!(:name => "Northern Pintail", :scientific_name => "Anas acuta")
Bird.create!(:name => "Blue Tit", :scientific_name => "Cyanistes caeruleus")
Bird.create!(:name => "European Goldfinch", :scientific_name => "Carduelis carduelis")
Bird.create!(:name => "Eurasian Whimbrel", :scientific_name => "Numenius phaeopus")
Bird.create!(:name => "Common Reed Bunting", :scientific_name => "Emberiza schoeniclus")
Bird.create!(:name => "Eurasian Tree Sparrow", :scientific_name => "Passer montanus")
Bird.create!(:name => "Rook", :scientific_name => "Corvus frugilegus")
Bird.create!(:name => "European Robin", :scientific_name => "Erithacus rubecula")
Bird.create!(:name => "Bar-tailed Godwit", :scientific_name => "Limosa lapponica")
Bird.create!(:name => "Dark-bellied Brent Goose", :scientific_name => "Branta bernicla")
Bird.create!(:name => "Eurasian Oystercatcher", :scientific_name => "Haematopus ostralegus")
Bird.create!(:name => "Eurasian Siskin", :scientific_name => "Carduelis spinus")
Bird.create!(:name => "Northern Shoveler", :scientific_name => "Anas clypeata")
Bird.create!(:name => "Eurasian Wigeon", :scientific_name => "Anas penelope")
Bird.create!(:name => "Eurasian Sparrow Hawk", :scientific_name => "Accipiter nisus")
Bird.create!(:name => "Icterine Warbler", :scientific_name => "Hippolais icterina")
Bird.create!(:name => "Common Starling", :scientific_name => "Sturnus vulgaris")
Bird.create!(:name => "Long-tailed Tit", :scientific_name => "Aegithalos caudatus")
Bird.create!(:name => "Ruddy Turnstone", :scientific_name => "Arenaria interpres")
Bird.create!(:name => "Mew Gull", :scientific_name => "Larus canus")
Bird.create!(:name => "Common Pochard", :scientific_name => "Aythya ferina")
Bird.create!(:name => "Common Chiffchaff", :scientific_name => "Phylloscopus collybita")
Bird.create!(:name => "Greater Scaup", :scientific_name => "Aythya marila")
Bird.create!(:name => "Common Kestrel", :scientific_name => "Falco tinnunculus")
Bird.create!(:name => "Garden Warbler", :scientific_name => "Sylvia borin")
Bird.create!(:name => "Eurasian Collared Dove", :scientific_name => "Streptopelia decaocto")
Bird.create!(:name => "Eurasian Skylark", :scientific_name => "Alauda arvensis")
Bird.create!(:name => "Common Chaffinch", :scientific_name => "Fringilla coelebs")
Bird.create!(:name => "Common Moorhen", :scientific_name => "Gallinula chloropus")
Bird.create!(:name => "Water Pipit", :scientific_name => "Anthus spinoletta")
Bird.create!(:name => "Mallard", :scientific_name => "Anas platyrhynchos")
Bird.create!(:name => "Winter Wren", :scientific_name => "Troglodytes troglodytes")
Bird.create!(:name => "Common Teal", :scientific_name => "Anas crecca")
Bird.create!(:name => "Green Sandpiper", :scientific_name => "Tringa ochropus")
Bird.create!(:name => "White Wagtail", :scientific_name => "Motacilla alba")
Bird.create!(:name => "Eurasian Curlew", :scientific_name => "Numenius arquata")
Bird.create!(:name => "Song Thrush", :scientific_name => "Turdus philomelos")
Bird.create!(:name => "European Herring Gull", :scientific_name => "Larus argentatus")
Bird.create!(:name => "Grey Plover", :scientific_name => "Pluvialis squatarola")
Bird.create!(:name => "Carrion Crow", :scientific_name => "Corvus corone")
Bird.create!(:name => "Coal Tit", :scientific_name => "Periparus ater")
Bird.create!(:name => "Spotted Redshank", :scientific_name => "Tringa erythropus")
Bird.create!(:name => "Blackcap", :scientific_name => "Sylvia atricapilla")
Bird.create!(:name => "Egyptian Vulture", :scientific_name => "Neophron percnopterus")
Bird.create!(:name => "Razorbill", :scientific_name => "Alca torda")
Bird.create!(:name => "Alpine Swift", :scientific_name => "Apus melba")
Bird.create!(:name => "Long-legged Buzzard", :scientific_name => "Buteo rufinus")
Bird.create!(:name => "Audouin`s Gull", :scientific_name => "Larus audouinii")
Bird.create!(:name => "Balearic Shearwater", :scientific_name => "Puffinus mauretanicus")
Bird.create!(:name => "Upland Sandpiper", :scientific_name => "Bartramia longicauda")
Bird.create!(:name => "Greater Spotted Eagle", :scientific_name => "Aquila clanga")
Bird.create!(:name => "Ring Ouzel", :scientific_name => "Turdus torquatus")
Bird.create!(:name => "Yellow-browed Warbler", :scientific_name => "Phylloscopus inornatus")
Bird.create!(:name => "Blue Rock Thrush", :scientific_name => "Monticola solitarius")
Bird.create!(:name => "Buff-breasted Sandpiper", :scientific_name => "Tryngites subruficollis")
Bird.create!(:name => "Jack Snipe", :scientific_name => "Lymnocryptes minimus")
Bird.create!(:name => "White-rumped Sandpiper", :scientific_name => "Calidris fuscicollis")
Bird.create!(:name => "Ruddy Shelduck", :scientific_name => "Tadorna ferruginea")
Bird.create!(:name => "Cetti's Warbler", :scientific_name => "Cettia cetti")
Bird.create!(:name => "Citrine Wagtail", :scientific_name => "Motacilla citreola")
Bird.create!(:name => "Roseate Tern", :scientific_name => "Sterna dougallii")
Bird.create!(:name => "Black-legged Kittiwake", :scientific_name => "Rissa tridactyla")
Bird.create!(:name => "Pygmy Cormorant", :scientific_name => "Phalacrocorax pygmeus")
Bird.create!(:name => "Booted Eagle", :scientific_name => "Aquila pennata")
Bird.create!(:name => "Lesser White-fronted Goose", :scientific_name => "Anser erythropus")
Bird.create!(:name => "Little Bunting", :scientific_name => "Emberiza pusilla")
Bird.create!(:name => "Eleonora's Falcon", :scientific_name => "Falco eleonorae")
Bird.create!(:name => "European Serin", :scientific_name => "Serinus serinus")
Bird.create!(:name => "Twite", :scientific_name => "Carduelis flavirostris")
Bird.create!(:name => "Yellow-legged Gull", :scientific_name => "Larus michahellis")
Bird.create!(:name => "Gyr Falcon", :scientific_name => "Falco rusticolus")
Bird.create!(:name => "Greenish Warbler", :scientific_name => "Phylloscopus trochiloides")
Bird.create!(:name => "Red-necked Phalarope", :scientific_name => "Phalaropus lobatus")
Bird.create!(:name => "Mealy Redpoll", :scientific_name => "Carduelis flammea")
Bird.create!(:name => "Glaucous Gull", :scientific_name => "Larus hyperboreus")
Bird.create!(:name => "Great Skua", :scientific_name => "Stercorarius skua")
Bird.create!(:name => "Great Bustard", :scientific_name => "Otis tarda")
Bird.create!(:name => "Velvet Scoter", :scientific_name => "Melanitta fusca")
Bird.create!(:name => "Pine Grosbeak", :scientific_name => "Pinicola enucleator")
Bird.create!(:name => "House Crow", :scientific_name => "Corvus splendens")
Bird.create!(:name => "Hume`s Leaf Warbler", :scientific_name => "Phylloscopus humei")
Bird.create!(:name => "Great Northern Loon", :scientific_name => "Gavia immer")
Bird.create!(:name => "Long-tailed Duck", :scientific_name => "Clangula hyemalis")
Bird.create!(:name => "Lapland Longspur", :scientific_name => "Calcarius lapponicus")
Bird.create!(:name => "Northern Gannet", :scientific_name => "Morus bassanus")
Bird.create!(:name => "Eastern Imperial Eagle", :scientific_name => "Aquila heliaca")
Bird.create!(:name => "Little Auk", :scientific_name => "Alle alle")
Bird.create!(:name => "Lesser Spotted Woodpecker", :scientific_name => "Dendrocopos minor")
Bird.create!(:name => "Iceland Gull", :scientific_name => "Larus glaucoides")
Bird.create!(:name => "Parasitic Jaeger", :scientific_name => "Stercorarius parasiticus")
Bird.create!(:name => "Bewick`s Swan", :scientific_name => "Cygnus bewickii")
Bird.create!(:name => "Little Bustard", :scientific_name => "Tetrax tetrax")
Bird.create!(:name => "Little Crake", :scientific_name => "Porzana parva")
Bird.create!(:name => "Baillon`s Crake", :scientific_name => "Porzana pusilla")
Bird.create!(:name => "Long-tailed Jaeger", :scientific_name => "Stercorarius longicaudus")
Bird.create!(:name => "King Eider", :scientific_name => "Somateria spectabilis")
Bird.create!(:name => "Greater Short-toed Lark", :scientific_name => "Calandrella brachydactyla")
Bird.create!(:name => "Houbara Bustard", :scientific_name => "Chlamydotis undulata")
Bird.create!(:name => "Curlew Sandpiper", :scientific_name => "Calidris ferruginea")
Bird.create!(:name => "Common Crossbill", :scientific_name => "Loxia curvirostra")
Bird.create!(:name => "European Shag", :scientific_name => "Phalacrocorax aristotelis")
Bird.create!(:name => "Horned Grebe", :scientific_name => "Podiceps auritus")
Bird.create!(:name => "Common Quail", :scientific_name => "Coturnix coturnix")
Bird.create!(:name => "Bearded Vulture", :scientific_name => "Gypaetus barbatus")
Bird.create!(:name => "Lanner Falcon", :scientific_name => "Falco biarmicus")
Bird.create!(:name => "Middle Spotted Woodpecker", :scientific_name => "Dendrocopos medius")
Bird.create!(:name => "Pomarine Jaeger", :scientific_name => "Stercorarius pomarinus")
Bird.create!(:name => "Red-breasted Merganser", :scientific_name => "Mergus serrator")
Bird.create!(:name => "Eurasian Black Vulture", :scientific_name => "Aegypius monachus")
Bird.create!(:name => "Eurasian Dotterel", :scientific_name => "Charadrius morinellus")
Bird.create!(:name => "Common Nightingale", :scientific_name => "Luscinia megarhynchos")
Bird.create!(:name => "Northern willow warbler", :scientific_name => "Phylloscopus trochilus acredula")
Bird.create!(:name => "Manx Shearwater", :scientific_name => "Puffinus puffinus")
Bird.create!(:name => "Northern Fulmar", :scientific_name => "Fulmarus glacialis")
Bird.create!(:name => "Eurasian Eagle Owl", :scientific_name => "Bubo bubo")
Bird.create!(:name => "Orphean Warbler", :scientific_name => "Sylvia hortensis")
Bird.create!(:name => "Melodious Warbler", :scientific_name => "Hippolais polyglotta")
Bird.create!(:name => "Pallas's Leaf Warbler", :scientific_name => "Phylloscopus proregulus")
Bird.create!(:name => "Atlantic Puffin", :scientific_name => "Fratercula arctica")
Bird.create!(:name => "Black-throated Loon", :scientific_name => "Gavia arctica")
Bird.create!(:name => "Bohemian Waxwing", :scientific_name => "Bombycilla garrulus")
Bird.create!(:name => "Marsh Sandpiper", :scientific_name => "Tringa stagnatilis")
Bird.create!(:name => "Great Snipe", :scientific_name => "Gallinago media")
Bird.create!(:name => "Squacco Heron", :scientific_name => "Ardeola ralloides")
Bird.create!(:name => "Long-eared Owl", :scientific_name => "Asio otus")
Bird.create!(:name => "Caspian Tern", :scientific_name => "Hydroprogne caspia")
Bird.create!(:name => "Red-breasted Goose", :scientific_name => "Branta ruficollis")
Bird.create!(:name => "Red-throated Loon", :scientific_name => "Gavia stellata")
Bird.create!(:name => "Common Rosefinch", :scientific_name => "Carpodacus erythrinus")
Bird.create!(:name => "Red-footed Falcon", :scientific_name => "Falco vespertinus")
Bird.create!(:name => "Ross's Goose", :scientific_name => "Anser rossii")
Bird.create!(:name => "Red Phalarope", :scientific_name => "Phalaropus fulicarius")
Bird.create!(:name => "Pied Wagtail", :scientific_name => "Motacilla yarrellii")
Bird.create!(:name => "Rose-coloured Starling", :scientific_name => "Sturnus roseus")
Bird.create!(:name => "Rough-legged Buzzard", :scientific_name => "Buteo lagopus")
Bird.create!(:name => "Saker Falcon", :scientific_name => "Falco cherrug")
Bird.create!(:name => "European Roller", :scientific_name => "Coracias garrulus")
Bird.create!(:name => "Short-toed Eagle", :scientific_name => "Circaetus gallicus")
Bird.create!(:name => "Peregrine Falcon", :scientific_name => "Falco peregrinus")
Bird.create!(:name => "Merlin", :scientific_name => "Falco columbarius")
Bird.create!(:name => "Snow Goose", :scientific_name => "Anser caerulescens")
Bird.create!(:name => "Snowy Owl", :scientific_name => "Bubo scandiacus")
Bird.create!(:name => "Snow Bunting", :scientific_name => "Plectrophenax nivalis")
Bird.create!(:name => "Common Grasshopper Warbler", :scientific_name => "Locustella naevia")
Bird.create!(:name => "Golden Eagle", :scientific_name => "Aquila chrysaetos")
Bird.create!(:name => "Black-winged Stilt", :scientific_name => "Himantopus himantopus")
Bird.create!(:name => "Steppe Eagle", :scientific_name => "Aquila nipalensis")
Bird.create!(:name => "Pallid Harrier", :scientific_name => "Circus macrourus")
Bird.create!(:name => "European Storm-petrel", :scientific_name => "Hydrobates pelagicus")
Bird.create!(:name => "Horned Lark", :scientific_name => "Eremophila alpestris")
Bird.create!(:name => "Eurasian Treereeper", :scientific_name => "Certhia familiaris")
Bird.create!(:name => "Taiga Bean Goose", :scientific_name => "Anser fabalis")
Bird.create!(:name => "Temminck`s Stint", :scientific_name => "Calidris temminckii")
Bird.create!(:name => "Terek Sandpiper", :scientific_name => "Xenus cinereus")
Bird.create!(:name => "Tundra Bean Goose", :scientific_name => "Anser serrirostris")
Bird.create!(:name => "European Turtle Dove", :scientific_name => "Streptopelia turtur")
Bird.create!(:name => "Leach`s Storm-petrel", :scientific_name => "Oceanodroma leucorhoa")
Bird.create!(:name => "Eurasian Griffon Vulture", :scientific_name => "Gyps fulvus")
Bird.create!(:name => "Paddyfield Warbler", :scientific_name => "Acrocephalus agricola")
Bird.create!(:name => "Osprey", :scientific_name => "Pandion haliaetus")
Bird.create!(:name => "Firecrest", :scientific_name => "Regulus ignicapilla")
Bird.create!(:name => "Water Rail", :scientific_name => "Rallus aquaticus")
Bird.create!(:name => "European Honey Buzzard", :scientific_name => "Pernis apivorus")
Bird.create!(:name => "Eurasian Golden Oriole", :scientific_name => "Oriolus oriolus")
Bird.create!(:name => "Whooper Swan", :scientific_name => "Cygnus cygnus")
Bird.create!(:name => "Two-barred Crossbill", :scientific_name => "Loxia leucoptera")
Bird.create!(:name => "White-tailed Eagle", :scientific_name => "Haliaeetus albicilla")
Bird.create!(:name => "Atlantic Murre", :scientific_name => "Uria aalge")
Bird.create!(:name => "Garganey", :scientific_name => "Anas querquedula")
Bird.create!(:name => "Black Redstart", :scientific_name => "Phoenicurus ochruros")
Bird.create!(:name => "Common Scoter", :scientific_name => "Melanitta nigra")
Bird.create!(:name => "Rock Pipit", :scientific_name => "Anthus petrosus")
Bird.create!(:name => "Lesser Spotted Eagle", :scientific_name => "Aquila pomarina")
Bird.create!(:name => "Cattle Egret", :scientific_name => "Bubulcus ibis")
Bird.create!(:name => "White-winged Black Tern", :scientific_name => "Chlidonias leucopterus")
Bird.create!(:name => "Black Stork", :scientific_name => "Ciconia nigra")
Bird.create!(:name => "Mediterranean Gull", :scientific_name => "Larus melanocephalus")
Bird.create!(:name => "Black Kite", :scientific_name => "Milvus migrans")
Bird.create!(:name => "Yellow Wagtail", :scientific_name => "Motacilla flavissima")
Bird.create!(:name => "Red-necked Grebe", :scientific_name => "Podiceps grisegena")
Bird.create!(:name => "Gull-billed Tern", :scientific_name => "Gelochelidon nilotica")
Bird.create!(:name => "Pectoral Sandpiper", :scientific_name => "Calidris melanotos")
Bird.create!(:name => "Barred Warbler", :scientific_name => "Sylvia nisoria")
Bird.create!(:name => "Red-throated Pipit", :scientific_name => "Anthus cervinus")
Bird.create!(:name => "Grey Wagtail", :scientific_name => "Motacilla cinerea")
Bird.create!(:name => "Richard`s Pipit", :scientific_name => "Anthus richardi")
Bird.create!(:name => "Black Woodpecker", :scientific_name => "Dryocopus martius")
Bird.create!(:name => "Little Ringed Plover", :scientific_name => "Charadrius dubius")
Bird.create!(:name => "Whiskered Tern", :scientific_name => "Chlidonias hybrida")
Bird.create!(:name => "Lesser Redpoll", :scientific_name => "Carduelis cabaret")
Bird.create!(:name => "Pallas' Bunting", :scientific_name => "Emberiza pallasi")
Bird.create!(:name => "Ferruginous Duck", :scientific_name => "Aythya nyroca")
Bird.create!(:name => "Whistling Swan", :scientific_name => "Cygnus columbianus")
Bird.create!(:name => "Black Brant", :scientific_name => "Branta nigricans")
Bird.create!(:name => "Marbled Teal", :scientific_name => "Marmaronetta angustirostris")
Bird.create!(:name => "Canvasback", :scientific_name => "Aythya valisineria")
Bird.create!(:name => "Redhead", :scientific_name => "Aythya americana")
Bird.create!(:name => "Lesser Scaup", :scientific_name => "Aythya affinis")
Bird.create!(:name => "Steller`s Eider", :scientific_name => "Polysticta stelleri")
Bird.create!(:name => "Spectacled Eider", :scientific_name => "Somateria fischeri")
Bird.create!(:name => "Harlequin Duck", :scientific_name => "Histronicus histrionicus")
Bird.create!(:name => "Black Scoter", :scientific_name => "Melanitta americana")
Bird.create!(:name => "Surf Scoter", :scientific_name => "Melanitta perspicillata")
Bird.create!(:name => "Barrow`s Goldeneye", :scientific_name => "Bucephala islandica")
Bird.create!(:name => "Falcated Duck", :scientific_name => "Anas falcata")
Bird.create!(:name => "American Wigeon", :scientific_name => "Anas americana")
Bird.create!(:name => "Blue-winged Teal", :scientific_name => "Anas discors")
Bird.create!(:name => "American Black Duck", :scientific_name => "Anas rubripes")
Bird.create!(:name => "Baikal Teal", :scientific_name => "Anas formosa")
Bird.create!(:name => "Green-Winged Teal", :scientific_name => "Anas carolinensis")
Bird.create!(:name => "Hazel Grouse", :scientific_name => "Bonasa bonasia")
Bird.create!(:name => "Rock Partridge", :scientific_name => "Alectoris graeca")
Bird.create!(:name => "Red-legged Partridge", :scientific_name => "Alectoris rufa")
Bird.create!(:name => "Yellow-billed Loon", :scientific_name => "Gavia adamsii")
Bird.create!(:name => "Cory`s Shearwater", :scientific_name => "Calonectris borealis")
Bird.create!(:name => "Madeiran Storm-Petrel", :scientific_name => "Oceanodroma castro")
Bird.create!(:name => "Great White Pelican", :scientific_name => "Pelecanus onocrotalus")
Bird.create!(:name => "Dalmatian Pelican", :scientific_name => "Pelecanus crispus")
Bird.create!(:name => "American Bittern", :scientific_name => "Botaurus lentiginosus")
Bird.create!(:name => "Glossy Ibis", :scientific_name => "Plegadis falcinellus")
Bird.create!(:name => "Spanish Imperial Eagle", :scientific_name => "Aquila adalberti")
Bird.create!(:name => "Lesser Kestrel", :scientific_name => "Falco naumanni")
Bird.create!(:name => "Houbara Bustard", :scientific_name => "Chlamydotis undulata")
Bird.create!(:name => "Crab-Plover", :scientific_name => "Dromas ardeola")
Bird.create!(:name => "Cream-coloured Courser", :scientific_name => "Cursorius cursor")
Bird.create!(:name => "Collared Pratincole", :scientific_name => "Glareola pratincola")
Bird.create!(:name => "Black-winged Pratincole", :scientific_name => "Glareola nordmanni")
Bird.create!(:name => "Killdeer", :scientific_name => "Charadrius vociferus")
Bird.create!(:name => "Lesser Sand Plover", :scientific_name => "Charadrius mongolus")
Bird.create!(:name => "Greater Sand Plover", :scientific_name => "Charadrius leschenaultii")
Bird.create!(:name => "Caspian Plover", :scientific_name => "Charadrius asiaticus")
Bird.create!(:name => "American Golden Plover", :scientific_name => "Pluvialis dominica")
Bird.create!(:name => "Pacific Golden Plover", :scientific_name => "Pluvialis fulva")
Bird.create!(:name => "Sharp-tailed Sandpiper", :scientific_name => "Calidris acuminata")
Bird.create!(:name => "Broad-billed Sandpiper", :scientific_name => "Limicola falcinellus")
Bird.create!(:name => "Spoon-Billed Sandpiper", :scientific_name => "Eurynorhynchus pygmaeus")
Bird.create!(:name => "Short-Billed Dowitcher", :scientific_name => "Limnodromus griseus")
Bird.create!(:name => "Long-billed Dowitcher", :scientific_name => "Limnodromus scolopaceus")
Bird.create!(:name => "Hudsonian Godwit", :scientific_name => "Limosa haemastica")
Bird.create!(:name => "Little Curlew", :scientific_name => "Numenius minutus")
Bird.create!(:name => "Lesser Yellowlegs", :scientific_name => "Tringa flavipes")
Bird.create!(:name => "Wilson`s Phalarope", :scientific_name => "Phalaropus tricolor")
Bird.create!(:name => "Pallas`s Gull", :scientific_name => "Larus ichthyaetus")
Bird.create!(:name => "Laughing Gull", :scientific_name => "Larus atricilla")
Bird.create!(:name => "Franklin`s Gull", :scientific_name => "Larus pipixcan")
Bird.create!(:name => "Bonaparte`s Gull", :scientific_name => "Larus philadelphia")
Bird.create!(:name => "Ring-billed Gull", :scientific_name => "Larus delawarensis")
Bird.create!(:name => "American Herring Gull", :scientific_name => "Larus smithsonianus")
Bird.create!(:name => "Caspian Gull", :scientific_name => "Larus cachinnans")
Bird.create!(:name => "Ivory Gull", :scientific_name => "Pagophila eburnea")
Bird.create!(:name => "Royal Tern", :scientific_name => "Sterna maxima")
Bird.create!(:name => "Brünnich`s Murre", :scientific_name => "Uria lomvia")
Bird.create!(:name => "Crested Auklet", :scientific_name => "Aethia cristatella")
Bird.create!(:name => "Parakeet Auklet", :scientific_name => "Cyclorrhynchus psittacula")
Bird.create!(:name => "Tufted Puffin", :scientific_name => "Lunda cirrhata")
Bird.create!(:name => "Laughing Dove", :scientific_name => "Streptopelia senegalensis")
Bird.create!(:name => "Great Spotted Cuckoo", :scientific_name => "Clamator glandarius")
Bird.create!(:name => "Great Grey Owl", :scientific_name => "Strix nebulosa")
Bird.create!(:name => "Tengmalm`s Owl", :scientific_name => "Aegolius funereus")
Bird.create!(:name => "Red-Necked Nightjar", :scientific_name => "Caprimulgus ruficollis")
Bird.create!(:name => "Chimney Swift", :scientific_name => "Chaetura pelagica")
Bird.create!(:name => "Green Bea-Eater", :scientific_name => "Merops orientalis")
Bird.create!(:name => "Grey-headed Woodpecker", :scientific_name => "Picus canus")
Bird.create!(:name => "Lesser Short-Toed Lark", :scientific_name => "Calandrella rufescens")
Bird.create!(:name => "Eurasian Crag Martin", :scientific_name => "Hirundo rupestris")
Bird.create!(:name => "Red-rumped Swallow", :scientific_name => "Cecropis daurica")
Bird.create!(:name => "Blyth`s Pipit", :scientific_name => "Anthus godlewskii")
Bird.create!(:name => "Pechora Pipit", :scientific_name => "Anthus gustavi")
Bird.create!(:name => "Grey-headed Wagtail", :scientific_name => "Motacilla thunbergi")
Bird.create!(:name => "Yellow-Headed Wagtail", :scientific_name => "Motacilla lutea")
Bird.create!(:name => "White-throated Dipper", :scientific_name => "Cinclus cinclus")
Bird.create!(:name => "Rufous-Tailed Scrub Robin", :scientific_name => "Cercotrichas galactotes")
Bird.create!(:name => "Thrush Nightingale", :scientific_name => "Luscinia luscinia")
Bird.create!(:name => "White-throated Robin", :scientific_name => "Irania gutturalis")
Bird.create!(:name => "Caspian Stonechat", :scientific_name => "Saxicola maura variegata")
Bird.create!(:name => "Western Black-eared Wheatear", :scientific_name => "Oenanthe hispanica")
Bird.create!(:name => "Rufous-tailed Rock Thrush", :scientific_name => "Monticola saxatilis")
Bird.create!(:name => "Red-throated Thrush/Black-throated", :scientific_name => "Turdus ruficollis")
Bird.create!(:name => "American Robin", :scientific_name => "Turdus migratorius")
Bird.create!(:name => "Zitting Cisticola", :scientific_name => "Cisticola juncidis")
Bird.create!(:name => "Lanceolated Warbler", :scientific_name => "Locustella lanceolata")
Bird.create!(:name => "River Warbler", :scientific_name => "Locustella fluviatilis")
Bird.create!(:name => "Blyth`s Reed Warbler", :scientific_name => "Acrocephalus dumetorum")
Bird.create!(:name => "Caspian Reed Warbler", :scientific_name => "Acrocephalus fuscus")
Bird.create!(:name => "Aquatic Warbler", :scientific_name => "Acrocephalus paludicola")
Bird.create!(:name => "Booted Warbler", :scientific_name => "Acrocephalus caligatus")
Bird.create!(:name => "Marmora's Warbler", :scientific_name => "Sylvia sarda")
Bird.create!(:name => "Dartford Warbler", :scientific_name => "Sylvia undata")
Bird.create!(:name => "Subalpine Warbler", :scientific_name => "Sylvia cantillans")
Bird.create!(:name => "Ménétries's Warbler", :scientific_name => "Sylvia mystacea")
Bird.create!(:name => "Rüppel's Warbler", :scientific_name => "Sylvia rueppelli")
Bird.create!(:name => "Asian Desert Warbler", :scientific_name => "Sylvia nana")
Bird.create!(:name => "Western Orphean Warbler", :scientific_name => "Sylvia hortensis hortensis")
Bird.create!(:name => "Arctic Warbler", :scientific_name => "Phylloscopus borealis")
Bird.create!(:name => "Radde`s Warbler", :scientific_name => "Phylloscopus schwarzi")
Bird.create!(:name => "Western Bonelli`s Warbler", :scientific_name => "Phylloscopus bonelli")
Bird.create!(:name => "Red-breasted Flycatcher", :scientific_name => "Ficedula parva")
Bird.create!(:name => "Eurasian Penduline Tit", :scientific_name => "Remiz pendulinus")
Bird.create!(:name => "Daurian Shrike", :scientific_name => "Lanius isabellinus")
Bird.create!(:name => "Long-Tailed Shrike", :scientific_name => "Lanius schach")
Bird.create!(:name => "Lesser Grey Shrike", :scientific_name => "Lanius minor")
Bird.create!(:name => "Southern Grey Shrike", :scientific_name => "Lanius meridionalis")
Bird.create!(:name => "Masked Shrike", :scientific_name => "Lanius nubicus")
Bird.create!(:name => "Spotted Nutcracker", :scientific_name => "Nucifraga caryocatactes")
Bird.create!(:name => "Daurian Jackdaw", :scientific_name => "Corvus dauuricus")
Bird.create!(:name => "Purple-Backed Starling", :scientific_name => "Sturnus sturninus")
Bird.create!(:name => "Red-Fronted Serin", :scientific_name => "Serinus pusillus")
Bird.create!(:name => "Arctic Redpoll", :scientific_name => "Carduelis hornemanni")
Bird.create!(:name => "Scottish Crossbill", :scientific_name => "Loxia scotica")
Bird.create!(:name => "Parrot Crossbill", :scientific_name => "Loxia pytyopsittacus")
Bird.create!(:name => "Black-faced Bunting", :scientific_name => "Emberiza spodocephala")
Bird.create!(:name => "Pink-footed Goose", :scientific_name => "Anser brachyrhynchus")
Bird.create!(:name => "Black-winged Kite", :scientific_name => "Elanus caeruleus")
Bird.create!(:name => "European Bee-eater", :scientific_name => "Merops apiaster")
Bird.create!(:name => "Sabine`s Gull", :scientific_name => "Larus sabini")
Bird.create!(:name => "Sooty Shearwater", :scientific_name => "Puffinus griseus")
Bird.create!(:name => "Lesser Canada Goose", :scientific_name => "Branta hutchinsii")
Bird.create!(:name => "Ring-necked Duck", :scientific_name => "Aythya collaris")
Bird.create!(:name => "Greater Flamingo", :scientific_name => "Phoenicopterus roseus")
Bird.create!(:name => "Iberian Chiffchaff", :scientific_name => "Phylloscopus ibericus")
Bird.create!(:name => "Ashy-headed Wagtail", :scientific_name => "Motacilla cinereocapilla")
Bird.create!(:name => "Stilt Sandpiper", :scientific_name => "Calidris himantopus")
Bird.create!(:name => "Siberian Stonechat", :scientific_name => "Saxicola maurus")
Bird.create!(:name => "Greater Yellowlegs", :scientific_name => "Tringa melanoleuca")
Bird.create!(:name => "Forster`s Tern", :scientific_name => "Sterna forsteri")
Bird.create!(:name => "Dusky Warbler", :scientific_name => "Phylloscopus fuscatus")
Bird.create!(:name => "Cirl Bunting", :scientific_name => "Emberiza cirlus")
Bird.create!(:name => "Olive-backed Pipit", :scientific_name => "Anthus hodgsoni")
Bird.create!(:name => "Sociable Lapwing", :scientific_name => "Vanellus gregarius")
Bird.create!(:name => "Spotted Sandpiper", :scientific_name => "Actitis macularius")
Bird.create!(:name => "Baird`s Sandpiper", :scientific_name => "Calidris bairdii")
Bird.create!(:name => "Rustic Bunting", :scientific_name => "Emberiza rustica")
Bird.create!(:name => "Yellow-browed Bunting", :scientific_name => "Emberiza chrysophrys")
Bird.create!(:name => "Great Shearwater", :scientific_name => "Puffinus gravis")
Bird.create!(:name => "Bonelli`s Eagle", :scientific_name => "Aquila fasciata")
Bird.create!(:name => "Calandra Lark", :scientific_name => "Melanocorypha calandra")
Bird.create!(:name => "Sardinian Warbler", :scientific_name => "Sylvia melanocephala")
Bird.create!(:name => "Ross's Gull", :scientific_name => "Larus roseus")
Bird.create!(:name => "Yellow-Breasted Bunting", :scientific_name => "Emberiza aureola")
Bird.create!(:name => "Pine Bunting", :scientific_name => "Emberiza leucocephalos")
Bird.create!(:name => "Black Guillemot", :scientific_name => "Cepphus grylle")
Bird.create!(:name => "Pied-billed Grebe", :scientific_name => "Podilymbus podiceps")
Bird.create!(:name => "Soft-plumaged Petrel", :scientific_name => "Pterodroma mollis")
Bird.create!(:name => "Bulwer's Petrel", :scientific_name => "Bulweria bulwerii")
Bird.create!(:name => "White-Faced Storm-Petrel", :scientific_name => "Pelagodroma marina")
Bird.create!(:name => "Pallas’s Fish Eagle", :scientific_name => "Haliaeetus leucoryphus")
Bird.create!(:name => "Sandhill Crane", :scientific_name => "Grus canadensis")
Bird.create!(:name => "Macqueen’s Bustard", :scientific_name => "Chlamydotis macqueenii")
Bird.create!(:name => "White-tailed Lapwing", :scientific_name => "Vanellus leucurus")
Bird.create!(:name => "Great Knot", :scientific_name => "Calidris tenuirostris")
Bird.create!(:name => "Semipalmated Sandpiper", :scientific_name => "Calidris pusilla")
Bird.create!(:name => "Red-necked Stint", :scientific_name => "Calidris ruficollis")
Bird.create!(:name => "Slender-billed Curlew", :scientific_name => "Numenius tenuirostris")
Bird.create!(:name => "Bridled Tern", :scientific_name => "Onychoprion anaethetus")
Bird.create!(:name => "Pallas’s Sandgrouse", :scientific_name => "Syrrhaptes paradoxus")
Bird.create!(:name => "European Scops Owl", :scientific_name => "Otus scops")
Bird.create!(:name => "Northern Hawk Owl", :scientific_name => "Surnia ulula")
Bird.create!(:name => "White-Throated Needletail", :scientific_name => "Hirundapus caudacutus")
Bird.create!(:name => "Belted Kingfisher", :scientific_name => "Ceryle alcyon")
Bird.create!(:name => "Blue-cheeked Bee-eater", :scientific_name => "Merops persicus")
Bird.create!(:name => "Black-headed Wagtail", :scientific_name => "Motacilla feldegg")
Bird.create!(:name => "Northern Mockingbird", :scientific_name => "Mimus polyglottos")
Bird.create!(:name => "Alpine Accentor", :scientific_name => "Prunella collaris")
Bird.create!(:name => "Red-flanked Bluetail", :scientific_name => "Tarsiger cyanurus")
Bird.create!(:name => "Isabelline Wheatear", :scientific_name => "Oenanthe isabellina")
Bird.create!(:name => "Pied Wheatear", :scientific_name => "Oenanthe pleschanka")
Bird.create!(:name => "Eastern Black-eared Wheatear", :scientific_name => "Oenanthe melanoleuca")
Bird.create!(:name => "Desert Wheatear", :scientific_name => "Oenanthe deserti")
Bird.create!(:name => "White`s Thrush", :scientific_name => "Zoothera aurea")
Bird.create!(:name => "Siberian Thrush", :scientific_name => "Zoothera sibirica")
Bird.create!(:name => "Eyebrowed Thrush", :scientific_name => "Turdus obscurus")
Bird.create!(:name => "Dusky Thrush", :scientific_name => "Turdus eunomus")
Bird.create!(:name => "Black-throated Thrush", :scientific_name => "Turdus atrogularis")
Bird.create!(:name => "Pallas`s Grasshopper Warbler", :scientific_name => "Locustella certhiola")
Bird.create!(:name => "Spectacled Warbler", :scientific_name => "Sylvia conspicillata")
Bird.create!(:name => "Two-barred Warbler", :scientific_name => "Phylloscopus plumbeitarsus")
Bird.create!(:name => "Eastern Bonelli’s Warbler", :scientific_name => "Phylloscopus orientalis")
Bird.create!(:name => "Collared Flycatcher", :scientific_name => "Ficedula albicollis")
Bird.create!(:name => "Wallcreeper", :scientific_name => "Tichodroma muraria")
Bird.create!(:name => "Turkestan Shrike", :scientific_name => "Lanius phoenicuroides")
Bird.create!(:name => "Steppe Grey Shrike", :scientific_name => "Lanius pallidirostris")
Bird.create!(:name => "Spanish Sparrow", :scientific_name => "Passer hispaniolensis")
Bird.create!(:name => "Red-eyed Vireo", :scientific_name => "Vireo olivaceus")
Bird.create!(:name => "Myrtle Warbler", :scientific_name => "Dendroica coronata")
Bird.create!(:name => "White-crowned Sparrow", :scientific_name => "Zonotrichia leucophrys")
Bird.create!(:name => "White-throated Sparrow", :scientific_name => "Zonotrichia albicollis")
Bird.create!(:name => "Cretzschmar`s Bunting", :scientific_name => "Emberiza caesia")
Bird.create!(:name => "Chestnut Bunting", :scientific_name => "Emberiza rutila")
Bird.create!(:name => "Red-headed Bunting", :scientific_name => "Emberiza bruniceps")
Bird.create!(:name => "Black-headed Bunting", :scientific_name => "Emberiza melanocephala")
Bird.create!(:name => "Indigo Bunting", :scientific_name => "Passerina cyanea")
Bird.create!(:name => "Balearic Woodchat Shrike", :scientific_name => "Lanius senator badius")
Bird.create!(:name => "Demoiselle Crane", :scientific_name => "Grus virgo")
Bird.create!(:name => "Chough", :scientific_name => "Pyrrhocorax pyrrhocorax")
Bird.create!(:name => "Red-Billed Chough", :scientific_name => "Pyrrhocorax graculus")
Bird.create!(:name => "Elegant Tern", :scientific_name => "Sterna elegans")
Bird.create!(:name => "Chukar", :scientific_name => "Alectoris chukar")
Bird.create!(:name => "Yellow-Billed Cuckoo", :scientific_name => "Coccyzus americanus")
Bird.create!(:name => "American Sandwich Tern", :scientific_name => "Sterna sandvicensis acuflavida")
Bird.create!(:name => "Olive-TreeWarbler", :scientific_name => "Hippolais olivetorum")
Bird.create!(:name => "Eastern Olivaceous Warbler", :scientific_name => "Acrocephalus pallidus")
Bird.create!(:name => "Indian Cormorant", :scientific_name => "Phalacrocorax fuscicollis")
Bird.create!(:name => "Spur-Winged Lapwing", :scientific_name => "Vanellus spinosus")
Bird.create!(:name => "Yelkouan Shearwater", :scientific_name => "Puffinus yelkouan")
Bird.create!(:name => "Trumpeter Finch", :scientific_name => "Bucanetes githagineus")
Bird.create!(:name => "Red Grouse", :scientific_name => "Lagopus scoticus")
Bird.create!(:name => "Rock Ptarmigan", :scientific_name => "Lagopus mutus")
Bird.create!(:name => "Long-Tailed Cormorant", :scientific_name => "Phalacrocorax africanus")
Bird.create!(:name => "Double-crested Cormorant", :scientific_name => "Phalacrocorax auritus")
Bird.create!(:name => "Magnificent Frigatebird", :scientific_name => "Fregata magnificens")
Bird.create!(:name => "Naumann's Thrush", :scientific_name => "Turdus naumanni")
Bird.create!(:name => "Oriental Pratincole", :scientific_name => "Glareola maldivarum")
Bird.create!(:name => "Bufflehead", :scientific_name => "Bucephala albeola")
Bird.create!(:name => "Snowfinch", :scientific_name => "Montifrigilla nivalis")
Bird.create!(:name => "Ural owl", :scientific_name => "Strix uralensis")
Bird.create!(:name => "Spanish Wagtail", :scientific_name => "Motacilla iberiae")
Bird.create!(:name => "Song Sparrow", :scientific_name => "Melospiza melodia")
Bird.create!(:name => "Rock Bunting", :scientific_name => "Emberiza cia")
Bird.create!(:name => "Siberian Rubythroat", :scientific_name => "Luscinia calliope")
Bird.create!(:name => "Pallid Swift", :scientific_name => "Apus pallidus")
Bird.create!(:name => "Eurasian Pygmy Owl", :scientific_name => "Glaucidium passerinum")
Bird.create!(:name => "Madeira Little Shearwater", :scientific_name => "Puffinus baroli")
Bird.create!(:name => "House Finch", :scientific_name => "Carpodacus mexicanus")
Bird.create!(:name => "Green Heron", :scientific_name => "Butorides virescens")
Bird.create!(:name => "Solitary Sandpiper", :scientific_name => "Tringa solitaria")
Bird.create!(:name => "Heuglin's Gull", :scientific_name => "Larus heuglini")
puts "Finished creating birds"
puts "\n"

# Widgets
puts "Started creating widgets"
Widget.create!(:name => "kosmas58", :cogs => 1)
puts "Finished creating widgets"
puts "\n"

# Calendar
puts "Started creating calendar"
Calendar.create!(:name => "iCal Test Calendar", :color => 16711680 )
puts "Finished creating calendar"
puts "\n"

# Events
puts "Started creating events"
Event.create(:calendar_id => 1, :starts_at=> 24.hours.from_now, :ends_at => 25.hours.from_now, :summary => "Normal Event", :description => "It's a test!", :location => "Test town")
Event.create(:calendar_id => 1, :starts_at=> 24.hours.from_now, :ends_at => 49.hours.from_now, :summary => "2 day Event", :description => "It's a test!", :location => "Test town")
puts "Finished creating events"
puts "\n"

# DemoTree
puts "Started creating demo tree"
DemoTree.create(:parent_id => 0, :position => 0, :left => 1,  :right => 14, :title => 'ROOT',       :ntype => 'ROOT')
DemoTree.create(:parent_id => 1, :position => 0, :left => 2,  :right => 11, :title => 'C:',         :ntype => 'drive')
DemoTree.create(:parent_id => 2, :position => 0, :left => 3,  :right => 6,  :title => '_demo',      :ntype => 'folder')
DemoTree.create(:parent_id => 3, :position => 0, :left => 4,  :right => 5,  :title => 'index.html', :ntype => 'default')
DemoTree.create(:parent_id => 2, :position => 1, :left => 7,  :right => 10, :title => '_docs',      :ntype => 'folder')
DemoTree.create(:parent_id => 1, :position => 1, :left => 12, :right => 13, :title => 'D:',         :ntype => 'drive')
DemoTree.create(:parent_id => 5, :position => 0, :left => 8,  :right => 9,  :title => 'zmei.html',  :ntype => 'default')
puts "Finished creating demo tree"
puts "\n"

#NavigationTree
puts "Started creating navigation tree"
puts "Please be patient ..."
node_1 = NavigationTree.create(:parent_id => 0, :position => 0, :left => 1,  :right => 2, :title => 'ROOT').id
parent_id = node_1
node_2 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.name', :type => 'accordion', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_2
node_3 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.interactions.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_3
node_4 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.interactions.draggable.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_4
node_5 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/default')
node_6 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.draggable.events', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/events')
node_7 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.draggable.constrain-movement', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/constrain_movement')
node_8 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.draggable.delay-start', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/delay_start')
node_9 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.draggable.snap-to', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/snap_to')
node_10 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.interactions.draggable.scroll', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/scroll')
node_11 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.interactions.draggable.revert', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/revert')
node_12 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.interactions.draggable.visual-feedback', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/visual_feedback')
node_13 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.interactions.draggable.handle', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/handle')
node_14 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.interactions.draggable.cursor-style', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/cursor_style')
node_15 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.interactions.draggable.sortable', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/sortable')
parent_id = node_3
node_16 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.droppable.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_16
node_17 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/default')
node_18 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.droppable.accepted-elements', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/accepted_elements')
node_19 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.droppable.propagation', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/propagation')
node_20 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.droppable.visual-feedback', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/visual_feedback')
node_21 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.droppable.revert', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/revert')
node_22 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.interactions.droppable.shopping-cart', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/shopping_cart')
node_23 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.interactions.droppable.photo-manager', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/photo_manager')
parent_id = node_3
node_24 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.resizable.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_24
node_25 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/default')
node_26 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.resizable.aspect-ratio', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/aspect_ratio')
node_27 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.resizable.max-min', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/max_min')
node_28 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.resizable.constrain-area', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/constrain_area')
node_29 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.resizable.delay-start', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/delay_start')
node_30 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.interactions.resizable.snap-to-grid', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/snap_to_grid')
node_31 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.interactions.resizable.visual-feedback', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/visual_feedback')
node_32 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.interactions.resizable.synchronous-resize', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/synchronous_resize')
node_33 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.interactions.resizable.animate', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/animate')
node_34 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.interactions.resizable.helper', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/helper')
node_35 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.interactions.resizable.textarea', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/textarea')
parent_id = node_3
node_36 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.selectable.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_36
node_37 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/selectable/default')
node_38 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.selectable.serialize', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/selectable/serialize')
node_39 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.selectable.display-grid', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/selectable/display_grid')
parent_id = node_3
node_40 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.sortable.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_40
node_41 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/default')
node_42 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.sortable.placeholder', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/placeholder')
node_43 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.sortable.connect-lists', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/connect_lists')
node_44 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.sortable.connect-lists-through-tabs', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/connect_lists_through_tabs')
node_45 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.sortable.empty-lists', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/empty_lists')
node_46 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.interactions.sortable.items', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/items')
node_47 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.interactions.sortable.delay-start', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/delay_start')
node_48 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.interactions.sortable.display-grid', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/display_grid')
node_49 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.interactions.sortable.portlets', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/portlets')
parent_id = node_3
parent_id = node_2
node_50 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_50
node_51 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.widgets.accordion.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_51
node_52 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/default')
node_53 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.accordion.fillspace', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/fillspace')
node_54 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.accordion.no-auto-height', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/no_auto_height')
node_55 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.accordion.collapsible', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/collapsible')
node_56 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.accordion.mouseover', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/mouseover')
node_57 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.accordion.hoverintent', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/hoverintent')
node_58 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.accordion.custom-icons', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/custom_icons')
node_59 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.accordion.sortable', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/sortable')
parent_id = node_50
node_60 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.autocomplete.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_60
node_61 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/default')
node_62 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.autocomplete.remote', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/remote')
node_63 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.autocomplete.remote-with-cache', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/remote_with_cache')
node_64 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.autocomplete.remote-jsonp', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/remote_jsonp')
node_65 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.autocomplete.maxheight', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/maxheight')
node_66 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.autocomplete.combobox', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/combobox')
node_67 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.autocomplete.custom-data', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/custom_data')
node_68 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.autocomplete.remote-xml', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/remote_xml')
node_69 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.widgets.autocomplete.categories', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/categories')
node_70 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.widgets.autocomplete.folding', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/folding')
node_71 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.widgets.autocomplete.multiple', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/multiple')
node_72 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.ui.widgets.autocomplete.multiple-remote', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/multiple_remote')
parent_id = node_50
node_73 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.button.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_73
node_74 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/button/default')
node_75 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.button.radio', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/button/radio')
node_76 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.button.checkbox', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/button/checkbox')
node_77 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.button.icon', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/button/icon')
node_78 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.button.toolbar', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/button/toolbar')
node_79 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.button.splitbutton', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/button/splitbutton')
parent_id = node_50
node_80 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.datepicker.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_80
node_81 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/default')
node_82 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.datepicker.date-formats', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/date_formats')
node_83 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.datepicker.min-max', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/min_max')
node_84 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.datepicker.localization', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/localization')
node_85 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.datepicker.alt-field', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/alt_field')
node_86 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.datepicker.inline', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/inline')
node_87 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.datepicker.buttonbar', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/buttonbar')
node_88 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.datepicker.dropdown-month-year', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/dropdown_month_year')
node_89 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.widgets.datepicker.other-months', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/other_months')
node_90 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.widgets.datepicker.show-week', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/show_week')
node_91 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.widgets.datepicker.multiple-calendars', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/multiple_calendars')
node_92 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.ui.widgets.datepicker.icon-trigger', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/icon_trigger')
node_93 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.ui.widgets.datepicker.animation', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/animation')
node_94 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.ui.widgets.datepicker.event-search', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/event_search')
parent_id = node_50
node_95 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.dialog.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_95
node_96 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/default')
node_97 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.dialog.animated', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/animated')
node_98 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.dialog.modal', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/modal')
node_99 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.dialog.modal-message', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/modal_message')
node_100 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.dialog.modal-confirmation', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/modal_confirmation')
node_101 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.dialog.modal-form', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/modal_form')
node_102 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.dialog.greybox', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/greybox')
parent_id = node_50
node_103 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.panel.name', :type => 'folder', :icon => '/images/icons/16x16/draft.png')
parent_id = node_103
node_104 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.widgets.panel.default', :type => 'default', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/default')
node_105 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.panel.simple', :type => 'default', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/simple')
node_106 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.panel.cookie', :type => 'default', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/cookie')
node_107 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.panel.right1', :type => 'default', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/right1')
node_108 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.panel.right2', :type => 'default', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/right2')
node_109 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.panel.left', :type => 'default', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/left')
node_110 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.panel.accordion', :type => 'default', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/accordion')
node_111 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.panel.demo', :type => 'default', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/demo')
parent_id = node_50
node_112 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.progressbar.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_112
node_113 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/progressbar/default')
node_114 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.progressbar.animated', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/progressbar/animated')
node_115 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.progressbar.resize', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/progressbar/resize')
parent_id = node_50
node_116 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.selectmenu.name', :type => 'folder', :icon => '/images/icons/16x16/filament.png')
parent_id = node_116
node_117 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'folder', :icon => '/images/icons/16x16/filament.png')
parent_id = node_117
node_118 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.widgets.selectmenu.default', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/default')
node_119 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.selectmenu.without-id', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/without_id')
node_120 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.selectmenu.maxheight', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/maxheight')
node_121 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.selectmenu.text-formatting', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/text_formatting')
node_122 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.selectmenu.icons', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/icons')
node_123 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.selectmenu.custom-icons', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/custom_icons')
node_124 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.selectmenu.optgroups', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/optgroups')
node_125 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.selectmenu.dropdown', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/dropdown')
node_126 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.widgets.selectmenu.menuwidth', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/menuwidth')
node_127 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.widgets.selectmenu.custom-icons2', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/custom_icons2')
parent_id = node_116
node_128 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.selectmenu.disable-enable', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/disable_enable')
node_129 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.selectmenu.ajax', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/ajax')
node_130 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.selectmenu.background', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/background')
node_131 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.selectmenu.methods', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/methods')
node_132 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.selectmenu.dependency', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/dependency')
node_133 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.selectmenu.positioning', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/positioning')
parent_id = node_50
node_134 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.widgets.slider.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_134
node_135 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/default')
node_136 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.slider.steps', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/steps')
node_137 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.slider.range', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/range')
node_138 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.slider.rangemin', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/rangemin')
node_139 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.slider.hotelrooms', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/hotelrooms')
node_140 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.slider.rangemax', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/rangemax')
node_141 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.slider.slider-vertical', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/slider_vertical')
node_142 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.slider.range-vertical', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/range_vertical')
node_143 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.widgets.slider.multiple-vertical', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/multiple_vertical')
node_144 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.widgets.slider.colorpicker', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/colorpicker')
node_145 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.widgets.slider.side-scroll', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/side_scroll')
node_146 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.ui.widgets.slider.tabs', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/tabs')
parent_id = node_50
node_147 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.widgets.tabs.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_147
node_148 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/default')
node_149 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.tabs.ajax', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/ajax')
node_150 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.tabs.mouseover', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/mouseover')
node_151 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.tabs.collapsible', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/collapsible')
node_152 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.tabs.sortable', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/sortable')
node_153 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.tabs.manipulation', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/manipulation')
node_154 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.tabs.bottom', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/bottom')
node_155 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.tabs.cookie', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/cookie')
parent_id = node_50
parent_id = node_2
node_156 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.effects.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_156
node_157 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.effects.add_class.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/add_class')
node_158 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.effects.remove_class.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/remove_class')
node_159 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.effects.switch_class.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/switch_class')
node_160 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.effects.toggle_class.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/toggle_class')
node_161 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.effects.show.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/show')
node_162 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.effects.hide.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/hide')
node_163 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.effects.toggle.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/toggle')
node_164 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.effects.animate.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/animate')
node_165 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.effects.effect.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_165
node_166 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.effects.effect.showcase', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/effect/default')
node_167 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.effects.effect.easing', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/effect/easing')
parent_id = node_156
parent_id = node_2
node_168 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.utilities.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_168
node_169 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.utilities.position.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_169
node_170 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/utilities/position/default')
node_171 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.utilities.position.cycler', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/utilities/position/cycler')
parent_id = node_168
parent_id = node_2
parent_id = node_1
node_172 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.plugins.name', :type => 'accordion', :icon => '/images/icons/16x16/plugin.png')
parent_id = node_172
node_173 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_173
node_174 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.ui.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_174
node_175 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.ui.tooltips.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_175
node_176 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.default', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/default')
node_177 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.ui.tooltips.demo01', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo01')
node_178 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.tools.ui.tooltips.demo02', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo02')
node_179 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.tools.ui.tooltips.demo03', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo03')
node_180 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.tools.ui.tooltips.demo04', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo04')
node_181 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.tools.ui.tooltips.demo05', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo05')
node_182 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.tools.ui.tooltips.demo06', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo06')
node_183 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.tools.ui.tooltips.demo07', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo07')
parent_id = node_174
node_184 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.ui.overlay.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_184
node_185 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.ui.overlay.demo01', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo01')
node_186 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.ui.overlay.demo02', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo02')
node_187 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.tools.ui.overlay.demo03', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo03')
node_188 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.tools.ui.overlay.demo04', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo04')
node_189 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.tools.ui.overlay.demo05', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo05')
node_190 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.tools.ui.overlay.demo06', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo06')
node_191 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.tools.ui.overlay.demo07', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo07')
node_192 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.tools.ui.overlay.demo08', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo08')
parent_id = node_174
parent_id = node_173
node_193 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.toolbox.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_193
node_194 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.toolbox.expose.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_194
node_195 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.toolbox.expose.demo01', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/expose/demo01')
node_196 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.toolbox.expose.demo02', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/expose/demo02')
node_197 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.tools.toolbox.expose.demo03', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/expose/demo03')
node_198 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.tools.toolbox.expose.demo04', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/expose/demo04')
node_199 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.tools.toolbox.expose.demo05', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/expose/demo05')
parent_id = node_193
parent_id = node_173
parent_id = node_172
node_200 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.history.name', :type => 'folder', :icon => '/images/icons/16x16/history.png')
parent_id = node_200
node_201 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.history.ajax', :type => 'default', :icon => '/images/icons/16x16/history.png', :url => '/history/ajax')
node_202 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.history.ajax2', :type => 'default', :icon => '/images/icons/16x16/history.png', :url => '/history/ajax2')
node_203 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.history.mvc', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/history/mvc')
parent_id = node_172
node_204 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.tree.name', :type => 'folder', :icon => '/images/icons/16x16/tree.png')
parent_id = node_204
node_205 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jst.name', :type => 'folder', :icon => '/images/icons/16x16/tree.png')
parent_id = node_205
node_206 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jst.demo', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/demo')
node_207 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jst.plugins', :type => 'folder', :icon => '/images/icons/16x16/tree.png')
parent_id = node_207
node_208 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jst.core', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/core')
node_209 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jst.html', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/html')
node_210 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jst.json', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/json')
node_211 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jst.xml', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/xml')
node_212 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jst.themes', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/themes')
node_213 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jst.ui', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/ui')
node_214 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jst.crrm', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/crrm')
node_215 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jst.hotkeys', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/hotkeys')
node_216 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jst.lang', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/languages')
node_217 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jst.cookies', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/cookies')
node_218 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jst.sort', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/sort')
node_219 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.jst.dnd', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/dnd')
node_220 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.jst.checkbox', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/checkbox')
node_221 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.jst.radio', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/radio')
node_222 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 14, :title => 'txt.jst.search', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/searching')
node_223 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 15, :title => 'txt.jst.contextmenu', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/contextmenu')
node_224 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 16, :title => 'txt.jst.types', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/types')
node_225 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 17, :title => 'txt.jst.themeroller', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/themeroller')
node_226 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 18, :title => 'txt.jst.unique', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/unique')
parent_id = node_205
parent_id = node_204
node_227 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.dt.name', :type => 'folder', :icon => '/images/icons/16x16/tree.png')
parent_id = node_227
node_228 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.dt.default', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/default')
node_229 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.dt.quick', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/quick')
node_230 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.dt.ul', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/ul')
node_231 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.dt.json', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/json')
node_232 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.dt.api', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/api')
node_233 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.dt.select', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/select')
node_234 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.dt.theming.name', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/theming')
node_235 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.dt.persist', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/persist')
node_236 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.dt.events', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/events')
node_237 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.dt.effects', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/effects')
node_238 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.dt.dnd', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/dnd')
node_239 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.dt.dnd2', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/dnd2')
node_240 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.dt.dnd3', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/dnd3')
node_241 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.dt.contextmenu', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/contextmenu')
node_242 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 14, :title => 'txt.dt.minexpand', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/minexpand')
node_243 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 15, :title => 'txt.dt.lazy_persist', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/lazy_persist')
node_244 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 16, :title => 'txt.dt.iframe', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/iframe')
node_245 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 17, :title => 'txt.dt.benchmark', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/test_bench')
node_246 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 18, :title => 'txt.dt.form', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/form')
node_247 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 19, :title => 'txt.dt.multiline', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/multiline')
parent_id = node_204
parent_id = node_172
node_248 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ribbon.name', :type => 'folder', :icon => '/images/icons/16x16/ribbon.png')
parent_id = node_248
node_249 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ribbon.default', :type => 'default', :icon => '/images/icons/16x16/ribbon.png', :url => '/ribbon/default')
node_250 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ribbon.office', :type => 'default', :icon => '/images/icons/16x16/ribbon.png', :url => '/ribbon/office')
node_251 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ribbon.simple', :type => 'default', :icon => '/images/icons/16x16/ribbon.png', :url => '/ribbon/simple')
parent_id = node_172
node_252 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.name', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_252
node_253 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.default', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_253
node_254 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20loading', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_254
node_255 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20xml_data', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0101;model=invheader;datatype=xml')
node_256 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20json_data', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0102;model=invheader')
node_257 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20once', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0103;model=invheader')
node_258 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.20array', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0104;datatype=local')
parent_id = node_253
node_259 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20manipulating', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_259
node_260 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20data', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0201;model=invheader')
node_261 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20get', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0202;model=invheader')
node_262 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20set', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0203;model=invheader')
parent_id = node_253
node_263 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20advanced', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_263
node_264 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20multi', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0301;model=invheader')
node_265 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20master', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0302;model=invheader')
node_266 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20subgrid', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0303;model=invheader')
node_267 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.20as_subgrid', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=0304;model=invheader')
node_268 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.20resizing', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0305;model=invheader')
node_269 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.20big_sets', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0306;model=item')
parent_id = node_253
node_270 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_270
node_271 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30cmulti', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0401;model=invheader')
node_272 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30json_subgrid', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0402;model=invheader')
node_273 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30after_load', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0403;model=invheader')
node_274 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30resizable', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0404;model=invheader')
node_275 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30hide', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0405;model=invheader')
parent_id = node_253
node_276 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30row', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_276
node_277 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30basic', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0501;model=invheader')
node_278 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30cedit', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0502;model=invheader')
node_279 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30events', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0503;model=invheader')
node_280 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30full', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0504;model=invheader')
node_281 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30types', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0505;model=invheader')
parent_id = node_253
node_282 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.30mapping', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_282
node_283 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30xml_map', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0601;datatype=local')
node_284 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30json_map', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=0602;model=invheader')
node_285 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30optimize', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=0603;model=invheader')
parent_id = node_253
node_286 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.30integrations', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_286
node_287 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30datepicker', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0701;datatype=local')
parent_id = node_253
node_288 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.30live', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_288
node_289 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30searching', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0801;model=invheader')
node_290 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30edit_row', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0802;model=invheader')
node_291 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30add_row', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0803;model=invheader')
node_292 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30delete_row', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0804;model=invheader')
node_293 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30navigator', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0805;model=invheader')
parent_id = node_253
node_294 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.31v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_294
node_295 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.31toolbar', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0901;model=invheader')
node_296 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.31userdata', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0902;model=invheader')
node_297 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.31new_methods', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0903;model=invheader')
node_298 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.31post_data', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0904;model=invheader')
node_299 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.31cparams', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0905;model=invheader')
parent_id = node_253
node_300 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jqgrid.demo.32v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_300
node_301 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.32new_methods', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1001;model=invheader')
node_302 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.32initial', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1002;model=invheader')
node_303 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.32insert', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1003;model=invheader')
node_304 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.32server_errors', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1004;model=invheader')
node_305 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.32hide', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1005;model=invheader')
node_306 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.32cbutton', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1006;model=invheader')
node_307 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.32client', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1007;model=invheader')
parent_id = node_253
node_308 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jqgrid.demo.33v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_308
node_309 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.33dynamic', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1101;model=invheader')
node_310 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.33tree', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1102;model=account')
node_311 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.33cell', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1103;model=invheader')
node_312 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.33visible', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1104;model=invheader')
node_313 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.33html', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1105;model=invheader')
node_314 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.33mtoolbar', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1106;model=invheader')
node_315 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.33mform', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1107;model=invheader')
node_316 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.33function', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1108;model=invheader')
node_317 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.33rdnd', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1109;model=invheader')
parent_id = node_253
node_318 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.jqgrid.demo.34v', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_318
node_319 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.34format', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1201;model=invheader')
node_320 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.34cformat', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1202;model=invheader')
node_321 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.34import', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1203;model=invheader')
node_322 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.34autoscroll', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=1204;model=invheader')
node_323 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.34scroll', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=1205;model=invheader')
node_324 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.34adjacency', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1206;model=account')
parent_id = node_253
node_325 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.jqgrid.demo.35v', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_325
node_326 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.35number', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1301;model=invheader')
node_327 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.35view', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1302;model=item')
node_328 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.35stoolbar', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1303;model=invheader')
node_329 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.35asearch', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1304;model=invheader')
node_330 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.35improvements', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=1305;model=invheader')
node_331 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.35real', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1306;model=account')
node_332 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.35navigation', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=1307;model=invheader')
node_333 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.35summary', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1308;model=invheader')
node_334 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.35sortable', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1309;model=invheader')
parent_id = node_253
node_335 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.jqgrid.demo.36v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_335
node_336 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.36api', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1401;model=invheader')
node_337 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.36rtl', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1402;model=invheader')
node_338 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.36reordering', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1403;model=invheader')
node_339 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.36chooser', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1404;model=invheader')
node_340 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.36validation', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1405;model=invheader')
node_341 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.36cinput', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1406;model=invheader')
node_342 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.36ajax', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1407;model=invheader')
node_343 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.36tscroll', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1408;model=item')
node_344 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.36srows', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1409;model=invheader')
node_345 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jqgrid.demo.36rdnd', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1410;model=invheader')
node_346 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jqgrid.demo.36resizing', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1411;model=invheader')
parent_id = node_253
node_347 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 14, :title => 'txt.jqgrid.demo.37v', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_347
node_348 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.37array', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1501;datatype=local')
node_349 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.37server', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1502;model=item')
node_350 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.37single', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1503;model=item')
node_351 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.37multiple', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1504;model=item')
node_352 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.37scroll', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1505;model=item')
node_353 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.37toolbar', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1506;model=item')
node_354 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.37crud', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=1507;model=invheader')
parent_id = node_253
node_355 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 15, :title => 'txt.jqgrid.demo.38v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_355
node_356 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.38array1', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1601;datatype=local')
node_357 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.38array2', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1602;datatype=local')
node_358 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.38array3', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1603;datatype=local')
node_359 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.38array4', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1604;datatype=local')
node_360 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.38array5', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1605;datatype=local')
node_361 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.38array6', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1606;datatype=local')
node_362 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.38remote1', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1607;model=invheader')
node_363 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.38remote2', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1608;model=invheader')
node_364 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.38remote3', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1609;model=invheader')
node_365 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jqgrid.demo.38remote4', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1610;model=invheader')
node_366 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jqgrid.demo.38xml1', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1611;model=invheader')
node_367 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.jqgrid.demo.38remote5', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1612;model=invheader')
parent_id = node_253
parent_id = node_252
node_368 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.mine.name', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_368
node_459 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30cedit', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_459
node_496 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30cedit', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0502;model=invheader')
node_497 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30cedit', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0502;model=invheader')
parent_id = node_368
node_463 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.mine.contextmenu', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_463
node_464 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.mine.contextmenu1', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/mine?demo=contextmenu1')
node_465 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.mine.contextmenu2', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=9901;model=invheader')
parent_id = node_368
node_474 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.mine.treegrid', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_474
node_475 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.33tree', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=9903;model=account')
node_476 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.34adjacency', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=9904;model=account')
node_477 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.35real', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=9905;model=account')
parent_id = node_368
node_478 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.gridify', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_478
node_479 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.simple.name', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_479
node_480 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.simple.default', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=01')
node_481 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.simple.selection', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=02')
node_482 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.simple.direct', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=03')
node_483 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.simple.multiple', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=04')
node_484 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.simple.master', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=05')
parent_id = node_478
node_485 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.manipulation.name', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_485
node_486 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.manipulation.inline', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=06')
node_487 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.manipulation.modal', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=07')
node_488 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.manipulation.input', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=08')
node_489 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.manipulation.datepicker', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=09')
parent_id = node_478
node_490 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.subgrids.name', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_490
node_491 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.subgrids.default', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/players?example=10')
node_492 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.subgrids.crud', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/players?example=11')
node_493 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.subgrids.selection', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/players?example=12')
parent_id = node_478
node_494 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.improvements.name', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=13')
parent_id = node_368
node_495 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.secret', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/widgets')
parent_id = node_252
node_394 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.2dc', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_394
node_395 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.subgrids.name', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_395
node_396 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.subgrids.default', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/users?example=10')
node_397 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.subgrids.crud', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/users?example=11')
node_398 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.subgrids.selection', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/users?example=12')
parent_id = node_394
parent_id = node_252
parent_id = node_172
node_399 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ical.name', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_399
node_400 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ical.anytime.name', :type => 'folder', :icon => '/images/icons/16x16/alarmclock.png')
parent_id = node_400
node_401 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ical.anytime.default', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/ical/anytime/default')
node_402 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ical.anytime.inline', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/ical/anytime/inline')
node_403 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ical.anytime.separate', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/ical/anytime/separate')
node_404 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ical.anytime.css', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/ical/anytime/css')
node_405 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ical.anytime.ajax', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/ical/anytime/ajax')
node_406 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ical.anytime.convert', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/ical/anytime/convert')
node_407 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ical.anytime.extend', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/ical/anytime/extend')
parent_id = node_399
node_408 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ical.calendar.listing', :type => 'default', :icon => '/images/icons/16x16/calendar.png', :url => '/ical/calendars')
parent_id = node_172
node_409 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.replacetext.name', :type => 'folder', :icon => '/images/icons/16x16/plugin.png')
parent_id = node_409
node_410 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.replacetext.default', :type => 'default', :icon => '/images/icons/16x16/plugin.png', :url => '/replace_text/default')
parent_id = node_172
node_411 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.sparklines.name', :type => 'folder', :icon => '/images/icons/16x16/sparklines.png')
parent_id = node_411
node_412 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.sparklines.examples', :type => 'default', :icon => '/images/icons/16x16/sparklines.png', :url => '/sparklines/examples')
node_413 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.sparklines.default', :type => 'default', :icon => '/images/icons/16x16/sparklines.png', :url => '/sparklines/default')
parent_id = node_172
parent_id = node_1
node_414 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.name', :type => 'accordion', :icon => '/images/icons/16x16/jqmobile.png')
parent_id = node_414
node_415 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.black', :type => 'folder', :icon => '/images/icons/16x16/blackberry.png')
parent_id = node_415
node_416 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.port', :type => 'folder', :icon => '/images/icons/16x16/portrait.png')
parent_id = node_416
node_417 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_portrait/jqm')
node_418 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_portrait/jqm2')
node_419 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_portrait/jqm_original')
parent_id = node_415
node_420 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.land', :type => 'folder', :icon => '/images/icons/16x16/landscape.png')
parent_id = node_420
node_421 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_landscape/jqm')
node_422 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_landscape/jqm2')
node_423 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_landscape/jqm_original')
parent_id = node_415
parent_id = node_414
node_424 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.ipad', :type => 'folder', :icon => '/images/icons/16x16/ipad.png')
parent_id = node_424
node_425 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.port', :type => 'folder', :icon => '/images/icons/16x16/portrait.png')
parent_id = node_425
node_426 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_portrait/jqm')
node_427 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_portrait/jqm2')
node_428 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_portrait/jqm_original')
node_429 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/ipad_portrait/jqt')
node_430 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/ipad_portrait/jqt_original')
parent_id = node_424
node_431 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.land', :type => 'folder', :icon => '/images/icons/16x16/landscape.png')
parent_id = node_431
node_432 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_landscape/jqm')
node_433 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_landscape/jqm2')
node_434 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_landscape/jqm_original')
node_435 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/ipad_landscape/jqt')
node_436 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/ipad_landscape/jqt_original')
parent_id = node_424
parent_id = node_414
node_437 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.iphone', :type => 'folder', :icon => '/images/icons/16x16/iphone.png')
parent_id = node_437
node_438 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.port', :type => 'folder', :icon => '/images/icons/16x16/portrait.png')
parent_id = node_438
node_439 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_portrait/jqm')
node_440 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_portrait/jqm2')
node_441 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_portrait/jqm_original')
node_442 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/iphone_portrait/jqt')
node_443 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/iphone_portrait/jqt_original')
parent_id = node_437
node_444 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.land', :type => 'folder', :icon => '/images/icons/16x16/landscape.png')
parent_id = node_444
node_445 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_landscape/jqm')
node_446 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_landscape/jqm2')
node_447 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_landscape/jqm_original')
node_448 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/iphone_landscape/jqt')
node_449 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/iphone_landscape/jqt_original')
parent_id = node_437
parent_id = node_414
node_450 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.palm', :type => 'folder', :icon => '/images/icons/16x16/palm.png')
parent_id = node_450
node_451 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.port', :type => 'folder', :icon => '/images/icons/16x16/portrait.png')
parent_id = node_451
node_452 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_portrait/jqm')
node_453 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_portrait/jqm2')
node_454 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_portrait/jqm_original')
parent_id = node_450
node_455 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.land', :type => 'folder', :icon => '/images/icons/16x16/landscape.png')
parent_id = node_455
node_456 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_landscape/jqm')
node_457 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_landscape/jqm2')
node_458 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_landscape/jqm_original')
parent_id = node_450
parent_id = node_414
parent_id = node_1
puts "Finished creating navigation tree"


#NavigationTree
puts "Started creating navigation tree"
puts "Please be patient ..."
node_1 = NavigationTree.create(:parent_id => 0, :position => 0, :left => 1,  :right => 2, :title => 'ROOT').id
parent_id = node_1
node_2 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.name', :type => 'accordion', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_2
node_3 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.interactions.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_3
node_4 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.interactions.draggable.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_4
node_5 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/default')
node_6 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.draggable.events', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/events')
node_7 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.draggable.constrain-movement', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/constrain_movement')
node_8 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.draggable.delay-start', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/delay_start')
node_9 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.draggable.snap-to', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/snap_to')
node_10 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.interactions.draggable.scroll', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/scroll')
node_11 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.interactions.draggable.revert', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/revert')
node_12 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.interactions.draggable.visual-feedback', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/visual_feedback')
node_13 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.interactions.draggable.handle', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/handle')
node_14 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.interactions.draggable.cursor-style', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/cursor_style')
node_15 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.interactions.draggable.sortable', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/sortable')
parent_id = node_3
node_16 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.droppable.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_16
node_17 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/default')
node_18 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.droppable.accepted-elements', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/accepted_elements')
node_19 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.droppable.propagation', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/propagation')
node_20 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.droppable.visual-feedback', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/visual_feedback')
node_21 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.droppable.revert', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/revert')
node_22 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.interactions.droppable.shopping-cart', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/shopping_cart')
node_23 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.interactions.droppable.photo-manager', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/photo_manager')
parent_id = node_3
node_24 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.resizable.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_24
node_25 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/default')
node_26 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.resizable.aspect-ratio', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/aspect_ratio')
node_27 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.resizable.max-min', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/max_min')
node_28 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.resizable.constrain-area', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/constrain_area')
node_29 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.resizable.delay-start', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/delay_start')
node_30 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.interactions.resizable.snap-to-grid', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/snap_to_grid')
node_31 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.interactions.resizable.visual-feedback', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/visual_feedback')
node_32 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.interactions.resizable.synchronous-resize', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/synchronous_resize')
node_33 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.interactions.resizable.animate', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/animate')
node_34 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.interactions.resizable.helper', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/helper')
node_35 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.interactions.resizable.textarea', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/textarea')
parent_id = node_3
node_36 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.selectable.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_36
node_37 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/selectable/default')
node_38 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.selectable.serialize', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/selectable/serialize')
node_39 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.selectable.display-grid', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/selectable/display_grid')
parent_id = node_3
node_40 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.sortable.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_40
node_41 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/default')
node_42 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.sortable.placeholder', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/placeholder')
node_43 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.sortable.connect-lists', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/connect_lists')
node_44 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.sortable.connect-lists-through-tabs', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/connect_lists_through_tabs')
node_45 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.sortable.empty-lists', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/empty_lists')
node_46 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.interactions.sortable.items', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/items')
node_47 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.interactions.sortable.delay-start', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/delay_start')
node_48 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.interactions.sortable.display-grid', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/display_grid')
node_49 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.interactions.sortable.portlets', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/portlets')
parent_id = node_3
parent_id = node_2
node_50 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_50
node_51 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.widgets.accordion.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_51
node_52 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/default')
node_53 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.accordion.fillspace', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/fillspace')
node_54 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.accordion.no-auto-height', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/no_auto_height')
node_55 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.accordion.collapsible', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/collapsible')
node_56 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.accordion.mouseover', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/mouseover')
node_57 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.accordion.hoverintent', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/hoverintent')
node_58 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.accordion.custom-icons', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/custom_icons')
node_59 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.accordion.sortable', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/sortable')
parent_id = node_50
node_60 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.autocomplete.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_60
node_61 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/default')
node_62 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.autocomplete.remote', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/remote')
node_63 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.autocomplete.remote-with-cache', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/remote_with_cache')
node_64 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.autocomplete.remote-jsonp', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/remote_jsonp')
node_65 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.autocomplete.maxheight', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/maxheight')
node_66 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.autocomplete.combobox', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/combobox')
node_67 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.autocomplete.custom-data', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/custom_data')
node_68 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.autocomplete.remote-xml', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/remote_xml')
node_69 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.widgets.autocomplete.categories', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/categories')
node_70 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.widgets.autocomplete.folding', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/folding')
node_71 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.widgets.autocomplete.multiple', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/multiple')
node_72 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.ui.widgets.autocomplete.multiple-remote', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/multiple_remote')
parent_id = node_50
node_73 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.button.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_73
node_74 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/button/default')
node_75 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.button.radio', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/button/radio')
node_76 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.button.checkbox', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/button/checkbox')
node_77 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.button.icon', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/button/icon')
node_78 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.button.toolbar', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/button/toolbar')
node_79 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.button.splitbutton', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/button/splitbutton')
parent_id = node_50
node_80 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.datepicker.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_80
node_81 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/default')
node_82 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.datepicker.date-formats', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/date_formats')
node_83 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.datepicker.min-max', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/min_max')
node_84 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.datepicker.localization', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/localization')
node_85 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.datepicker.alt-field', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/alt_field')
node_86 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.datepicker.inline', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/inline')
node_87 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.datepicker.buttonbar', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/buttonbar')
node_88 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.datepicker.dropdown-month-year', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/dropdown_month_year')
node_89 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.widgets.datepicker.other-months', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/other_months')
node_90 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.widgets.datepicker.show-week', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/show_week')
node_91 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.widgets.datepicker.multiple-calendars', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/multiple_calendars')
node_92 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.ui.widgets.datepicker.icon-trigger', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/icon_trigger')
node_93 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.ui.widgets.datepicker.animation', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/animation')
node_94 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.ui.widgets.datepicker.event-search', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/event_search')
parent_id = node_50
node_95 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.dialog.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_95
node_96 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/default')
node_97 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.dialog.animated', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/animated')
node_98 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.dialog.modal', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/modal')
node_99 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.dialog.modal-message', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/modal_message')
node_100 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.dialog.modal-confirmation', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/modal_confirmation')
node_101 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.dialog.modal-form', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/modal_form')
node_102 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.dialog.greybox', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/greybox')
parent_id = node_50
node_103 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.panel.name', :type => 'folder', :icon => '/images/icons/16x16/draft.png')
parent_id = node_103
node_104 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.widgets.panel.default', :type => 'default', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/default')
node_105 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.panel.simple', :type => 'default', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/simple')
node_106 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.panel.cookie', :type => 'default', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/cookie')
node_107 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.panel.right1', :type => 'default', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/right1')
node_108 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.panel.right2', :type => 'default', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/right2')
node_109 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.panel.left', :type => 'default', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/left')
node_110 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.panel.accordion', :type => 'default', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/accordion')
node_111 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.panel.demo', :type => 'default', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/demo')
parent_id = node_50
node_112 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.progressbar.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_112
node_113 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/progressbar/default')
node_114 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.progressbar.animated', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/progressbar/animated')
node_115 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.progressbar.resize', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/progressbar/resize')
parent_id = node_50
node_116 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.selectmenu.name', :type => 'folder', :icon => '/images/icons/16x16/filament.png')
parent_id = node_116
node_117 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'folder', :icon => '/images/icons/16x16/filament.png')
parent_id = node_117
node_118 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.widgets.selectmenu.default', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/default')
node_119 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.selectmenu.without-id', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/without_id')
node_120 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.selectmenu.maxheight', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/maxheight')
node_121 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.selectmenu.text-formatting', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/text_formatting')
node_122 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.selectmenu.icons', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/icons')
node_123 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.selectmenu.custom-icons', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/custom_icons')
node_124 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.selectmenu.optgroups', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/optgroups')
node_125 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.selectmenu.dropdown', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/dropdown')
node_126 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.widgets.selectmenu.menuwidth', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/menuwidth')
node_127 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.widgets.selectmenu.custom-icons2', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/custom_icons2')
parent_id = node_116
node_128 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.selectmenu.disable-enable', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/disable_enable')
node_129 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.selectmenu.ajax', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/ajax')
node_130 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.selectmenu.background', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/background')
node_131 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.selectmenu.methods', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/methods')
node_132 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.selectmenu.dependency', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/dependency')
node_133 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.selectmenu.positioning', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/positioning')
parent_id = node_50
node_134 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.widgets.slider.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_134
node_135 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/default')
node_136 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.slider.steps', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/steps')
node_137 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.slider.range', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/range')
node_138 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.slider.rangemin', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/rangemin')
node_139 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.slider.hotelrooms', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/hotelrooms')
node_140 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.slider.rangemax', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/rangemax')
node_141 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.slider.slider-vertical', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/slider_vertical')
node_142 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.slider.range-vertical', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/range_vertical')
node_143 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.widgets.slider.multiple-vertical', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/multiple_vertical')
node_144 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.widgets.slider.colorpicker', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/colorpicker')
node_145 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.widgets.slider.side-scroll', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/side_scroll')
node_146 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.ui.widgets.slider.tabs', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/tabs')
parent_id = node_50
node_147 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.widgets.tabs.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_147
node_148 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/default')
node_149 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.tabs.ajax', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/ajax')
node_150 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.tabs.mouseover', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/mouseover')
node_151 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.tabs.collapsible', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/collapsible')
node_152 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.tabs.sortable', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/sortable')
node_153 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.tabs.manipulation', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/manipulation')
node_154 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.tabs.bottom', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/bottom')
node_155 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.tabs.cookie', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/cookie')
parent_id = node_50
parent_id = node_2
node_156 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.effects.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_156
node_157 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.effects.add_class.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/add_class')
node_158 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.effects.remove_class.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/remove_class')
node_159 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.effects.switch_class.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/switch_class')
node_160 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.effects.toggle_class.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/toggle_class')
node_161 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.effects.show.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/show')
node_162 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.effects.hide.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/hide')
node_163 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.effects.toggle.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/toggle')
node_164 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.effects.animate.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/animate')
node_165 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.effects.effect.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_165
node_166 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.effects.effect.showcase', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/effect/default')
node_167 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.effects.effect.easing', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/effect/easing')
parent_id = node_156
parent_id = node_2
node_168 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.utilities.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_168
node_169 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.utilities.position.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_169
node_170 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/utilities/position/default')
node_171 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.utilities.position.cycler', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/utilities/position/cycler')
parent_id = node_168
parent_id = node_2
parent_id = node_1
node_172 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.plugins.name', :type => 'accordion', :icon => '/images/icons/16x16/plugin.png')
parent_id = node_172
node_173 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_173
node_174 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.ui.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_174
node_175 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.ui.tooltips.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_175
node_176 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.default', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/default')
node_177 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.ui.tooltips.demo01', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo01')
node_178 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.tools.ui.tooltips.demo02', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo02')
node_179 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.tools.ui.tooltips.demo03', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo03')
node_180 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.tools.ui.tooltips.demo04', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo04')
node_181 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.tools.ui.tooltips.demo05', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo05')
node_182 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.tools.ui.tooltips.demo06', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo06')
node_183 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.tools.ui.tooltips.demo07', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo07')
parent_id = node_174
node_184 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.ui.overlay.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_184
node_185 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.ui.overlay.demo01', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo01')
node_186 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.ui.overlay.demo02', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo02')
node_187 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.tools.ui.overlay.demo03', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo03')
node_188 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.tools.ui.overlay.demo04', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo04')
node_189 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.tools.ui.overlay.demo05', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo05')
node_190 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.tools.ui.overlay.demo06', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo06')
node_191 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.tools.ui.overlay.demo07', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo07')
node_192 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.tools.ui.overlay.demo08', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo08')
parent_id = node_174
parent_id = node_173
node_193 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.toolbox.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_193
node_194 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.toolbox.expose.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_194
node_195 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.toolbox.expose.demo01', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/expose/demo01')
node_196 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.toolbox.expose.demo02', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/expose/demo02')
node_197 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.tools.toolbox.expose.demo03', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/expose/demo03')
node_198 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.tools.toolbox.expose.demo04', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/expose/demo04')
node_199 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.tools.toolbox.expose.demo05', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/expose/demo05')
parent_id = node_193
parent_id = node_173
parent_id = node_172
node_200 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.history.name', :type => 'folder', :icon => '/images/icons/16x16/history.png')
parent_id = node_200
node_201 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.history.ajax', :type => 'default', :icon => '/images/icons/16x16/history.png', :url => '/history/ajax')
node_202 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.history.ajax2', :type => 'default', :icon => '/images/icons/16x16/history.png', :url => '/history/ajax2')
node_203 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.history.mvc', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/history/mvc')
parent_id = node_172
node_204 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.tree.name', :type => 'folder', :icon => '/images/icons/16x16/tree.png')
parent_id = node_204
node_205 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jst.name', :type => 'folder', :icon => '/images/icons/16x16/tree.png')
parent_id = node_205
node_206 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jst.demo', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/demo')
node_207 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jst.plugins', :type => 'folder', :icon => '/images/icons/16x16/tree.png')
parent_id = node_207
node_208 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jst.core', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/core')
node_209 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jst.html', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/html')
node_210 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jst.json', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/json')
node_211 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jst.xml', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/xml')
node_212 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jst.themes', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/themes')
node_213 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jst.ui', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/ui')
node_214 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jst.crrm', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/crrm')
node_215 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jst.hotkeys', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/hotkeys')
node_216 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jst.lang', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/languages')
node_217 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jst.cookies', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/cookies')
node_218 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jst.sort', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/sort')
node_219 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.jst.dnd', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/dnd')
node_220 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.jst.checkbox', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/checkbox')
node_221 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.jst.radio', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/radio')
node_222 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 14, :title => 'txt.jst.search', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/searching')
node_223 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 15, :title => 'txt.jst.contextmenu', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/contextmenu')
node_224 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 16, :title => 'txt.jst.types', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/types')
node_225 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 17, :title => 'txt.jst.themeroller', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/themeroller')
node_226 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 18, :title => 'txt.jst.unique', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/unique')
parent_id = node_205
parent_id = node_204
node_227 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.dt.name', :type => 'folder', :icon => '/images/icons/16x16/tree.png')
parent_id = node_227
node_228 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.dt.default', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/default')
node_229 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.dt.quick', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/quick')
node_230 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.dt.ul', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/ul')
node_231 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.dt.json', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/json')
node_232 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.dt.api', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/api')
node_233 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.dt.select', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/select')
node_234 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.dt.theming.name', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/theming')
node_235 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.dt.persist', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/persist')
node_236 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.dt.events', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/events')
node_237 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.dt.effects', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/effects')
node_238 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.dt.dnd', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/dnd')
node_239 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.dt.dnd2', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/dnd2')
node_240 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.dt.dnd3', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/dnd3')
node_241 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.dt.contextmenu', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/contextmenu')
node_242 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 14, :title => 'txt.dt.minexpand', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/minexpand')
node_243 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 15, :title => 'txt.dt.lazy_persist', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/lazy_persist')
node_244 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 16, :title => 'txt.dt.iframe', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/iframe')
node_245 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 17, :title => 'txt.dt.benchmark', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/test_bench')
node_246 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 18, :title => 'txt.dt.form', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/form')
node_247 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 19, :title => 'txt.dt.multiline', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/multiline')
parent_id = node_204
parent_id = node_172
node_248 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ribbon.name', :type => 'folder', :icon => '/images/icons/16x16/ribbon.png')
parent_id = node_248
node_249 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ribbon.default', :type => 'default', :icon => '/images/icons/16x16/ribbon.png', :url => '/ribbon/default')
node_250 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ribbon.office', :type => 'default', :icon => '/images/icons/16x16/ribbon.png', :url => '/ribbon/office')
node_251 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ribbon.simple', :type => 'default', :icon => '/images/icons/16x16/ribbon.png', :url => '/ribbon/simple')
parent_id = node_172
node_252 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.name', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_252
node_253 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.default', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_253
node_254 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20loading', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_254
node_255 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20xml_data', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0101;model=invheader;datatype=xml')
node_256 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20json_data', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0102;model=invheader')
node_257 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20once', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0103;model=invheader')
node_258 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.20array', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0104;datatype=local')
parent_id = node_253
node_259 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20manipulating', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_259
node_260 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20data', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0201;model=invheader')
node_261 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20get', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0202;model=invheader')
node_262 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20set', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0203;model=invheader')
parent_id = node_253
node_263 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20advanced', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_263
node_264 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20multi', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0301;model=invheader')
node_265 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20master', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0302;model=invheader')
node_266 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20subgrid', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0303;model=invheader')
node_267 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.20as_subgrid', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=0304;model=invheader')
node_268 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.20resizing', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0305;model=invheader')
node_269 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.20big_sets', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0306;model=item')
parent_id = node_253
node_270 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_270
node_271 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30cmulti', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0401;model=invheader')
node_272 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30json_subgrid', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0402;model=invheader')
node_273 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30after_load', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0403;model=invheader')
node_274 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30resizable', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0404;model=invheader')
node_275 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30hide', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0405;model=invheader')
parent_id = node_253
node_276 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30row', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_276
node_277 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30basic', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0501;model=invheader')
node_278 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30cedit', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0502;model=invheader')
node_279 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30events', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0503;model=invheader')
node_280 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30full', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0504;model=invheader')
node_281 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30types', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0505;model=invheader')
parent_id = node_253
node_282 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.30mapping', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_282
node_283 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30xml_map', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0601;datatype=local')
node_284 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30json_map', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=0602;model=invheader')
node_285 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30optimize', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=0603;model=invheader')
parent_id = node_253
node_286 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.30integrations', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_286
node_287 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30datepicker', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0701;datatype=local')
parent_id = node_253
node_288 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.30live', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_288
node_289 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30searching', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0801;model=invheader')
node_290 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30edit_row', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0802;model=invheader')
node_291 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30add_row', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0803;model=invheader')
node_292 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30delete_row', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0804;model=invheader')
node_293 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30navigator', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0805;model=invheader')
parent_id = node_253
node_294 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.31v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_294
node_295 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.31toolbar', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0901;model=invheader')
node_296 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.31userdata', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0902;model=invheader')
node_297 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.31new_methods', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0903;model=invheader')
node_298 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.31post_data', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0904;model=invheader')
node_299 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.31cparams', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0905;model=invheader')
parent_id = node_253
node_300 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jqgrid.demo.32v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_300
node_301 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.32new_methods', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1001;model=invheader')
node_302 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.32initial', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1002;model=invheader')
node_303 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.32insert', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1003;model=invheader')
node_304 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.32server_errors', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1004;model=invheader')
node_305 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.32hide', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1005;model=invheader')
node_306 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.32cbutton', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1006;model=invheader')
node_307 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.32client', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1007;model=invheader')
parent_id = node_253
node_308 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jqgrid.demo.33v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_308
node_309 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.33dynamic', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1101;model=invheader')
node_310 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.33tree', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1102;model=account')
node_311 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.33cell', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1103;model=invheader')
node_312 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.33visible', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1104;model=invheader')
node_313 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.33html', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1105;model=invheader')
node_314 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.33mtoolbar', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1106;model=invheader')
node_315 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.33mform', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1107;model=invheader')
node_316 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.33function', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1108;model=invheader')
node_317 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.33rdnd', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1109;model=invheader')
parent_id = node_253
node_318 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.jqgrid.demo.34v', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_318
node_319 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.34format', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1201;model=invheader')
node_320 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.34cformat', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1202;model=invheader')
node_321 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.34import', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1203;model=invheader')
node_322 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.34autoscroll', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=1204;model=invheader')
node_323 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.34scroll', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=1205;model=invheader')
node_324 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.34adjacency', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1206;model=account')
parent_id = node_253
node_325 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.jqgrid.demo.35v', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_325
node_326 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.35number', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1301;model=invheader')
node_327 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.35view', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1302;model=item')
node_328 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.35stoolbar', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1303;model=invheader')
node_329 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.35asearch', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1304;model=invheader')
node_330 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.35improvements', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=1305;model=invheader')
node_331 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.35real', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1306;model=account')
node_332 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.35navigation', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=1307;model=invheader')
node_333 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.35summary', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1308;model=invheader')
node_334 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.35sortable', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1309;model=invheader')
parent_id = node_253
node_335 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.jqgrid.demo.36v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_335
node_336 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.36api', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1401;model=invheader')
node_337 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.36rtl', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1402;model=invheader')
node_338 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.36reordering', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1403;model=invheader')
node_339 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.36chooser', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1404;model=invheader')
node_340 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.36validation', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1405;model=invheader')
node_341 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.36cinput', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1406;model=invheader')
node_342 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.36ajax', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1407;model=invheader')
node_343 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.36tscroll', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1408;model=item')
node_344 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.36srows', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1409;model=invheader')
node_345 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jqgrid.demo.36rdnd', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1410;model=invheader')
node_346 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jqgrid.demo.36resizing', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1411;model=invheader')
parent_id = node_253
node_347 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 14, :title => 'txt.jqgrid.demo.37v', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_347
node_348 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.37array', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1501;datatype=local')
node_349 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.37server', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1502;model=item')
node_350 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.37single', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1503;model=item')
node_351 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.37multiple', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1504;model=item')
node_352 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.37scroll', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1505;model=item')
node_353 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.37toolbar', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1506;model=item')
node_354 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.37crud', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=1507;model=invheader')
parent_id = node_253
node_355 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 15, :title => 'txt.jqgrid.demo.38v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_355
node_356 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.38array1', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1601;datatype=local')
node_357 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.38array2', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1602;datatype=local')
node_358 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.38array3', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1603;datatype=local')
node_359 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.38array4', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1604;datatype=local')
node_360 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.38array5', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1605;datatype=local')
node_361 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.38array6', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1606;datatype=local')
node_362 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.38remote1', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1607;model=invheader')
node_363 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.38remote2', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1608;model=invheader')
node_364 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.38remote3', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1609;model=invheader')
node_365 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jqgrid.demo.38remote4', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1610;model=invheader')
node_366 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jqgrid.demo.38xml1', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1611;model=invheader')
node_367 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.jqgrid.demo.38remote5', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1612;model=invheader')
parent_id = node_253
parent_id = node_252
node_368 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.mine.name', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_368
node_459 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30cedit', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_459
node_496 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30cedit', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0502;model=invheader')
node_497 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30cedit', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0502;model=invheader')
parent_id = node_368
node_463 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.mine.contextmenu', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_463
node_464 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.mine.contextmenu1', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/mine?demo=contextmenu1')
node_465 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.mine.contextmenu2', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=9901;model=invheader')
parent_id = node_368
node_474 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.mine.treegrid', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_474
node_475 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.33tree', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=9903;model=account')
node_476 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.34adjacency', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=9904;model=account')
node_477 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.35real', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=9905;model=account')
parent_id = node_368
node_478 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.gridify', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_478
node_479 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.simple.name', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_479
node_480 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.simple.default', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=01')
node_481 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.simple.selection', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=02')
node_482 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.simple.direct', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=03')
node_483 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.simple.multiple', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=04')
node_484 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.simple.master', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=05')
parent_id = node_478
node_485 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.manipulation.name', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_485
node_486 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.manipulation.inline', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=06')
node_487 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.manipulation.modal', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=07')
node_488 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.manipulation.input', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=08')
node_489 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.manipulation.datepicker', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=09')
parent_id = node_478
node_490 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.subgrids.name', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_490
node_491 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.subgrids.default', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/players?example=10')
node_492 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.subgrids.crud', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/players?example=11')
node_493 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.subgrids.selection', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/players?example=12')
parent_id = node_478
node_494 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.improvements.name', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=13')
parent_id = node_368
node_495 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.secret', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/widgets')
parent_id = node_252
node_394 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.2dc', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_394
node_395 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.subgrids.name', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_395
node_396 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.subgrids.default', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/users?example=10')
node_397 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.subgrids.crud', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/users?example=11')
node_398 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.subgrids.selection', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/users?example=12')
parent_id = node_394
parent_id = node_252
parent_id = node_172
node_399 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ical.name', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_399
node_400 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ical.anytime.name', :type => 'folder', :icon => '/images/icons/16x16/alarmclock.png')
parent_id = node_400
node_401 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ical.anytime.default', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/ical/anytime/default')
node_402 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ical.anytime.inline', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/ical/anytime/inline')
node_403 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ical.anytime.separate', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/ical/anytime/separate')
node_404 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ical.anytime.css', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/ical/anytime/css')
node_405 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ical.anytime.ajax', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/ical/anytime/ajax')
node_406 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ical.anytime.convert', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/ical/anytime/convert')
node_407 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ical.anytime.extend', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/ical/anytime/extend')
parent_id = node_399
node_408 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ical.calendar.listing', :type => 'default', :icon => '/images/icons/16x16/calendar.png', :url => '/ical/calendars')
parent_id = node_172
node_409 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.replacetext.name', :type => 'folder', :icon => '/images/icons/16x16/plugin.png')
parent_id = node_409
node_410 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.replacetext.default', :type => 'default', :icon => '/images/icons/16x16/plugin.png', :url => '/replace_text/default')
parent_id = node_172
node_411 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.sparklines.name', :type => 'folder', :icon => '/images/icons/16x16/sparklines.png')
parent_id = node_411
node_412 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.sparklines.examples', :type => 'default', :icon => '/images/icons/16x16/sparklines.png', :url => '/sparklines/examples')
node_413 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.sparklines.default', :type => 'default', :icon => '/images/icons/16x16/sparklines.png', :url => '/sparklines/default')
parent_id = node_172
parent_id = node_1
node_414 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.name', :type => 'accordion', :icon => '/images/icons/16x16/jqmobile.png')
parent_id = node_414
node_415 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.black', :type => 'folder', :icon => '/images/icons/16x16/blackberry.png')
parent_id = node_415
node_416 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.port', :type => 'folder', :icon => '/images/icons/16x16/portrait.png')
parent_id = node_416
node_417 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_portrait/jqm')
node_418 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_portrait/jqm2')
node_419 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_portrait/jqm_original')
parent_id = node_415
node_420 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.land', :type => 'folder', :icon => '/images/icons/16x16/landscape.png')
parent_id = node_420
node_421 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_landscape/jqm')
node_422 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_landscape/jqm2')
node_423 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_landscape/jqm_original')
parent_id = node_415
parent_id = node_414
node_424 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.ipad', :type => 'folder', :icon => '/images/icons/16x16/ipad.png')
parent_id = node_424
node_425 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.port', :type => 'folder', :icon => '/images/icons/16x16/portrait.png')
parent_id = node_425
node_426 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_portrait/jqm')
node_427 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_portrait/jqm2')
node_428 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_portrait/jqm_original')
node_429 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/ipad_portrait/jqt')
node_430 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/ipad_portrait/jqt_original')
parent_id = node_424
node_431 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.land', :type => 'folder', :icon => '/images/icons/16x16/landscape.png')
parent_id = node_431
node_432 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_landscape/jqm')
node_433 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_landscape/jqm2')
node_434 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_landscape/jqm_original')
node_435 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/ipad_landscape/jqt')
node_436 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/ipad_landscape/jqt_original')
parent_id = node_424
parent_id = node_414
node_437 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.iphone', :type => 'folder', :icon => '/images/icons/16x16/iphone.png')
parent_id = node_437
node_438 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.port', :type => 'folder', :icon => '/images/icons/16x16/portrait.png')
parent_id = node_438
node_439 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_portrait/jqm')
node_440 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_portrait/jqm2')
node_441 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_portrait/jqm_original')
node_442 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/iphone_portrait/jqt')
node_443 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/iphone_portrait/jqt_original')
parent_id = node_437
node_444 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.land', :type => 'folder', :icon => '/images/icons/16x16/landscape.png')
parent_id = node_444
node_445 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_landscape/jqm')
node_446 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_landscape/jqm2')
node_447 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_landscape/jqm_original')
node_448 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/iphone_landscape/jqt')
node_449 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/iphone_landscape/jqt_original')
parent_id = node_437
parent_id = node_414
node_450 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.palm', :type => 'folder', :icon => '/images/icons/16x16/palm.png')
parent_id = node_450
node_451 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.port', :type => 'folder', :icon => '/images/icons/16x16/portrait.png')
parent_id = node_451
node_452 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_portrait/jqm')
node_453 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_portrait/jqm2')
node_454 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_portrait/jqm_original')
parent_id = node_450
node_455 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.land', :type => 'folder', :icon => '/images/icons/16x16/landscape.png')
parent_id = node_455
node_456 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_landscape/jqm')
node_457 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_landscape/jqm2')
node_458 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_landscape/jqm_original')
parent_id = node_450
parent_id = node_414
parent_id = node_1
puts "Finished creating navigation tree"

