class Mig2 < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.string :login
      t.datetime :when_return
      t.datetime :when_get
      t.timestamps
    end
  end
end
