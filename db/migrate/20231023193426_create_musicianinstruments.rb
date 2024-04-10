class CreateMusicianinstruments < ActiveRecord::Migration[7.0]
  def change
    create_table :musicianinstruments do |t|
      t.integer :musician_id
      t.integer :musicalinstrument_id

      t.timestamps
    end
  end
end
