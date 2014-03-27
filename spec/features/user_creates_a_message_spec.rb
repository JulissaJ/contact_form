require 'spec_helper'

	feature "User want to contact site's staff", %q{As a site visitor
	I want to contact the site's staff
	So that I can tell them how awesome they are} do 

	# 	Acceptance Criteria:

	# I must specify a valid email address
	# I must specify a subject
	# I must specify a description
	# I must specify a first name
	# I must specify a last name


	context "with valid attributes do" do
		it 'creates contact information' do
			visit '/contacts/new'

			fill_in "Email", with: "julissa.jansen@gmail.com"
			fill_in "Subject", with: "subject"
			fill_in "Description", with: "wow, what an e-mail!"
			fill_in "First name", with: "Julissa"
			fill_in "Last name", with: "Jansen-Morales"
			click_on "Create Contact"

			expect(page).to have_content "Contact was successfully created"
	end
end

	context "with invalid attributes" do 
		it "sees errors for invalid attributes" do
			visit '/contacts/new'

			click_on "Create Contact"

			expect(page).to have_content "Email can't be blank"
			expect(page).to have_content "Subject can't be blank"
			expect(page).to have_content "Description can't be blank"
			expect(page).to have_content "First name can't be blank"
			expect(page).to have_content "Last name can't be blank"
		end

		it "sees errors for invalid email" do
			visit '/contacts/new' 
			fill_in "Email", with: "julissa"
			fill_in "Subject", with: "subject"
			fill_in "Description", with: "wow, what an e-mail!"
			fill_in "First name", with: "Julissa"
			fill_in "Last name", with: "Jansen-Morales"
			
			click_on "Create Contact"

			expect(page).to have_content "Email is invalid"
		end
	end
		
end

	




