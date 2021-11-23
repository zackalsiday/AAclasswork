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
        Question_follows.new(question.first)
    end
end