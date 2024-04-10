class CreateMusicians < ActiveRecord::Migration[7.0]
  def change
    create_table :musicians do |t|
      t.string :name
      t.string :image
      t.integer :user_id
      t.date :dateofbirth

      t.timestamps
    end
  end
end
