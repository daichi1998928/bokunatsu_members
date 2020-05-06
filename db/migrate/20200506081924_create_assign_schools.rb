class CreateAssignSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :assign_schools do |t|
      t.string :name
      t.timestamps
    end
  end
end
