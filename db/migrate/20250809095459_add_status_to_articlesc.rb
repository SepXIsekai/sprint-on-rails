class AddStatusToArticlesc < ActiveRecord::Migration[8.0]
  def change
    add_column :articles, :status, :integer
  end
end
