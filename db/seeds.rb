mo = Profile.create({ first_name: 'Mohammad', last_name: 'Shamim', birthday: Date.new(1989,1,1), password_digest: "password", email: "mfshamim@memphis.edu", reward_amount: 0})
Craig = Profile.create({first_name: 'Craig', last_name: 'Kelly', birthday: Date.new(1989,1,1), password_digest: "password", email: "cnkelly@memphis.edu", reward_amount: 0})
Pulin = Profile.create({first_name: 'Pulin', last_name: 'Agrawal', birthday: Date.new(1989,1,1), password_digest: "password", email: "pagrawal@memphis.edu", reward_amount: 0})
Soujanya = Profile.create({first_name: 'Soujanya', last_name: 'Chatterjee', birthday: Date.new(1989,1,1), password_digest: "password", email: "schttrj1@memphis.edu", reward_amount: 0})
Tadael = Profile.create({first_name: 'Tadael', last_name: 'Fekede', birthday: Date.new(1989,1,1), password_digest: "password", email: "tadaelkoye@gmail.com", reward_amount: 0})

math = Category.create({category_name: "Mathematics"})
history = Category.create({category_name: "History"})
geography = Category.create({category_name: "Geography"})
sport = Category.create({category_name: "Sport"})
logo = Category.create({category_name: "Logo"})
animal = Category.create({category_name: "Animal"})


math_questions = Question.create([
    { category_id: math.id, level: 1, correct_answer: "11", option1: "11", option2: "2", option3: "3", option4: "4", question: "What is 10 + 1?"  },
    { category_id: math.id, level: 1, correct_answer: "1300", option1: "13000", option2: "13", option3: "130", option4: "1300", question: "What is 100 * 13?"  },
    { category_id: math.id, level: 1, correct_answer: "16", option1: "14", option2: "144", option3: "1", option4: "16", question: "What is (12 / 3) * 4?" },
    { category_id: math.id, level: 1, correct_answer: "1", option1: "5", option2: "2", option3: "1", option4: "16", question: "What is 12 / (3 * 4)?"  },
    { category_id: math.id, level: 1, correct_answer: "50", option1: "25", option2: "50", option3: "100", option4: "150", question: "What is 0.5 * 100?" },
    { category_id: math.id, level: 1, correct_answer: "22", option1: "11", option2: "22", option3: "3", option4: "4", question: "What is 10 + 12?"  },
    { category_id: math.id, level: 1, correct_answer: "130", option1: "13000", option2: "13", option3: "130", option4: "1300", question: "What is 10 * 13?"  },
    { category_id: math.id, level: 1, correct_answer: "20", option1: "14", option2: "144", option3: "20", option4: "16", question: "What is (12 / 3) * 5?" },
    { category_id: math.id, level: 1, correct_answer: "1", option1: "5", option2: "2", option3: "1", option4: "16", question: "What is 15 / (3 * 5)?" },
    { category_id: math.id, level: 1, correct_answer: "25", option1: "25", option2: "50", option3: "100", option4: "150", question: "What is 0.25 * 100?" },
    { category_id: math.id, level: 2, correct_answer: "20", option1: "1", option2: "20", option3: "30", option4: "40", question: "What is (2 + 3) x (7 - 3)?" },
    { category_id: math.id, level: 2, correct_answer: "3", option1: "1", option2: "2", option3: "3", option4: "4", question: "What is 15 % of 20?" },
    { category_id: math.id, level: 2, correct_answer: "31", option1: "31", option2: "22", option3: "-6", option4: "60", question: "Solve:  2x - 37 = 25" },
    { category_id: math.id, level: 2, correct_answer: "15", option1: "15", option2: "12", option3: "13", option4: "14", question: "What is the value of the expression 3(x + 7)  when x = -2 ?" },
    { category_id: math.id, level: 2, correct_answer: "2", option1: "16", option2: "2", option3: "-2", option4: "-16", question: "  Solve:  4(x - 2) - 1 = 3x - 7" },
    { category_id: math.id, level: 2, correct_answer: "13", option1: "11", option2: "16", option3: "17", option4: "13", question: "What is the next term in the sequence 1, 4, 7, 10, …?" },
    { category_id: math.id, level: 2, correct_answer: "5", option1: "1/5", option2: "-1/5", option3: "5", option4: "-5", question: "What is the reciprocal of 1/5?" },  
    { category_id: math.id, level: 2, correct_answer: "32", option1: "31", option2: "32", option3: "-6", option4: "60", question: "Solve:  2x - 39 = 25" },
    { category_id: math.id, level: 2, correct_answer: "0", option1: "0", option2: "12", option3: "13", option4: "14", question: "What is the value of the expression 3(x + 7)  when x = -7 ?" },
    { category_id: math.id, level: 2, correct_answer: "4", option1: "16", option2: "4", option3: "-2", option4: "-16", question: "  Solve:  5 = 3x - 7"},
    { category_id: math.id, level: 3, correct_answer: "11", option1: "11", option2: "12", option3: "13", option4: "14", question: "What is square root of 121?" },
    { category_id: math.id, level: 3, correct_answer: "169", option1: "100", option2: "81", option3: "169", option4: "121", question: "What is 13 square?" },
    { category_id: math.id, level: 3, correct_answer: "36", option1: "33", option2: "32", option3: "35", option4: "36", question: "What is the next number in the sequence:  1, 4, 9, 16, 25, __ ?" },
    { category_id: math.id, level: 3, correct_answer: "6", option1: "3", option2: "4", option3: "5", option4: "6", question: "The members of the gardening club are planting 40 tomato plants.  Each plant requires 2 stakes.  Stakes come in packages of 15.  How many packages of stakes will the club need to buy?" },
    { category_id: math.id, level: 3, correct_answer: "625", option1: "625", option2: "475", option3: "550", option4: "721", question: "A survey company randomly called 200 people to get their opinion on a certain product. Of the 200 people, 125 liked the product and 75 did not like it. If this same trend continues, how many people should like the product out of 1000 people?" },
    { category_id: math.id, level: 3, correct_answer: "75", option1: "123", option2: "65", option3: "75", option4: "47", question: "One lunch period, popcorn sold at a rate of 5 bags every 3 minutes.  The lunch period lasted 45 minutes.  How many bags of popcorn were sold?" },
    { category_id: math.id, level: 3, correct_answer: "14", option1: "14", option2: "16", option3: "13", option4: "18", question: "The numbers of elk a ranger saw on 5 days are 12, 11, 8, 14, and 25.  What is the mean number of elk the ranger saw per day?" },
    { category_id: math.id, level: 3, correct_answer: "26", option1: "625", option2: "26", option3: "550", option4: "721", question: "What is square root of 676?" },
    { category_id: math.id, level: 3, correct_answer: "5", option1: "123", option2: "65", option3: "5", option4: "47", question: "What is cubic root of 125?" },
    { category_id: math.id, level: 3, correct_answer: "32", option1: "14", option2: "16", option3: "13", option4: "32", question: "What is square root of 1024?" }
])

