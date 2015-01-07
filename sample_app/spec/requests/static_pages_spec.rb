require 'rails_helper'

RSpec.describe "StaticPages", :type => :request do

  let(:base_title) {"Ruby on Rails Tutorial Sample App"}

  describe 'Home page' do
    it "shoud have  the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the title 'Home'" do
      visit 'static_pages/home'
      expect(page).to have_title(base_title+' | Home')
    end
  end

  describe 'Help page' do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "shoud have the title 'Help'" do
      visit 'static_pages/help'
      expect(page).to have_title(base_title+' | Help')
    end
  end

  describe 'About page' do
    it "shoud have the content 'About Us'" do
      visit 'static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit 'static_pages/about'
      expect(page).to have_title(base_title+' | About Us')
    end
  end

  describe 'Contact page' do
    it 'contact title' do
      visit 'static_pages/contact'
      expect(page).to have_title(base_title+' | Contact')
    end
  end
end
