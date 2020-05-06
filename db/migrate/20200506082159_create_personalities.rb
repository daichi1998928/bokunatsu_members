class CreatePersonalities < ActiveRecord::Migration[5.2]
  def change
    create_table :personalities do |t|
      t.integer :member_id
      t.string :content_name
      t.timestamps
    end
  end
end
