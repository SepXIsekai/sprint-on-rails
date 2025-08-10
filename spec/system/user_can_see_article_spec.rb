require 'rails_helper'

describe 'User can see article' do
  context 'an article exists' do
    before do
      Article.create(
        description: "a brief description of the article",
        content_attributes: {
          title: 'Sprint on Rails'
        }
      )
    end
  it "display article on page" do
    visit root_path
    expect(page).to have_content('Sprint on Rails')
    save_and_open_page
  end
  end
end