history_questions = Question.create([
    {category_id: history.id, level: 1, correct_answer: "George Washington", option1: "John Adams", option2: "George Washington", option3: "Andrew Jackson", option4: "Thomas Jefferson", question: "Who was the first President of the United States?"},
    {category_id: history.id, level: 1, correct_answer: "The American Civil War", option1: "War of 1812", option2: "World War I", option3: "The American Civil War", option4: "The Revolutionary War ", question: "What war was fought on American soil from 1861 to 1865?"},
    {category_id: history.id, level: 1, correct_answer: "Barack Obama", option1: " Abraham Lincoln", option2: "Ulysses S. Grant", option3: "Barack Obama", option4: "Andrew Johnson", question: "Who was the 16th president of the US?"},
    {category_id: history.id, level: 1, correct_answer: "The Democrats", option1: "The Democrats", option2: "The Federalists", option3: "The Progressives", option4: "The Independants", question: "Today in the United States government there are two major political parties.  The Republicians are one of the parties who is the other party?"},
    {category_id: history.id, level: 1, correct_answer: "Franklin D. Roosevelt", option1: "Dwight Eisenhower", option2: "Franklin D. Roosevelt", option3: "Herbert Hoover", option4: "Harry Truman ", question: "Who was the president from 1933 to 1945,  the only president to serve more than 8 years in office?"},
    {category_id: history.id, level: 1, correct_answer: "New York", option1: "Washington DC", option2: "Dallas", option3: "Seattle", option4: "New York", question: "In which city is the Empire State Building located?"},
    {category_id: history.id, level: 1, correct_answer: "Spanish", option1: "Spanish", option2: "French", option3: "Chinese", option4: "Hindi", question: "What is the second most spoken language in America?"},
    {category_id: history.id, level: 1, correct_answer: " Abraham Lincoln", option1: " Abraham Lincoln", option2: "Ulysses S. Grant", option3: "James Buchanan", option4: "Andrew Johnson", question: "Who is the current president of America?"},
    {category_id: history.id, level: 1, correct_answer: "Christopher Columbus", option1: "Amerigo Vespucci", option2: "Christopher Columbus", option3: "Francis Drake", option4: "Marco Polo", question: "Which explorer discovered America?"},
    {category_id: history.id, level: 1, correct_answer: "13", option1: "10", option2: "12", option3: "11", option4: "13 ", question: "How many stripes are displayed on the American flag?"},
    {category_id: history.id, level: 2, correct_answer: "Dallas", option1: "Dallas", option2: "1958", option3: "Austin", option4: "1973", question: "John F. Kennedy was assassinated in"},
    {category_id: history.id, level: 2, correct_answer: "Soviet Union", option1: "Soviet Union", option2: "Japan", option3: "England", option4: "Germany", question: "Joseph Stalin was the premiere of what country?"},
    {category_id: history.id, level: 2, correct_answer: "England", option1: "Norway", option2: "England", option3: "Russia", option4: "France ", question: "The Battle of Hastings in 1066 was fought in which country? "},
    {category_id: history.id, level: 2, correct_answer: "Martin Luther", option1: "Voltaire", option2: "Henry David Thoreau", option3: "Saint Augustus", option4: "Martin Luther", question: "This man wrote a document known as the 95 Theses. "},
    {category_id: history.id, level: 2, correct_answer: "Marco Polo", option1: "Marco Polo", option2: "Sir Francis Drake", option3: "Cook", option4: "Magellan", question: "Who was the first Western explorer to reach China?"},
    {category_id: history.id, level: 2, correct_answer: "Mongke Khan", option1: "Amair Khan", option2: "Salman Khan", option3: "Imran Khan", option4: "Mongke Khan", question: "Which was a Great Khan of Mongolia?"},
    {category_id: history.id, level: 2, correct_answer: "Queynisbrig", option1: "Counistoun", option2: "Dunri", option3: "Kingisburgh", option4: "Queynisbrig", question: "What was the old Scottish name for Königsberg?"},
    {category_id: history.id, level: 2, correct_answer: "3rd Crusade", option1: "1st Crusade", option2: "2nd Crusade", option3: "5th Crusade", option4: "3rd Crusade", question: "Friedrich Barbarossa died in 1190, to the great relief of Saladin, while travelling through Asia Minor on crusade. On which Crusade was this? "},
    {category_id: history.id, level: 2, correct_answer: "Corsica", option1: "French Guiana", option2: "Sardinia", option3: "Corsica", option4: "Elba", question: "Where was Napoleon born?"},
    {category_id: history.id, level: 2, correct_answer: "Ethiopia", option1: "Libya", option2: "Ethiopia", option3: "Liberia", option4: "Eritrea", question: "In 1895 which African country defeated Italy allowing it to stay independent?"},
    {category_id: history.id, level: 3, correct_answer: "Andrew Jackson", option1: "Arthur Wellsley", option2: "Otto von Bismarck", option3: "Napoleon", option4: "Andrew Jackson", question: "Who fought in the war of 1812?"},
    {category_id: history.id, level: 3, correct_answer: "Michael Jordan", option1: "Kobe Bryant", option2: "Tim Ducan", option3: "Magic Johnson", option4: "Michael Jordan", question: "After being cut from his high school basketball team, he went home locked himself in his room and cried"},
    {category_id: history.id, level: 3, correct_answer: "Albert Einstein", option1: "Charles Darwin", option2: "Galileo Galilei", option3: "Isaac Newton", option4: "Albert Einstein", question: "He wasn't able to speak until he was almost 4 years old and his teachers said he would never amount to much"},
    {category_id: history.id, level: 3, correct_answer: "Ronald Reagan", option1: "Ronald Reagan", option2: "George Washington", option3: "John Kennedy", option4: "William Harrison", question: "Who was the oldest elected president of USA?"},
    {category_id: history.id, level: 3, correct_answer: "Declaration of Independence", option1: "Articles of War", option2: "Declaration of Independence", option3: "U.S. Constitution", option4: "Bill of Rights", question: "Richard Henry Lee introduced a historic resolution at the Second Continental Congress. What resulted from this resolution?"},
    {category_id: history.id, level: 3, correct_answer: "France", option1: "France", option2: "Germany", option3: "Spain", option4: "Netherlands", question: "The United States was greatly helped in its war for independence by the actions of what European power?"},
    {category_id: history.id, level: 3, correct_answer: "The Roaring Twenties", option1: "The Twinklin' Twenties", option2: "The Kissin' Twenties", option3: "The Roaring Twenties", option4: "The Gay Twenties", question: "What was the decade from 1920 to 1929 referred to as?"},
    {category_id: history.id, level: 3, correct_answer: "1984", option1: "1984", option2: "1947", option3: "1967", option4: "1925", question: "When did Brunei become independent?"},
    {category_id: history.id, level: 3, correct_answer: "1963", option1: "1999", option2: "1963", option3: "1966", option4: "1977", question: "When was Malaysia formed?"},
    {category_id: history.id, level: 3, correct_answer: "Constantinople", option1: "Byzance", option2: "Adrienople", option3: "Nicosia", option4: "Constantinople", question: "What was the name of Istanbul before its capture by the Turks?"}

])


