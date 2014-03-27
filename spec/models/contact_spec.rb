require 'spec_helper'

describe Contact do
	let (:valid_attrs){ {
			email: 'jansen@gmail.com',
			first_name: 'Julissa',
			last_name: "Morales",
			description: "I'm a unicorn",
			subject: "hey, have you heard about unicorns?"
			} }
  describe 'validation' do
  	context "when given valid attributes" do
  		it "is valid" do
  			contact = Contact.new(valid_attrs)
  		end
    end
  end

  it 'requires an email' do
		contact = Contact.new(valid_attrs.merge(email:''))
    expect(contact).to_not be_valid
		expect(contact.errors[:email]).to include "can't be blank"
	end

	it 'requires first name' do
		contact = Contact.new(valid_attrs.merge(first_name: ''))
    expect(contact).to_not be_valid
		expect(contact.errors[:first_name]).to include "can't be blank"
	end

	it 'requires last name' do
		contact = Contact.new(valid_attrs.merge(last_name: ''))
    expect(contact).to_not be_valid
		expect(contact.errors[:last_name]).to include "can't be blank"
	end

	it 'subject' do
		contact = Contact.new(valid_attrs.merge(subject: ''))
    expect(contact).to_not be_valid
		expect(contact.errors[:subject]).to include "can't be blank"
	end

	it 'description' do
		contact = Contact.new(valid_attrs.merge(description: ''))
    expect(contact).to_not be_valid
		expect(contact.errors[:description]).to include "can't be blank"
	end






end

