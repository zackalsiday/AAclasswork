
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
    
    # Question::find_by_author_id(author_id)
    def self.find_by_author_id(author_id)
        question = QuestionsDatabase.instance.execute(<<-SQL,author_id)
            SELECT 
                *
            FROM
                questions
            WHERE
                users_id = ?
        SQL
        return nil if question.nil?
        # Questions.new(question.first)
        question.map {|q| Questions.new(q.first)}
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
        # Questions.new(question.first)
        question.map {|q| Questions.new(q.first)}
    end


    # Question#author
    def author 
        Users.find_by_id(self.users_id)
    end

    def replies
        Replies.find_by_question_id(self.id)
    end

    # Question#followers
    def followers
        Question_follows.followers_for_question_id(self.id)
    end
end