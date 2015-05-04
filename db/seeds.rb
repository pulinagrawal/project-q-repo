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
	{category_id: history.id, level: 1, correct_answer: " Barack Obama", option1: " Abraham Lincoln", option2: "Ulysses S. Grant", option3: "Barack Obama", option4: "Andrew Johnson", question: "Who was the 16th president of the US?"},
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

sport_questions = Question.create([
	{ category_id: sport.id, level: 1, correct_answer: "Stumped", option1: "Stumped", option2: "DDLJ", option3: "Dil Se", option4: "Chak de India", question: "Tendulkar featured in which Bollywood film?"},
	{ category_id: sport.id, level: 1, correct_answer: "Rawalpindi Express", option1: "Fast Tiger", option2: "Rawalpindi Express", option3: "Don", option4: "The Eagle", question: "What is Shoaib Akhtars nickname?"},
	{ category_id: sport.id, level: 1, correct_answer: "Pakistan", option1: "UAE", option2: "South Africa", option3: "Kenya", option4: "Pakistan", question: "Against which team did Sachin play his last ODI?"},
	{ category_id: sport.id, level: 1, correct_answer: "Pakistan", option1: "New Zealand", option2: "Australia", option3: "Bangladesh", option4: "Pakistan", question: "Against which team did Sachin Tendulkar make his test debut?"},
	{ category_id: sport.id, level: 1, correct_answer: "2003", option1: "1999", option2: "1997", option3: "2004", option4: "2003", question: "When did Sachin receive the Wisden cricketer of the year award?"}

    
])


