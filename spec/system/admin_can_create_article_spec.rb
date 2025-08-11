require 'rails_helper'

RSpec.describe 'Admin can create article', type: :system do
  it 'allows admin to create an article' do
    login_as_admin
    
    visit new_admin_article_path
    
    fill_in 'Description', with: 'Test description'
    click_button 'Save as Draft'
    
    expect(page).to have_content('Article was successfully created')
  end
end