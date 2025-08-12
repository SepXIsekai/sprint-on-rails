require 'rails_helper'

RSpec.describe 'Admin can delete article', type: :system do
  it 'allows admin to delete an article' do
    login_as_admin

    # Create an article first
    article = create(:article)

    visit admin_article_path(article)
    sleep 2
    click_button 'Delete'

    sleep 2
    expect(page).to have_current_path(admin_articles_path)
    expect(page).not_to have_content(article.content.title)
  end
end
