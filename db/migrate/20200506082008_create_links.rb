class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.integer :member_id
      t.string :name
      t.text :url
      t.boolean :is_bokunatsu
      t.timestamps
    end
  end
end
