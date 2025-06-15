class CreateVinyls < ActiveRecord::Migration[7.1]
  def change
    create_table :vinyls do |t|
      t.references :user, null: false, foreign_key: true
      t.references :artist, null: false, foreign_key: true
      t.references :genre, foreign_key: true
      t.string :title
      t.string :catalog_no
      t.string :label
      t.string :country
      t.string :year
      t.string :notes
      t.string :comment

      t.timestamps
    end
  end
end
