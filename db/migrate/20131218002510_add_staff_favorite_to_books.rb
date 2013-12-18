class AddStaffFavoriteToBooks < ActiveRecord::Migration
  def up
    add_column :books, :staff_favorite, :boolean, default: true
  end
  def down
    remove_column :books, :staff_favorite
  end
end