geography_questions = Question.create([
    { category_id: geography.id, level: 1, correct_answer: "Beijing", option1: "Khartoum", option2: "Karac", option3: "Ottawa", option4: "Panama City", question: "What is the capital of China?"},
    { category_id: geography.id, level: 1, correct_answer: "New Delhi", option1: "Kolkata", option2: "Bombay", option3: "Bengaluru", option4: "New Delhi", question: "What is the capital of India?"},
    { category_id: geography.id, level: 1, correct_answer: "Washington DC", option1: "Kansas City", option2: "Memphis", option3: "Germantown", option4: "Washington DC", question: "What is the capital of United States of America?"},
    { category_id: geography.id, level: 1, correct_answer: "Islamabad", option1: "karachi", option2: "Lahore", option3: "Islamabad", option4: "Hydrabad", question: "What is the capital of Pakistan?"},
    { category_id: geography.id, level: 1, correct_answer: "Tehran", option1: "Khartoum", option2: "Beijing", option3: "Tehran", option4: "Amsterdam", question: "What is the capital of Iran?"},
    { category_id: geography.id, level: 1, correct_answer: "Abu Dhabi", option1: "Abu Dhabi", option2: "Beijing", option3: "Ottawa", option4: "Panama City", question: "What is the capital of United Arab Emirates?"},
    { category_id: geography.id, level: 1, correct_answer: "Abuja", option1: "kolkata", option2: "Bombay", option3: "Bengaluru", option4: "Abuja", question: "What is the capital of Nigera?"},
    { category_id: geography.id, level: 1, correct_answer: "Addis Ababa", option1: "Kansas City", option2: "Memphis", option3: "Germantown", option4: "Addis Ababa", question: "What is the capital of Ethopia"},
    { category_id: geography.id, level: 1, correct_answer: "Amsterdam", option1: "karachi", option2: "Lahore", option3: "Amsterdam", option4: "Hydrabad", question: "What is the capital of Netherlands?"},
    { category_id: geography.id, level: 1, correct_answer: "Baku", option1: "Khartoum", option2: "Beijing", option3: "Baku", option4: "Amsterdam", question: "What is the capital of Azerbaijan?"},
    { category_id: geography.id, level: 2, correct_answer: "Berlin", option1: "Khartoum", option2: "Berlin", option3: "Ottawa", option4: "Panama City", question: "What is the capital of Germany?"},
    { category_id: geography.id, level: 2, correct_answer: "Belgrade", option1: "kolkata", option2: "Bombay", option3: "Bengaluru", option4: "Belgrade", question: "What is the capital of Serbia?"},
    { category_id: geography.id, level: 2, correct_answer: "Bern", option1: "Kansas ", option2: "Memphis", option3: "Germantown", option4: "Bern", question: "What is the capital of Switzerland?"},
    { category_id: geography.id, level: 2, correct_answer: "Brussels", option1: "Karachi", option2: "Lahore", option3: "Brussels", option4: "Hydrabad", question: "What is the capital of Belgium?"},
    { category_id: geography.id, level: 2, correct_answer: "Bucharest", option1: "Khartoum", option2: "Beijing", option3: "Bucharest", option4: "Amsterdam", question: "What is the capital of Romania?"},
    { category_id: geography.id, level: 2, correct_answer: "Brasilia", option1: "Khartoum", option2: "Beijing", option3: "Ottawa", option4: "Brasilia", question: "What is the capital of Brazil?"},
    { category_id: geography.id, level: 2, correct_answer: "Bangkok", option1: "Kolkata", option2: "Bombay", option3: "Bengaluru", option4: "Bangkok", question: "What is the capital of Thailand?"},
    { category_id: geography.id, level: 2, correct_answer: "Bogota", option1: "Kansas City", option2: "Memphis", option3: "Germantown", option4: "Bogota", question: "What is the capital of Colombia"},
    { category_id: geography.id, level: 2, correct_answer: "Bridgetown", option1: "Karachi", option2: "Lahore", option3: "Bridgetown", option4: "Hydrabad", question: "What is the capital of Barbados?"},
    { category_id: geography.id, level: 2, correct_answer: "Bamako", option1: "Khartoum", option2: "Beijing", option3: "Bamako", option4: "Amsterdam", question: "What is the capital of Mali?"},
    { category_id: geography.id, level: 3, correct_answer: "Copenhagen", option1: "Khartoum", option2: "Copenhagen", option3: "Ottawa", option4: "Panama City", question: "What is the capital of Denmark?"},
    { category_id: geography.id, level: 3, correct_answer: "Dhaka", option1: "kolkata", option2: "Bombay", option3: "Bengaluru", option4: "Dhaka", question: "What is the capital of Bangladesh?"},
    { category_id: geography.id, level: 3, correct_answer: "Dakar", option1: "Kansas City", option2: "Memphis", option3: "Germantown", option4: "Dakar", question: "What is the capital of Senegal?"},
    { category_id: geography.id, level: 3, correct_answer: "Canberra", option1: "Karachi", option2: "Lahore", option3: "Canberra", option4: "Hydrabad", question: "What is the capital of Australia?"},
    { category_id: geography.id, level: 3, correct_answer: "Caracas", option1: "Khartoum", option2: "Beijing", option3: "Caracas", option4: "Amsterdam", question: "What is the capital of Venezuela?"},
    { category_id: geography.id, level: 3, correct_answer: "Doha", option1: "Khartoum", option2: "Doha", option3: "Ottawa", option4: "Panama City", question: "What is the capital of Qatar?"},
    { category_id: geography.id, level: 3, correct_answer: "Dublin", option1: "Kolkata", option2: "Bombay", option3: "Bengaluru", option4: "Dublin", question: "What is the capital of Ireland?"},
    { category_id: geography.id, level: 3, correct_answer: "Hagatna", option1: "Kansas City", option2: "Memphis", option3: "Germantown", option4: "Hagatna", question: "What is the capital of Guam?"},
    { category_id: geography.id, level: 3, correct_answer: "Kuala Lumpur", option1: "karachi", option2: "Lahore", option3: "Kuala Lumpur", option4: "Hydrabad", question: "What is the capital of Malaysia?"},
    { category_id: geography.id, level: 3, correct_answer: "Kathmandu", option1: "Khartoum", option2: "Beijing", option3: "Kathmandu", option4: "Amsterdam", question: "What is the capital of Nepal?"}

])


