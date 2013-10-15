require 'spec_helper'

describe User do
   before { @user = User.new(name: "test", email: "test@126.com")}
   subject {@user}
   it {should respond_to(:name)}
   it {should respond_to(:email)}

   it {should be_valid}

   describe "when name is not present" do
   		before {@user.name = " "}
   		it {should_not be_valid}
   end   	

   describe "when email is not present" do
   	   before {@user.email=""}
   	   it {should_not be_valid}
    end

    describe "when user length is more than 50" do
    	before {@user.name = "a"*51}
    	it {should_not be_valid}
    end

    describe "when email is invalid" do
    	it "should be invalid" do
	    	emails = %w[foo,bar test1@test hello 1test@test.com]
	    	emails.each do |email|
	    		@user.email = email
	    		expect(@user).to_not be_valid
	    	end
	    end
    end

    describe "when email is valid" do
    	it "should be valid" do
	    	emails = %w[doris@test.com hello@test.com daniel@126.com]
	    	emails.each do |email|
	    		@user.email = email
	    		expect(@user).to be_valid
	    	end
	    end
    end
end
