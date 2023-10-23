class AddIndexOnUserEmail < ActiveRecord::Migration[6.1]
  def change
    add_index :users, %i[email company_id]
  end
end
