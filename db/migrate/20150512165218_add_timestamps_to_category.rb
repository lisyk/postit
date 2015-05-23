class AddTimestampsToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :timestamps, :datetime
  end
end
