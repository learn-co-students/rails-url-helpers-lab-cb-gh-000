class AddActiveToStudents < ActiveRecord::Migration
  def change
    add_column :students, :active, :boolean, default: false
    # change_column_default :students, :active, from: null, to: true
  end
end
