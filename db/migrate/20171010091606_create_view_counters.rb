class CreateViewCounters < ActiveRecord::Migration[5.1]
  def change
    create_table :view_counters do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
