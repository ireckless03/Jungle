require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations for User' do

    it "validates presence of all fields" do
      @user = User.new
      expect(@user.valid?).to be false
      expect(@user.errors.full_messages).to include("First name can't be blank", "Last name can't be blank", "Email can't be blank", "Password can't be blank")
    end
    

  it "checks first name is entered" do
    @user = User.create(
    last_name: "Doan", 
    email: "denny@google.com", 
    password: 'light', 
    password_confirmation: 'light')
    expect(@user.errors[:first_name]).to include("can\'t be blank")
  end

  it "checks last name is entered" do
    params = {
      first_name: "Denny",
      email: 'Denny@google.com',
      password: 'light',
      password_confirmation: 'light',
    }
    @user = User.create(params)
    expect(@user.errors[:last_name]).to include("can\'t be blank")
  end

  it "checks email is entered" do
    params = {
      first_name: "Denny",
      last_name: "Doan",
      password: 'light',
      password_confirmation: 'light',
    }
    @user = User.create(params)
    expect(@user.errors[:email]).to include("can\'t be blank")
  end

  it "Checks password and confirmation match" do
    params = {
      first_name: "Denny",
      last_name: "Doan",
      email: 'Denny@google.com',
      password: 'light',
      password_confirmation: 'Light',
    }
    @user = User.create(params)
    expect(@user.errors[:password_confirmation]).to include("doesn't match Password")
  end

  it "validates password length" do
    @user = User.new(
      first_name: "Denny",
      last_name: "Doan",
      email: 'denny@google.com',
      password: 'li',
      password_confirmation: 'li'
    )
    expect(@user.valid?).to be false
    expect(@user.errors[:password]).to include("is too short (minimum is 6 characters)")
  end
  

  end
end

