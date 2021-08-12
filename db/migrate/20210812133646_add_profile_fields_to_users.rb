class AddProfileFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :teacher, :boolean
    add_column :users, :subject, :string
  end
end
