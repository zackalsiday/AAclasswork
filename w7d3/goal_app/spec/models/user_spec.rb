require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:username) } 
  it { should validate_presence_of(:session_token)}
  it { should validate_presence_of(:password_digest)}
  
  describe "uniqueness" do 
    before :each do 
      FactoryBot.create(:user)
    end

    it { should validate_uniqueness_of(:session_token)}
    it { should validate_uniqueness_of(:username)}

  end
  
  it {should validate_length_of(:password).is_at_least(6)}

   describe 'finds users by credentials' do
    
    let!(:user) { FactoryBot.create(:user, username: "Zack")}
    context 'with a valid username and password' do
      it 'should return the proper user' do
       
        user = User.find_by(username: "Zack")

        expect(user.username).to eq("Zack")
        # expect(sally.password_digest).to eq(user.password_digest)
      end
    end

    context 'with an invalid username and password' do
      it 'should return nil' do
        user = User.find_by(username: "Michelle")
        expect(user).to be_nil
      end
    end
  end

  describe "is_password?" do 
    let!(:user) { FactoryBot.create(:user)}
    context "with a valid password" do 
      it "should return true" do 
        expect(user.is_password?("password")).to be true 
      end
    end
    context "with invalid password" do 
      it "should return false "do  
        expect(user.is_password?("PASSWORD")).to be false 
      end
    end
  end

  describe "password=" do 
    
  end
end




  