class AddReferenceTimesheets < ActiveRecord::Migration
  def change
    add_column :timesheets, :student_id, :string
    add_index :timesheets, :student_id
  end
end
