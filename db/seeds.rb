# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


string = 
"atwood	100	2
atwood	102	1
atwood	104	1
atwood	106	3
atwood	108	1
atwood	110	1
atwood	112	2
atwood	114	2
atwood	116	1
atwood	118	1
atwood	120	3
atwood	122	1
atwood	124	1
atwood	126	2
atwood	101	2
atwood	103	1
atwood	105	1
atwood	107	3
atwood	109	1
atwood	111	1
atwood	113	2
atwood	115	2
atwood	117	1
atwood	119	1
atwood	121	3
atwood	123	1
atwood	125	1
atwood	127	2
atwood	200	2
atwood	202	1
atwood	204	1
atwood	206	3
atwood	208	1
atwood	210	1
atwood	212	2
atwood	214	2
atwood	216	1
atwood	218	1
atwood	220	3
atwood	222	1
atwood	224	1
atwood	226	2
atwood	201	2
atwood	203	1
atwood	205	1
atwood	207	3
atwood	209	1
atwood	211	1
atwood	213	2
atwood	215	2
atwood	217	1
atwood	219	1
atwood	221	3
atwood	223	1
atwood	225	1
atwood	227	2
atwood	300	2
atwood	302	1
atwood	304	1
atwood	306	3
atwood	308	1
atwood	310	1
atwood	312	2
atwood	314	2
atwood	316	1
atwood	318	1
atwood	320	3
atwood	322	1
atwood	324	1
atwood	326	2
atwood	301	2
atwood	303	1
atwood	305	1
atwood	307	3
atwood	309	1
atwood	311	1
atwood	313	2
atwood	315	2
atwood	317	1
atwood	319	1
atwood	321	3
atwood	323	1
atwood	325	1
atwood	327	2"


string.each_line {|s| 
  building, number, capacity = s.chomp.split(" ")
  Page.create!(:dormName => building, :roomNumber => number, :capacity => capacity)}


#
#while $i < $num  do
#   puts myFile.readline 
#   puts $i
#   building, number, capacity = myFile.readline.chomp.split(" ")
#   Page.create!(:dormName => building, :roomNumber => number, :capacity => capacity)
#   $i +=1;
#end


    
    
    


