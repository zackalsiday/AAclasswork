
require_relative "question_data.rb"
class Questions 
    attr_accessor :title, :body, :users_id
    attr_reader :id 
    def initialize(question)
        @id = question[id] 
        @title = question[title]
        @body = question[body]
        @users_id = question[users_id]
    end
    
    
    
    def self.find_by_id(id)

        question = QuestionsDatabase.instance.execute(<<-SQL,id)
            SELECT 
                *
            FROM 
                questions
            WHERE 
                id = ? 
        SQL
        return nil if question.nil?
        Questions.new(question.first)
    end
end