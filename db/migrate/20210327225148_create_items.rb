class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :size

      t.timestamps
    end
  end
end
