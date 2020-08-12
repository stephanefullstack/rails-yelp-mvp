class ChangeCategoryFromStringTypeToTextType < ActiveRecord::Migration[6.0]
  def change
    change_column :restaurants, :category, :text
  end
end
