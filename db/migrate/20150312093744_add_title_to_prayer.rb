class AddTitleToPrayer < ActiveRecord::Migration
  def change
    add_column :prayers, :title, :string
  end
end
