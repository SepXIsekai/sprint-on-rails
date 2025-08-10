require 'rails_helper'

describe 'User can see article' do
  context 'an article exists' do
    before do
      create(:comment)
    end
    it "display created comment on the page" do
      visit root_path
      fill_in 'comment[description]', with: 'hi there'
    end
  end
end
