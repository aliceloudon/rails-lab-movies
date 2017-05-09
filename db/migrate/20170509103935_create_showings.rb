class CreateShowings < ActiveRecord::Migration
  def change
    create_table :showings do |t|
      t.datetime :time
      t.references :movie, index: true, foreign_key: true
      t.references :cinema, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
