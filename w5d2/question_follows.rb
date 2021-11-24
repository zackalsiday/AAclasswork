require_relative "question_data.rb" 

class Question_follows 
    attr_accessor :questions_id, :users_id
    attr_reader :id 
    def initialize(question)
        @id = question[id] 
        @questions_id = question[questions_id]
 
        @users_id = question[users_id]
    end
    
    
    
    def self.find_by_id(id)
        question = QuestionsDatabase.instance.execute(<<-SQL,id)
            SELECT 
                *
            FROM 
                question_follows
            WHERE 
                id = ? 
        SQL
        return nil if question.nil?
        # Question_follows.new(question.first)
        question.map {|q| Question_follows.new(q.first)}
    end

    # QuestionFollow::followers_for_question_id(question_id) This will return an array of User objects!
    def self.followers_for_question_id(question_id)
        question = QuestionsDatabase.instance.execute(<<-SQL,question_id)
            SELECT 
                *
            FROM 
                question_follows
            JOIN
                users ON question_follows.users_id = users.id
            WHERE 
                users.id = ?
        SQL
        return nil if question.nil?
        # Question_follows.new(question.first)
        question.map {|q| Question_follows.new(q.first)}
    end


    # QuestionFollow::followed_questions_for_user_id(user_id)
    def self.followed_questions_for_user_id(user_id)
        question = QuestionsDatabase.instance.execute(<<-SQL,user_id)
        SELECT 
            *
        FROM 
            question_follows
        JOIN
            questions ON question_follows.questions_id = question.id
        WHERE 
            questions.id = ?
        SQL
        return nil if question.nil?
        # Question_follows.new(question.first)
        question.map {|q| Question_follows.new(q.first)}
    end
end