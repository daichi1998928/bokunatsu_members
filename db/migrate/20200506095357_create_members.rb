class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.integer :title_of_branch_id
      t.integer :university_id
      t.integer :grade_id
      t.integer :assign_school_id
      t.string :name
      t.string :name_kana
      t.string :profile_image_id
      t.string :nickname
      t.string :faculty
      t.text   :history
      t.text   :deciding_factor
      t.text :objective
      t.text :episode
      t.timestamps
    end
  end
end
