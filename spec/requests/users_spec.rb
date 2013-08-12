require 'spec_helper'

describe "Users" do

  subject {page}
  
  describe "SignUp page" do
  	before {visit signup_path}
    it {should have_content('User#new')}
    it {should have_title('SignUp')}
  end

end
