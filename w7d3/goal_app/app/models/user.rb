class User < ApplicationRecord
    validates :username, :session_token, presence: true, uniqueness: true 
    validates :password_digest, presence: true
    validates :password, length: { minimum: 6, allow_nil: true }

    attr_reader :password 

    after_initialize :ensure_session_token 
    
def self.find_by_credentials(username, password)
    # finding a user depending on arguments provided 
    # verifying is password matches 
    #  returns user if found or nil if user not found
    # takes two args
    user = User.find_by(username: username)
    return nil if user.nil?
    user.is_password?(password) ? user : nil
    # this method is the method we wrote below
end






def is_password?(password)
#   verifys the password
#  takes in password arg
#  uses Bcrypt 
#  user Bcrypt new not create 
#  no recursion 
# we create a new Bcrypt::password object to give us access ITS OWN is_password? method
    BCrypt::Password.new(self.password_digest).is_password?(password)
end



def password=(password)
    # setting password 
    #  Uses Bcrypt 
    #  Uses Bcrypt create not new 
    #  takes one arg
    #  we use create because create is the Bcrypt method that will create the password digest. 
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  
end

def reset_session_token!
#   uses secure random to reset session token
# we want to save to database
# return session token
    self.session_token = SecureRandom::urlsafe_base64
    self.save!
    self.session_token
end

  private

def ensure_session_token
#   creates random session token or yeild to the one we already have
    self.session_token ||= SecureRandom.urlsafe_base64
end
end

