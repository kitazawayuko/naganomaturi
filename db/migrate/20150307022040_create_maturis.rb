class CreateMaturis < ActiveRecord::Migration
  def change
    create_table :maturis do |t|
      t.string :taitoru
      t.string :city
      t.text :naiyou
      t.string :toukou
      t.string :foto
      t.datetime :nitiji

      t.timestamps null: false
    end
  end
end
