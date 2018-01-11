class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.integer :age
      t.string :next_of_kin, null:false
      t.timestamps
    end
  end
end
