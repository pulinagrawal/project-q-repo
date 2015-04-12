

mo = Profile.create({ first_name: 'Mohammad', last_name: 'Shamim', birthday: Date.new(1989,1,1), password: "password", email: "mfshamim@memphis.edu", reward_amount: 0})
Craig = Profile.create({first_name: 'Craig', last_name: 'Kelly', birthday: Date.new(1989,1,1), password: "password", email: "cnkelly@memphis.edu", reward_amount: 0})
Pulin = Profile.create({first_name: 'Pulin', last_name: 'Agrawal', birthday: Date.new(1989,1,1), password: "password", email: "pagrawal@memphis.edu", reward_amount: 0})
Soujanya = Profile.create({first_name: 'Soujanya', last_name: 'Chatterjee', birthday: Date.new(1989,1,1), password: "password", email: "schttrj1@memphis.edu", reward_amount: 0})
Tadael = Profile.create({first_name: 'Tadael', last_name: 'Fekede', birthday: Date.new(1989,1,1), password: "password", email: "tadaelkoye@gmail.com", reward_amount: 0})

math = Category.create({category_name: "Mathematics"})
history = Category.create({category_name: "History"})
geography = Category.create({category_name: "Geography"})
sport = Category.create({category_name: "Sport"})

math_questions = Question.create([
    { category_id: math.id, level: 1, correct_answer: "11", option1: "11", option2: "2", option3: "3", option4: "4", question: "What is 10 + 1?"  },
    { category_id: math.id, level: 1, correct_answer: "1300", option1: "13000", option2: "13", option3: "130", option4: "1300", question: "What is 100 * 13?"  },
    { category_id: math.id, level: 1, correct_answer: "16", option1: "14", option2: "144", option3: "1", option4: "16", question: "What is (12 / 3) * 4?" },
    { category_id: math.id, level: 1, correct_answer: "1", option1: "5", option2: "2", option3: "1", option4: "16", question: "What is 12 / (3 * 4)?"  },
    { category_id: math.id, level: 1, correct_answer: "50", option1: "25", option2: "50", option3: "100", option4: "150", question: "What is 0.5 * 100?" }
])

history_questions = Question.create([
	{category_id: history.id, level: 1, correct_answer: "George Washington", option1: "John Adams", option2: "George Washington", option3: "Andrew Jackson", option4: "Thomas Jefferson", question: "Who was the first President of the United States?"},
	{category_id: history.id, level: 1, correct_answer: "The American Civil War", option1: "War of 1812", option2: "World War I", option3: "The American Civil War", option4: "The Revolutionary War ", question: "What war was fought on American soil from 1861 to 1865?"},
	{category_id: history.id, level: 1, correct_answer: " Abraham Lincoln", option1: " Abraham Lincoln", option2: "Ulysses S. Grant", option3: "James Buchanan", option4: "Andrew Johnson", question: "Who was the 16th president of the US?"},
	{category_id: history.id, level: 1, correct_answer: "The Democrats", option1: "The Democrats", option2: "The Federalists", option3: "The Progressives", option4: "The Independants", question: "Today in the United States government there are two major political parties.  The Republicians are one of the parties who is the other party?"},
	{category_id: history.id, level: 1, correct_answer: "Franklin D. Roosevelt", option1: "Dwight Eisenhower", option2: "Franklin D. Roosevelt", option3: "Herbert Hoover", option4: "Harry Truman ", question: "Who was the president from 1933 to 1945,  the only president to serve more than 8 years in office?"}
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
Quiz.create({
    username: mo,
    start_date: Date.new(1989,1,1),
    end_date: Date.new(1989,1,1),
    question1: math_questions[0].id, correct1: true,
    question2: math_questions[1].id, correct2: false,
    question3: math_questions[2].id, correct3: true,
    question4: math_questions[3].id, correct4: nil,
    question5: math_questions[4].id, correct5: nil,
})

Quiz.create({
    username: mo,
    start_date: Date.new(1989,1,1),
    end_date: Date.new(1989,1,1),
    question1: history_questions[0].id, correct1: true,
    question2: history_questions[1].id, correct2: false,
    question3: history_questions[2].id, correct3: true,
    question4: history_questions[3].id, correct4: nil,
    question5: history_questions[4].id, correct5: nil,
})

Quiz.create({
    username: mo,
    start_date: Date.new(1989,1,1),
    end_date: Date.new(1989,1,1),
    question1: geography_questions[0].id, correct1: true,
    question2: geography_questions[1].id, correct2: false,
    question3: geography_questions[2].id, correct3: true,
    question4: geography_questions[3].id, correct4: nil,
    question5: geography_questions[4].id, correct5: nil,
})