animal_questions = Question.create([
{ category_id: animal.id, mediaurl:"1_animal_sheep.jpg", level: 1, correct_answer: "Sheep", option1: "Cat", option2: "Tiger", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"2_animal_tiger.jpg", level: 1, correct_answer: "Tiger", option1: "Sheep", option2: "Dog", option3: "Monkey", option4: "lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"3_animal_elephant.jpg", level: 1, correct_answer: "Elephant", option1: "Cat", option2: "Dog", option3: "Sheep", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"4_animal_horse.jpg", level: 1, correct_answer: "Horse", option1: "Cat", option2: "Dog", option3: "Monkey", option4: "Sheep", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"5_animal_monkey.jpg", level: 1, correct_answer: "Monkey", option1: "Cat", option2: "Dog", option3: "Sheep", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"6_animal_cat.jpg", level: 1, correct_answer: "Cat", option1: "Sheep", option2: "Dog", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"7_animal_lion.jpg", level: 1, correct_answer: "Lion", option1: "Cat", option2: "Dog", option3: "Monkey", option4: "Sheep", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"8_animal_shark.jpg", level: 1, correct_answer: "Shark", option1: "Cat", option2: "Dog", option3: "Sheep", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"9_animal_zebra.jpg", level: 1, correct_answer: "Zebra", option1: "Cat", option2: "Dog", option3: "Sheep", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"10_animal_kangaroo.jpg", level: 1, correct_answer: "Kangaroo", option1: "Cat", option2: "Dog", option3: "Platypus", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"11_animal_gorilla.jpg", level: 2, correct_answer: "Gorilla", option1: "Sheep", option2: "Dog", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"12_animal_penguin.jpg", level: 2, correct_answer: "Penguin", option1: "Cat", option2: "Dog", option3: "Sheep", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"13_animal_camel.jpg", level: 2, correct_answer: "Camel", option1: "Cat", option2: "Dog", option3: "Sheep", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"14_animal_giraffe.jpg", level: 2, correct_answer: "Giraffe", option1: "Cat", option2: "Dog", option3: "Sheep", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"15_animal_leopard.jpg", level: 2, correct_answer: "Leopard", option1: "Cat", option2: "Dog", option3: "Sheep", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"16_animal_cheetah.jpg", level: 2, correct_answer: "Cheetah", option1: "Cat", option2: "Dog", option3: "Sheep", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"17_animal_alligator.jpg", level: 2, correct_answer: "Alligator", option1: "Cat", option2: "Dog", option3: "Sheep", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"18_animal_jaguar.jpg", level: 2, correct_answer: "Jaguar", option1: "Cat", option2: "Dog", option3: "Sheep", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"19_animal_tortoise.jpg", level: 2, correct_answer: "Tortoise", option1: "Cat", option2: "Dog", option3: "Sheep", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"20_animal_killer_whale.jpg", level: 2, correct_answer: "Killer Whale", option1: "Cat", option2: "Dog", option3: "Sheep", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"21_animal_heron.jpg", level: 3, correct_answer: "Heron", option1: "Sheep", option2: "Dog", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"22_animal_Hippo.jpg", level: 3, correct_answer: "Hippo", option1: "Sheep", option2: "Dog", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"23_animal_wildebeest.jpg", level: 3, correct_answer: "Wildebeest", option1: "Sheep", option2: "Dog", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"24_animal_red deer.jpg", level: 3, correct_answer: "Red Deer", option1: "Sheep", option2: "Dog", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"25_animal_gibbon.jpg", level: 3, correct_answer: "Gibbon", option1: "Sheep", option2: "Dog", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"26_animal_ibex.jpg", level: 3, correct_answer: "Ibex", option1: "Sheep", option2: "Dog", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"27_animal_gazella.jpg", level: 3, correct_answer: "Gazella", option1: "Sheep", option2: "Dog", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"28_animal_crowned_eagle.jpg", level: 3, correct_answer: "Crowned Eagle", option1: "Sheep", option2: "Dog", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"29_animal_tamarin.jpg", level: 3, correct_answer: "Tamarin", option1: "Gorilla", option2: "Sheep", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediaurl:"30_animal_cape_buffalo.jpg", level: 3, correct_answer: "Cape Buffalo", option1: "Gorilla", option2: "Donkey", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"}

])

