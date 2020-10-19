require 'rails_helper'

RSpec.describe 'Food Search' do
  describe 'As a user, when I visit /, and fill in the search with sweet potatoes, click search, I should be on /foods, I see' do
    it 'the total number of items returned for the search' do
      visit('/')
      fill_in :q, with: 'sweet potatoes'
      click_button('Search')

      expect(current_path).to eq('/foods')
    end

    it 'A list of ten foods that contain the ingredients sweet potatoes' do

    end

    it 'For each food, their GTIN code, description, brand owner, and ingredents' do

    end
  end
end
