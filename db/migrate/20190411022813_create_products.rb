class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :code
      t.string :name
      t.string :price
      t.string :image_url
      t.text :description

      t.timestamps
    end
  end
end
