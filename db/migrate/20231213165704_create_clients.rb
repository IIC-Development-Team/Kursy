class CreateClients < ActiveRecord::Migration[7.1]
  def change
    create_table :clients do |t|
      t.string :browser
      t.string :os
      t.string :dev_type

      t.timestamps
    end
  end
end
