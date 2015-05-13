class RemoveTimestampsFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :timestamps
  end
end
