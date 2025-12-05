class AddTitleToComics < ActiveRecord::Migration[8.1]
  def change
    add_column :comics, :title, :string
  end
end
