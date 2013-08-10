require 'spec_helper'

describe "Static pages" do

	let(:base_title) { "Missionary Support Network" }

	describe "Home page" do

		it "should have the content 'MSN Home'" do
			visit '/static_pages/home'
			expect(page).to have_content('MSN Home')
		end

		it "should have the base title" do
			visit '/static_pages/home'
			expect(page).to have_title("Missionary Support Network")
		end

		it "should not have a custom page title" do
			visit '/static_pages/home'
			expect(page).not_to have_title('| Home')
		end
	end

	describe "Help page" do

		it "should have the content 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_content('Help')
		end

		it "should have the right title" do
			visit '/static_pages/help'
			expect(page).to have_title("#{base_title} | Help")
		end
	end

	describe "About page" do

		it "should have the content 'AboutSN'" do
			visit '/static_pages/about'
			expect(page).to have_content('About MSN')
		end

		it "should have the right title" do
			visit '/static_pages/about'
			expect(page).to have_title("#{base_title} | About")
		end
	end
end
