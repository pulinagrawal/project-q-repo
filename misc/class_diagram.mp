input metauml;

%Class diagram
%"+" for public, "#" for protected and "−" for private
beginfig(1);
    Class.Category(
        "Category"
    ) (
        "category_name: string"
    ) (
    );
    
    Class.Profile(
        "Profile"
    ) (
        "first_name: string",
        "last_name: string",
        "birthday: date",
        "password: string",
        "email: string",
        "reward_amount: integer"
        
    ) (
    );
    
    Class.Question(
        "Question"
    ) (
        "level: integer",
        "correct_answer: string",
        "option1: string",
        "option2: string",
        "option3: string",
        "option4: string",
        "question: string",
        "category_id: integer",
        "quiz_id: integer",
        "category: string",
        "mediaurl: string"
    ) (
    );
    
    Class.Quiz(
        "Quiz"
    ) (
        "profile_id: integer",
        "end_date: date",
        "start_date: date",
        "correct1: boolean",
        "correct2: boolean",
        "correct3: boolean",
        "correct4: boolean",
        "correct5: boolean",
        "question1: integer",
        "question2: integer",
        "question3: integer",
        "question4: integer",
        "question5: integer"
    ) (
    );
    
    Profile.w = Category.e + (100, 0);
    Question.n = Category.s - (0, 200);
    Quiz.midy = Question.midy;
    Quiz.midx = Profile.midx;
    
    drawObjects(Category, Profile, Question, Quiz);
    
    clink(association)(Category, Question);
    item(iAssoc)("belongs to")(obj.w = .5[Category.s, Question.n]);
    item(iAssoc)("1")(obj.ne = Category.s);
    item(iAssoc)("0..*")(obj.se = Question.n);
    
    clink(association)(Question, Quiz);
    item(iAssoc)("displayed by")(obj.n = .5[Question.e, Quiz.w]);
    item(iAssoc)("0..5")(obj.sw = Question.e);
    item(iAssoc)("1")(obj.se = Quiz.w);
    
    clink(association)(Quiz, Profile);
    item(iAssoc)("shown to")(obj.w = .5[Profile.s, Quiz.n]);
    item(iAssoc)("1")(obj.ne = Profile.s);
    item(iAssoc)("0..*")(obj.se = Quiz.n);
endfig;


end
