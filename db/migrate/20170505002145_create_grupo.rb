class CreateGrupo < ActiveRecord::Migration[5.0]
  def change
    create_table :grupos do |t|
      t.string      :nombre
      t.references  :grado
    end
  end
end
