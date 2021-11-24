
require_relative "question_data.rb"

class Users 
    attr_accessor :fname, :lname
    attr_reader :id 
    def initialize(user)
        @id = user[id] 
        @fname = user[fname]
        @lname = user[lname]
    end
    
    # User::find_by_name(fname, lname)
    def self.find_by_name(fname,lname)
        user = QuestionsDatabase.instance.execute(<<-SQL , fname , lname)
            SELECT 
                *
            FROM 
                users
            WHERE 
                fname = ? AND lname = ? 
        SQL
        return nil if user.nil? 
        # Users.new(user.first)
        user.map {|u| Users.new(u.first)}
    end

    # User#authored_questions
    def authored_questions
        Question.find_by_author_id(self.id)
    end

    #User#authored_replies
    def authored_replies
        Replies.find_by_user_id(self.id)
    end
    
    def self.find_by_id(id)
        user = QuestionsDatabase.instance.execute(<<-SQL,id)
            SELECT 
                *
            FROM 
                users 
            WHERE 
                id = ? 
        SQL
        return nil if user.nil? 
        # Users.new(user.first)
        user.map {|u| Users.new(u.first)}
    end

    # User#followed_questions One-liner calling QuestionFollow method.
    def followed_questions
        Question_follows.followed_questions_for_user_id(self.id)
    end

end