geography_questions = Question.create([
	{ category_id: geography.id, level: 1, correct_answer: "Beijing", option1: "Khartoum", option2: "Beijing", option3: "Ottawa", option4: "Panama City", question: "What is the capital of China?"},
	{ category_id: geography.id, level: 1, correct_answer: "New Delhi", option1: "kolkata", option2: "Bombay", option3: "Bengaluru", option4: "New Delhi", question: "What is the capital of India?"},
	{ category_id: geography.id, level: 1, correct_answer: "Washington DC", option1: "Kansas City", option2: "Memphis", option3: "Germantown", option4: "Washington DC", question: "What is the capital of United States of America?"},
	{ category_id: geography.id, level: 1, correct_answer: "Islamabad", option1: "karachi", option2: "Lahore", option3: "Islamabad", option4: "Hydrabad", question: "What is the capital of Pakistan?"},
	{ category_id: geography.id, level: 1, correct_answer: "Tehran", option1: "Khartoum", option2: "Beijing", option3: "Tehran", option4: "Amsterdam", question: "What is the capital of Iran?"}


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

animal_questions = Question.create([
{ category_id: animal.id, mediurl:"1 animal Sheep.jpg", level: 1, correct_answer: "Sheep", option1: "Cat", option2: "Sheep", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"2 animal tiger.jpg", level: 1, correct_answer: "Tiger", option1: "Tiger", option2: "Dog", option3: "Monkey", option4: "lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"3 animal elephant.jpg", level: 1, correct_answer: "Elephant", option1: "Cat", option2: "Dog", option3: "Elephant", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"4 animal horse.jpg", level: 1, correct_answer: "Horse", option1: "Cat", option2: "Dog", option3: "Monkey", option4: "Horse", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"5 animal monkey.jpg", level: 1, correct_answer: "Monkey", option1: "Cat", option2: "Dog", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"6 animal cat.jpg", level: 1, correct_answer: "Cat", option1: "Cat", option2: "Dog", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"7 animal lion.jpg", level: 1, correct_answer: "Lion", option1: "Cat", option2: "Dog", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"8 animal shark.jpg", level: 1, correct_answer: "Shark", option1: "Cat", option2: "Dog", option3: "Shark", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"9 animal Zebra.jpg", level: 1, correct_answer: "Zebra", option1: "Cat", option2: "Dog", option3: "Zebra", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"10 animal kangaroo.jpg", level: 1, correct_answer: "kangaroo", option1: "Cat", option2: "Dog", option3: "Kangaroo", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"11 animal gorilla.jpg", level: 2, correct_answer: "Gorilla", option1: "Gorilla", option2: "Dog", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"12 animal penguin.jpg", level: 2, correct_answer: "Penguin", option1: "Cat", option2: "Dog", option3: "Penguin", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"13 animal camel.jpg", level: 2, correct_answer: "Camel", option1: "Cat", option2: "Dog", option3: "Camel", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"14 animal girraffe.jpg", level: 2, correct_answer: "Girraffe", option1: "Cat", option2: "Dog", option3: "Girraffe", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"15 animal leopard.jpg", level: 2, correct_answer: "Leopard", option1: "Cat", option2: "Dog", option3: "Leopard", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"16 animal cheetah.jpg", level: 2, correct_answer: "Cheetah", option1: "Cat", option2: "Dog", option3: "Cheetah", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"17 animal Alligator.jpg", level: 2, correct_answer: "Alligator", option1: "Cat", option2: "Dog", option3: "Alligator", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"18 animal jaguar.jpg", level: 2, correct_answer: "Jaguar", option1: "Cat", option2: "Dog", option3: "Jaguar", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"19 animal tortoise.jpg", level: 2, correct_answer: "Tortoise", option1: "Cat", option2: "Dog", option3: "Tortoise", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"20 animal killer whale.jpg", level: 2, correct_answer: "Killer Whale", option1: "Cat", option2: "Dog", option3: "Killer Whale", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"21 animal heron.jpg", level: 3, correct_answer: "Heron", option1: "Heron", option2: "Dog", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"22 animal Hippo.jpg", level: 3, correct_answer: "Hippo", option1: "Hippo", option2: "Dog", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"23 animal wildebeest.jpg", level: 3, correct_answer: "Wildebeest", option1: "Wildebeest", option2: "Dog", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"24 animal red deer.jpg", level: 3, correct_answer: "Red Deer", option1: "Red Deer", option2: "Dog", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"25 animal gibbon.jpg", level: 3, correct_answer: "Gibbon", option1: "Gibbon", option2: "Dog", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"26 animal ibex.jpg", level: 3, correct_answer: "Ibex", option1: "Ibex", option2: "Dog", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"27 animal gazella.jpg", level: 3, correct_answer: "Gazella", option1: "Gazella", option2: "Dog", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"28 animal crowned eagle.jpg", level: 3, correct_answer: "Crowned Eagle", option1: "Crowned Eagle", option2: "Dog", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"29 animal Tamarin.jpg", level: 3, correct_answer: "Tamarin", option1: "Gorilla", option2: "Tamarin", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"},
{ category_id: animal.id, mediurl:"30 animal cape buffalo.jpg", level: 3, correct_answer: "Cape Buffalo", option1: "Gorilla", option2: "Cape Buffalo", option3: "Monkey", option4: "Lion", question: "Name the animal shown in the picture?"}

])

logo_questions = Question.create([
{ category_id: logo.id, mediurl:"logo amazon.jpg", level: 1, correct_answer: "Amazon", option1: "Amazon", option2: "Samsung", option3: "Pizza Hut", option4: "Google", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo android.jpg", level: 1, correct_answer: "Android", option1: "Android", option2: "Samsung", option3: "Pizza Hut", option4: "Google", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo Angry birds.jpg", level: 1, correct_answer: "Angry Birds", option1: "Angry Birds", option2: "Samsung", option3: "Pizza Hut", option4: "Google", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo apple.jpg", level: 1, correct_answer: "Apple", option1: "Apple", option2: "Samsung", option3: "Pizza Hut", option4: "Google", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo caterpillar.jpg", level: 1, correct_answer: "Caterpillar", option1: "Caterpillar", option2: "Samsung", option3: "Pizza Hut", option4: "Google", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo dominos pizza.jpg", level: 1, correct_answer: "Dominos Pizza", option1: "Dominos pizza", option2: "Samsung", option3: "Pizza Hut", option4: "Google", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo facebook.jpg", level: 1, correct_answer: "Facebook", option1: "Facebook", option2: "Samsung", option3: "Pizza Hut", option4: "Google", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo google.jpg", level: 1, correct_answer: "Google", option1: "Nike", option2: "Google", option3: "Pizza Hut", option4: "Google", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo harley davidson.jpg", level: 1, correct_answer: "Harley Davidson", option1: "Nike", option2: "Harley Davidson", option3: "Pizza Hut", option4: "Google", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo histiry channel.jpg", level: 1, correct_answer: "History Channel", option1: "Nike", option2: "Samsung", option3: "History Channel", option4: "Google", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo HSBC.jpg", level: 2, correct_answer: "HSBC", option1: "Nike", option2: "Samsung", option3: "Pizza Hut", option4: "HSBC", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo ikea.jpg", level: 2, correct_answer: "Ikea", option1: "Nike", option2: "Samsung", option3: "Pizza Hut", option4: "Ikea", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo intel.jpg", level: 2, correct_answer: "Intel", option1: "Nike", option2: "Samsung", option3: "Intel", option4: "Google", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo itunes.jpg", level: 2, correct_answer: "Itunes", option1: "Nike", option2: "Itunes", option3: "Pizza Hut", option4: "Google", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo KFC.jpg", level: 2, correct_answer: "KFC", option1: "Nike", option2: "KFC", option3: "Pizza Hut", option4: "Google", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo McDonalds.jpg", level: 2, correct_answer: "McDonalds", option1: "McDonalds", option2: "Samsung", option3: "Pizza Hut", option4: "Google", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo mercedes.jpg", level: 2, correct_answer: "Mercedes", option1: "Nike", option2: "Mercedes", option3: "Pizza Hut", option4: "Google", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo microsoft.jpg", level: 2, correct_answer: "Microsoft", option1: "Nike", option2: "Samsung", option3: "Microsoft", option4: "Google", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo MSN.jpg", level: 2, correct_answer: "MSN", option1: "Nike", option2: "Samsung", option3: "MSN", option4: "Google", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo nike.jpg", level: 2, correct_answer: "Nike", option1: "Nike", option2: "Samsung", option3: "Pizza Hut", option4: "Google", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo Pepsi.jpg", level: 3, correct_answer: "Pepsi", option1: "Pepsi", option2: "Samsung", option3: "Pizza Hut", option4: "Google", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo pizza hut.jpg", level: 3, correct_answer: "Pizza Hut", option1: "Nike", option2: "Samsung", option3: "Pizza Hut", option4: "Google", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo pringles.jpg", level: 3, correct_answer: "Pringles", option1: "Nike", option2: "Pringles", option3: "Pizza Hut", option4: "Google", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo redbull.jpg", level: 3, correct_answer: "Red Bull", option1: "Nike", option2: "Red Bull", option3: "Pizza Hut", option4: "Google", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo samsung.jpg", level: 3, correct_answer: "Samsung", option1: "Nike", option2: "Samsung", option3: "Samsung", option4: "Google", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo shell.jpg", level: 3, correct_answer: "Shell", option1: "Nike", option2: "Samsung", option3: "Pizza Hut", option4: "Shell", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo starbucks.jpg", level: 3, correct_answer: "Starbucks", option1: "Nike", option2: "Samsung", option3: "Starbucks", option4: "Google", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo subway.jpg", level: 3, correct_answer: "Subway", option1: "Nike", option2: "Subway", option3: "Pizza Hut", option4: "Google", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo tmobile.jpg", level: 3, correct_answer: "Tmobile", option1: "Tmobile", option2: "Samsung", option3: "Pizza Hut", option4: "Google", question: "Name the animal shown in the picture?"},
{ category_id: logo.id, mediurl:"logo twitter.jpg", level: 3, correct_answer: "Twitter", option1: "Twitter", option2: "Samsung", option3: "Pizza Hut", option4: "Google", question: "Name the animal shown in the picture?"}

])