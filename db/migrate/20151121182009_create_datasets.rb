class CreateDatasets < ActiveRecord::Migration
  def change
    create_table :datasets do |t|
      t.string :pubId
      t.string :privId
      t.string :name
      t.boolean :managed
      t.boolean :open

      t.timestamps null: false
    end
  end
end
