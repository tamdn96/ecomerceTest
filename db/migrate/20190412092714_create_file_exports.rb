class CreateFileExports < ActiveRecord::Migration[5.2]
  def change
    create_table :file_exports do |t|
      t.string :file
      t.text :description

      t.timestamps
    end
  end
end
