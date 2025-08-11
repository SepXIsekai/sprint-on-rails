require 'rails_helper'

RSpec.describe 'Admin can approve article', type: :system do
  it 'allows admin to approve an article' do
    login_as_admin

    # Create an article in waiting for review status
    article = create(:article, :waiting_for_review)

    visit admin_article_path(article)

    # Click the Edit Article link
    click_link 'Edit Article'

    expect(page).to have_button('Approve')
    expect(page).to have_button('Reject')
    click_button 'Approve'

    expect(page).to have_content('Article was successfully updated')
    expect(page).to have_content('Published')
  end
end
