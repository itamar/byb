class AddActiveToKeywords < ActiveRecord::Migration
  def change
    add_column :keywords, :active, :boolean, :default => true
  end
end
