require 'spec_helper'

describe "StaticPages" do

	describe "Home Page" do #we are describing a home page, for develpr ref

		it "should have the content 'Sample App' " do #quotes are not for rspec
			visit '/static_pages/home' #capybara function "visit" to simulate visiting URI in browser
			page.should have_selector('h1', :text => 'Sample App') #capybara 'page' var used to test that resulting page has right content
		end

		it "should have the title 'Home'" do
			visit '/static_pages/home' #capybara function visit
			page.should have_selector('title', :text => "Ruby on Rails")
		end

		it "should not have a custom page title" do
      		visit '/static_pages/home'
      		page.should_not have_selector('title', :text => '| Home')
    	end
  

	end

	describe "Help page" do

		it "should have the content 'Help page' " do
			visit '/static_pages/help' #capybara function visit to simulate going to page through browser
			page.should have_selector('h1', :text=> 'Help')
		end

		it "should have title 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('title', :text=> "Ruby on Rails | Help")
		end
	end

	describe "About page" do

		it "should have content 'About page' " do
			visit '/static_pages/about' #capybara function visit to simulate action
			page.should have_selector('h1', :text=> 'About')
		end

		it "should have title 'About'" do
			visit '/static_pages/about'
			page.should have_selector('title', :text=> "Ruby on Rails | About")
		end


	end

		describe "Contact page" do

		it "should have content 'Contact page' " do
			visit '/static_pages/contact' #capybara function visit to simulate action
			page.should have_selector('h1', :text=> 'Contact')
		end

		it "should have title 'Contact'" do
			visit '/static_pages/contact'
			page.should have_selector('title', :text=> "Ruby on Rails | Contact")
		end


	end



end





