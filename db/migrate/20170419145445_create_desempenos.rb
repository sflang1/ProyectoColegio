class CreateDesempenos < ActiveRecord::Migration[5.0]
  def change
    create_table :desempenos do |t|
      t.string :titulo
      t.text :descripcion

      t.timestamps
    end
  end
end