logo_questions = Question.create([
{ category_id: logo.id, mediaurl:"logo_amazon.jpg", level: 1, correct_answer: "Amazon", option1: "Facebook", option2: "Samsung", option3: "Pizza Hut", option4: "Google", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_android.jpg", level: 1, correct_answer: "Android", option1: "Facebook", option2: "Samsung", option3: "Pizza Hut", option4: "Google", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_angry_birds.jpg", level: 1, correct_answer: "Angry Birds", option1: "Facebook", option2: "Samsung", option3: "Pizza Hut", option4: "Google", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_apple.jpg", level: 1, correct_answer: "Apple", option1: "Facebook", option2: "Samsung", option3: "Pizza Hut", option4: "Google", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_caterpillar.jpg", level: 1, correct_answer: "Caterpillar", option1: "Facebook", option2: "Samsung", option3: "Pizza Hut", option4: "Google", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_dominos_pizza.jpg", level: 1, correct_answer: "Dominos Pizza", option1: "Cici pizza", option2: "Samsung", option3: "Pizza Hut", option4: "Google", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_facebook.jpg", level: 1, correct_answer: "Facebook", option1: "Nike", option2: "Samsung", option3: "Pizza Hut", option4: "Google", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_google.jpg", level: 1, correct_answer: "Google", option1: "Nike", option2: "Samsung", option3: "Pizza Hut", option4: "Facebook", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_harley_davidson.jpg", level: 1, correct_answer: "Harley Davidson", option1: "Nike", option2: "Google", option3: "Pizza Hut", option4: "Facebook", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_history_channel.jpg", level: 1, correct_answer: "History Channel", option1: "Nike", option2: "Samsung", option3: "Facebook", option4: "Google", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_hsbc.jpg", level: 2, correct_answer: "HSBC", option1: "Nike", option2: "Samsung", option3: "Pizza Hut", option4: "Facebook", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_ikea.jpg", level: 2, correct_answer: "Ikea", option1: "Nike", option2: "Samsung", option3: "Pizza Hut", option4: "Facebook", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_intel.jpg", level: 2, correct_answer: "Intel", option1: "Nike", option2: "Samsung", option3: "Facebook", option4: "Google", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_itunes.jpg", level: 2, correct_answer: "Itunes", option1: "Nike", option2: "Facebook", option3: "Pizza Hut", option4: "Google", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_kfc.jpg", level: 2, correct_answer: "KFC", option1: "Nike", option2: "Facebook", option3: "Pizza Hut", option4: "Google", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_mcdonalds.jpg", level: 2, correct_answer: "McDonalds", option1: "Facebook", option2: "Samsung", option3: "Pizza Hut", option4: "Google", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_mercedes.jpg", level: 2, correct_answer: "Mercedes", option1: "Nike", option2: "Facebook", option3: "Pizza Hut", option4: "Google", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_microsoft.jpg", level: 2, correct_answer: "Microsoft", option1: "Nike", option2: "Samsung", option3: "Facebook", option4: "Google", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_msn.jpg", level: 2, correct_answer: "MSN", option1: "Nike", option2: "Samsung", option3: "Facebook", option4: "Google", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_nike.jpg", level: 2, correct_answer: "Nike", option1: "Facebook", option2: "Samsung", option3: "Pizza Hut", option4: "Google", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_pepsi.jpg", level: 3, correct_answer: "Pepsi", option1: "Facebook", option2: "Samsung", option3: "Pizza Hut", option4: "Google", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_pizza_hut.jpg", level: 3, correct_answer: "Pizza Hut", option1: "Nike", option2: "Samsung", option3: "Facebook", option4: "Google", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_pringles.jpg", level: 3, correct_answer: "Pringles", option1: "Nike", option2: "Facebook", option3: "Pizza Hut", option4: "Google", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_redbull.jpg", level: 3, correct_answer: "Red Bull", option1: "Nike", option2: "Facebook", option3: "Pizza Hut", option4: "Google", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_samsung.jpg", level: 3, correct_answer: "Samsung", option1: "Nike", option2: "Twitter", option3: "Facebook", option4: "Google", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_shell.jpg", level: 3, correct_answer: "Shell", option1: "Nike", option2: "Samsung", option3: "Pizza Hut", option4: "Facebook", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_starbucks.jpg", level: 3, correct_answer: "Starbucks", option1: "Nike", option2: "Samsung", option3: "Facebook", option4: "Google", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_subway.jpg", level: 3, correct_answer: "Subway", option1: "Nike", option2: "Facebook", option3: "Pizza Hut", option4: "Google", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_tmobile.jpg", level: 3, correct_answer: "Tmobile", option1: "Facebook", option2: "Samsung", option3: "Pizza Hut", option4: "Google", question: "Name the company whose logo is shown in the picture?"},
{ category_id: logo.id, mediaurl:"logo_twitter.jpg", level: 3, correct_answer: "Twitter", option1: "Facebook", option2: "Samsung", option3: "Pizza Hut", option4: "Google", question: "Name the company whose logo is shown in the picture?"}

])

