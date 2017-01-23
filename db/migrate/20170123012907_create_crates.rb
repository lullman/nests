class CreateCrates < ActiveRecord::Migration
  def change
    create_table :crates do |t|
      t.string :crate_name

      t.timestamps
    end
  end
end
