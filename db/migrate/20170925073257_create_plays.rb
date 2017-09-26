class CreatePlays < ActiveRecord::Migration[5.1]
  def change
    create_table :plays do |t|
      t.references :song, foreign_key: true
      t.integer :count
      t.date :play_date

      #t.timestamps
    end
  end
end