sport_questions = Question.create([
    { category_id: sport.id, mediaurl:"1_sport_swimming.jpg", level: 1, correct_answer: "Swimming", option1: "Tennis", option2: "Cricket", option3: "Baseball", option4: "Basketball", question: "Name the sport or game in the picture?"},
    { category_id: sport.id, mediaurl:"2_sport_football.jpg", level: 1, correct_answer: "Football", option1: "Swimming", option2: "Tennis", option3: "Baseball", option4: "Basketball", question: "Name the sport or game in the picture?"},
    { category_id: sport.id, mediaurl:"3_sport_tennis.jpg", level: 1, correct_answer: "Tennis", option1: "Swimming", option2: "Cricket", option3: "Football", option4: "Basketball", question: "Name the sport or game in the picture?"},
    { category_id: sport.id, mediaurl:"4_sport_basketball.jpg", level: 1, correct_answer: "Basketball", option1: "Swimming", option2: "Cricket", option3: "Baseball", option4: "Football", question: "Name the sport or game in the picture?"},
    { category_id: sport.id, mediaurl:"5_sport_cricket.jpg", level: 1, correct_answer: "Cricket", option1: "Swimming", option2: "Football", option3: "Baseball", option4: "Basketball", question: "Name the sport or game in the picture?"},
    { category_id: sport.id, mediaurl:"6_sport_baseball.jpg", level: 1, correct_answer: "Baseball", option1: "Swimming", option2: "Cricket", option3: "Football", option4: "Basketball", question: "Name the sport or game in the picture?"},
    { category_id: sport.id, mediaurl:"7_sport_arm_wrestling.jpg", level: 1, correct_answer: "Arm Wrestling", option1: "Swimming", option2: "Football", option3: "Baseball", option4: "Basketball", question: "Name the sport or game in the picture?"},
    { category_id: sport.id, mediaurl:"8_sport_pool.jpg", level: 1, correct_answer: "Pool", option1: "Football", option2: "Cricket", option3: "Baseball", option4: "Basketball", question: "Name the sport or game in the picture??"},
    { category_id: sport.id, mediaurl:"9_sport_table_tennis.jpg", level: 1, correct_answer: "Table Tennis", option1: "Swimming", option2: "Cricket", option3: "Football", option4: "Basketball", question: "Name the sport or game in the picture?"},
    { category_id: sport.id, mediaurl:"10_sport_ice_hockey.jpg", level: 1, correct_answer: "Ice Hockey", option1: "Swimming", option2: "Cricket", option3: "Baseball", option4: "Football", question: "Name the sport or game in the picture?"},
    { category_id: sport.id, level: 2, correct_answer: "Stumped", option1: "Dil Se", option2: "DDLJ", option3: "Dil Se", option4: "Chak de India", question: "Tendulkar featured in which Bollywood film?"},
    { category_id: sport.id, level: 2, correct_answer: "Rawalpindi Express", option1: "Fast Tiger", option2: "Karachi Express", option3: "Don", option4: "The Eagle", question: "What is Shoaib Akhtars nickname?"},
    { category_id: sport.id, level: 2, correct_answer: "Pakistan", option1: "UAE", option2: "South Africa", option3: "Kenya", option4: "Canada", question: "Against which team did Sachin play his last ODI?"},
    { category_id: sport.id, level: 2, correct_answer: "Pakistan", option1: "New Zealand", option2: "Australia", option3: "Bangladesh", option4: "West Indies", question: "Against which team did Sachin Tendulkar make his test debut?"},
    { category_id: sport.id, level: 2, correct_answer: "2003", option1: "1999", option2: "1997", option3: "2004", option4: "2013", question: "When did Sachin receive the Wisden cricketer of the year award?"},
    { category_id: sport.id, level: 2, correct_answer: "India", option1: "Australia", option2: "Pakistan", option3: "Bangladesh", option4: "Sri Lanka", question: "Who won ICC Cricket World Cup in 2011?"},
    { category_id: sport.id, level: 2, correct_answer: "Pakistan", option1: "Australia", option2: "West Indies", option3: "Bangladesh", option4: "India", question: "Who won ICC Cricket World Cup in 1992?"},
    { category_id: sport.id, level: 2, correct_answer: "Sri Lanka", option1: "India", option2: "South Africa", option3: "Kenya", option4: "Pakistan", question: "Who won ICC Cricket World Cup in 1996?"},
    { category_id: sport.id, level: 2, correct_answer: "Australia", option1: "New Zealand", option2: "India", option3: "Bangladesh", option4: "Pakistan", question: "Who won ICC Cricket World Cup in 2015?"},
    { category_id: sport.id, level: 2, correct_answer: "West Indies", option1: "Sri Lanka", option2: "Pakistan", option3: "Bangladesh", option4: "India", question: "Who won ICC Cricket World Cup in 1975?"},
    { category_id: sport.id, level: 3, correct_answer: "Shaquille O’Neal", option1: "Pau Gasol", option2: "Carmelo Anthony", option3: "Kevin Garnett", option4: "Michael Jordan", question: "Who shared the 2009 All-Star MVP Award with Kobe Bryant?"},
    { category_id: sport.id, level: 3, correct_answer: "He wore uniform number 80 for the San Francisco 49ers", option1: "He never lost a Super Bowl game", option2: "He played in the Canadian Football League for two seasons", option3: "He was a star for the University of Alabama", option4: "He was a star for the University of Memphis", question: "Wide receiver Jerry Rice was an NFL superstar. Which one of these statements about Rice is true?"},
    { category_id: sport.id, level: 3, correct_answer: "Buffalo Bills", option1: "Pittsburgh Steelers", option2: "San Diego Charger", option3: "Oakland Raiders", option4: "Tiger Bills", question: "Emmitt Smith was a star NFL running back for more than a decade and was named the Most Valuable Player of Super Bowl XXVIII (1994). Which team did the Dallas Cowboys defeat in that contest?"},
    { category_id: sport.id, level: 3, correct_answer: "The Hogs", option1: "The Animals", option2: "Gimm's Reapers", option3: "The Dogs", option4: "The Rogs", question: "Russ Grimm played guard for the Washington Redskins from 1981 to 1991. What was the nickname of Washington's offensive line during those years?"},
    { category_id: sport.id, level: 3, correct_answer: "Detroit Lions", option1: "Seattle Searocks", option2: "Chicago Bears", option3: "San Francisco 49ers", option4: "Green Bay packers", question: "Dick LeBeau played cornerback in the NFL from 1959 to 1972. For which team did LeBeau play his entire pro career?"},
    { category_id: sport.id, level: 3, correct_answer: "Defensive tackle", option1: "Catching", option2: "Wide receiver", option3: "Kicker", option4: "Safety", question: "John Randle played for the Vikings and the Seahawks in an NFL career which lasted from 1990 to 2003. Which position did Randle play?"},
    { category_id: sport.id, level: 3, correct_answer: "Mile High Stadium", option1: "Dolphins Stadium", option2: "University of Memphis Stadium", option3: "Lambeau Field", option4: "Oakland Coliseum", question: "Floyd Little was a star running back in the AFL and NFL from 1967 to 1975. In which stadium did Little play his home games?"},
    { category_id: sport.id, level: 3, correct_answer: "57", option1: "66", option2: "59", option3: "77", option4: "1", question: "Linebacker Rickey Jackson played his first 13 NFL seasons (1981-1993) with the New Orleans Saints. Which uniform number did Jackson wear for the Saints?"},
    { category_id: sport.id, level: 3, correct_answer: "Woody Hayes", option1: "Bear Bryant", option2: "Ara Parseghian", option3: "Bo Schembechler", option4: "James Paul", question: "Hall of Famer Dick LeBeau played collegiate football at Ohio State University during the late 1950s. Who was LeBeau's head coach at OSU?"},
    { category_id: sport.id, level: 3, correct_answer: "New Haven, Connecticut", option1: "New Haven, Kansas City", option2: "Providence, Rhode Island", option3: "Philadelphia, Pennsylvania", option4: "Boston, Massachusetts", question: "In which city, famous for its Yale University, did Hall of Fame running back Floyd Little grow up?"}

])

Quiz.create!({
    id: 1,
    profile_id: mo.id,
    start_date: Date.new(1989,1,1),
    end_date: Date.new(1989,1,1),
    question1: math_questions[0].id, correct1: true,
    question2: math_questions[1].id, correct2: false,
    question3: math_questions[2].id, correct3: true,
    question4: math_questions[3].id, correct4: nil,
    question5: math_questions[4].id, correct5: nil,
})

Quiz.create!({
    profile_id: mo.id,
    start_date: Date.new(1989,1,1),
    end_date: Date.new(1989,1,1),
    question1: history_questions[0].id, correct1: true,
    question2: history_questions[1].id, correct2: false,
    question3: history_questions[2].id, correct3: true,
    question4: history_questions[3].id, correct4: nil,
    question5: history_questions[4].id, correct5: nil,
})

Quiz.create!({
    profile_id: mo.id,
    start_date: Date.new(1989,1,1),
    end_date: Date.new(1989,1,1),
    question1: geography_questions[0].id, correct1: true,
    question2: geography_questions[1].id, correct2: false,
    question3: geography_questions[2].id, correct3: true,
    question4: geography_questions[3].id, correct4: nil,
    question5: geography_questions[4].id, correct5: nil,
})
