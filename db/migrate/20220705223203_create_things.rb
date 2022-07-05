class CreateThings < ActiveRecord::Migration[7.0]
  def change
    create_table :things do |t|
      t.string :title
      t.integer :year
      t.text :plot

      t.timestamps
    end
  end
end
