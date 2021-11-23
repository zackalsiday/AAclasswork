require_relative "question_data.rb"
 class Replies
    attr_accessor :questions_id, :replies_id, :users_id
    attr_reader :id 
    def initialize(reply)
        @id = reply[id] 
        @questions_id = reply[questions_id]
        @replies_id = reply[replies_id]
        @users_id = reply[users_id]
    end
    
    
    
    def self.find_by_id(id)

        reply = QuestionsDatabase.instance.execute(<<-SQL,id)
            SELECT 
                *
            FROM 
                replies
            WHERE 
                id = ? 
        SQL
        return nil if reply.nil?
        Replies.new(reply.first)
    end
end