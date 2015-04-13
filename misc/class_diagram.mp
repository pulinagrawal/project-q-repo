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
        "category_id: integer"
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

    %classStereotypes.Part("<<Object>>");
    %classStereotypes.ILSPart("<<Object>>", "<<Part>>");
    
    leftToRight(30)(Category, Profile, Question, Quiz);
    
    drawObjects(Category, Profile, Question, Quiz);

    %clink(inheritance)(ILSPart, Part);
endfig;


end
