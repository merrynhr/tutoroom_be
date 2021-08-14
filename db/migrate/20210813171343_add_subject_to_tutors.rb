class AddSubjectToTutors < ActiveRecord::Migration[6.1]
  def change
    add_column :tutors, :subject, :string
  end
end
