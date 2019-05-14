class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :ASIN
      t.string :price
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
