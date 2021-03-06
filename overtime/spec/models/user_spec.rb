require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = User.create(
      email: "test@test.com", 
      password: "aaaaaa", 
      password_confirmation: "aaaaaa",
      first_name: "Jon",
      last_name: "Snow"
    ) 
  end
  describe "creation" do
    it "can be created" do
      expect(@user).to be_valid
    end

    it "cannot be created without first_name, last_name" do 
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to_not be_valid
    end
  end
end
