class CreatePersons < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.boolean :admin
			t.integer :site_id

      t.timestamps null: false
    end
  end
end
