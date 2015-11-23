class CreateData < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.text :row
      t.boolean :approved
      t.string :submitterIP

      t.timestamps null: false
    end
  end
end
