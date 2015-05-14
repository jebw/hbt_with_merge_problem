class CreateViewings < ActiveRecord::Migration
  def change
    create_table :viewings do |t|
      t.references :person, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true
			t.integer :site_id

      t.timestamps null: false
    end
  end
end
