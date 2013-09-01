class AddAvgCostToParams < ActiveRecord::Migration
  def change
    add_column :params, :avg_cost, :integer
  end
end
