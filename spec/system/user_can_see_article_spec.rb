require 'rails_helper'

describe 'User can see article' do
  context 'an article exists' do
    before do
      create(:article)
    end
    it "display article on page" do
      visit root_path
      expect(page).to have_content('Test Article Title')
    end
  end
end
