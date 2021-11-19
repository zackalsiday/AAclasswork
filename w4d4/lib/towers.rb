
class Tower

    attr_accessor :board

    def initialize
        @board = [[4,2,3,1],[],[]]
    end

    def response 
        p "Which pile do you want to move from?"
        start_pos = gets.chomp 
        start_pos = start_pos.to_i 
        p "Which pile do you want to move to?"
        end_pos = gets.chomp
        end_pos = end_pos.to_i
        return [start_pos,end_pos]
    end

    def move
        until false 
            takeinput = response
            start_pos = takeinput[0]
            end_pos = takeinput[1]
            take = self.board[start_pos].pop
            drop = self.board[end_pos] << take
            board
        end
        return "you won!"
    end

    








end

