class CreateBranchesMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :branches_members do |t|
      t.integer :university_branch_id
      t.integer :member_id
      t.timestamps
    end
  end
end
