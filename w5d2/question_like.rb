require_relative 'question_data.rb'
class Question_like 
    attr_accessor :questions_id, :users_id
    attr_reader :id 
    def initialize(like)
        @id = like[id] 
        @questions_id = like[questions_id]
        @users_id = like[users_id]
    end
    
    
    
    def self.find_by_id(id)

        like = QuestionsDatabase.instance.execute(<<-SQL,id)
            SELECT 
                *
            FROM 
                question_like
            WHERE 
                id = ? 
        SQL
        return nil if like.nil?
        Question_like.new(like.first)
    end
end