require 'spec_helper'

describe "UserPages" do
	subject {page}

  describe "Signup Page" do #we are describing a home page, for develpr ref
  		before {visit signup_path}
		it { should have_selector('h1',    text: 'Signup') }
    	it { should have_selector('title', text: 'Signup') }
  end

  describe "profile page" do
  		let(:user) {FactoryGirl.create(:user)}
		before {visit user_path(user)}

		it {should have_selector('h1', text:user.name)}
		it {should have_selector('title', text:user.name)}
  end


  describe "Signup" do
    before {visit signup_path}

    let(:submit){"Create my account"}

    describe "with invalid info" do
      it "Should not create new user account" do
        expect {click_button submit}.not_to change(User, :count)
      end
    end

    describe "with valid info" do
      before do
        fill_in "Name", with: "Example User"
        fill_in "Email", with: "user@example.com"
        fill_in "Password", with: "foobar"
        fill_in "Confirmation", with: "foobar"
      end  

      it "Should create new user account" do
        expect {click_button submit}.to change(User, :count).by(1)
      end
    end
  end
end

