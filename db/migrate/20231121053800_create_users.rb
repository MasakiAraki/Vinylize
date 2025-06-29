# frozen_string_literal: true

# This migration creates the users table.
class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :phone

      t.timestamps
    end
  end
end
