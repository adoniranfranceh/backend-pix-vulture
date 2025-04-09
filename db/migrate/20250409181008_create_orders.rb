# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.string :value
      t.integer :user_id
      t.timestamps
    end
  end
end
