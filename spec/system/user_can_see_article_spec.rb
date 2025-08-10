require 'rails_helper'

describe 'User can see article' do
  it "display article on page" do
    visit root_path
    expect(page).to have_content('Sprint on Rails')
  end
end
