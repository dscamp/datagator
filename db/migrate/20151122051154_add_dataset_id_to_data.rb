class AddDatasetIdToData < ActiveRecord::Migration
  def change
    add_column :data, :dataset_id, :integer
  end
end
