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
    
    # Reply::find_by_user_id(user_id)
    def self.find_by_user_id(user_id)
        reply = QuestionsDatabase.instance.execute(<<-SQL , user_id)
        SELECT
            *
        FROM
            replies
        WHERE 
            users_id = ?  
        SQL
        return nil if reply.nil?
        # Replies.new(reply.first)
        reply.map {|r| Replies.new(r.first)}
    end

    # Reply::find_by_question_id(question_id)
    def self.find_by_question_id(question_id)
        reply = QuestionsDatabase.instance.execute(<<-SQL , question_id)
        SELECT
            *
        FROM
            replies
        WHERE 
            question_id = ?  
        SQL
        return nil if reply.nil?
        # Replies.new(reply.first)
        reply.map {|r| Replies.new(r.first)}
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
        # Replies.new(reply.first)
        reply.map {|r| Replies.new(r.first)}
    end

    # Reply#author
    def author
        Users.find_by_id(self.users_id)
    end

    # Reply#question
    def question
        Questions.find_by_id(self.questions_id)
    end

    # Reply#parent_reply
    def parent_reply
        Replies.find(self.replies_id)
    end

    # self.find by parent id 
    #select all replies where reply id = parent reply id 


    def self.find_by_parent_id(parent_id)
        reply = QuestionsDatabase.execute(<<-SQL, parent_reply_id: parent_id)
          SELECT
            *
          FROM
            replies
          WHERE
            replies_id = :parent_reply_id
        SQL
    
        reply.map { |r| Reply.new(r) }
    end
      
    def child_replies
        Reply.find_by_parent_id(id)
    end
    
end