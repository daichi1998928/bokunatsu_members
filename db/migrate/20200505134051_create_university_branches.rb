class CreateUniversityBranches < ActiveRecord::Migration[5.2]
  def change
    create_table :university_branches do |t|
      t.string :name
      t.text :twitter_link
      t.timestamps
    end
  end
end
