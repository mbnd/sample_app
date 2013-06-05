require 'spec_helper'

describe "UserPages" do
  describe "Signup Page" do #we are describing a home page, for develpr ref

		it "should have the content 'Signup' " do #quotes are not for rspec
			visit signup_path #capybara function "visit" to simulate visiting URI in browser
			page.should have_selector('h1', :text => 'Signup') #capybara 'page' var used to test that resulting page has right content
		end

		it "should have the title 'Home'" do
			visit signup_path #capybara function visit
			page.should have_selector('title', :text => "Signup")
		end
    
  end
end
