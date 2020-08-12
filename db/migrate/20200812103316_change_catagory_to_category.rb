class ChangeCatagoryToCategory < ActiveRecord::Migration[6.0]
  def change
    rename_column :restaurants, :catagory, :category
  end
end
