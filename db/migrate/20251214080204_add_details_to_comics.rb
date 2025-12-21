class AddDetailsToComics < ActiveRecord::Migration[8.1]
  def change
    add_column :comics, :issue, :integer
    add_column :comics, :published, :date
    add_column :comics, :price, :decimal
  end
end
