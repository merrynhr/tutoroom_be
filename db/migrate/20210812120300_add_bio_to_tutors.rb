class AddBioToTutors < ActiveRecord::Migration[6.1]
  def change
    add_column :tutors, :bio, :text
  end
end
