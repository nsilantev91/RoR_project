class Init < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.integer :id_book
      t.integer :available_count
      t.integer :year_of_publish
      t.timestamps
    end
  end
end
