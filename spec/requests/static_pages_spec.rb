require 'spec_helper'

describe "StaticPages" do
  subject {page}
  
  describe "home page" do
    before {visit root_path}
    it {should have_content('sample app')}
    it {should have_title('Doris Blog | home')}
  end

  describe "help page" do
    before {visit help_path}
    it {should have_content('Doris help page')}
    it {should have_title('Doris Blog | help')}
  end

  describe "aboutme page" do
    before {visit aboutme_path}
    it {should have_content('Doris aboutme page')}
    it {should have_title('Doris Blog | aboutme')}
  end

end
