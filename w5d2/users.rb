
require_relative "question_data.rb"

class Users 
    attr_accessor :fname, :lname
    attr_reader :id 
    def initialize(user)
        @id = user[id] 
        @fname = user[fname]
        @lname = user[lname]
    end
    
    
    
    def self.find_by_id(id)

        user = QuestionsDatabase.instance.execute(<<-SQL,id)
            SELECT 
                users.*
            FROM 
                users 
            WHERE 
                id = ? 
        SQL
        if user.nil? 
            return nil 
        else 
        Users.new(user.first)
        end
    end
end