class CreateComics < ActiveRecord::Migration[8.1]
  def change
    create_table :Comics do |t|
      t.string :series

      t.timestamps
    end
  end
end
