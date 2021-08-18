class ChangeUsernameToFullnameOnUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column(:users, :username, :fullname )
  end
end
