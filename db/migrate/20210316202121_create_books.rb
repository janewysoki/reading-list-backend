class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.integer :reading_list_id
      t.string :title
      t.string :author
      t.text :comments
      t.text :summary

      t.timestamps
    end
  end
end
