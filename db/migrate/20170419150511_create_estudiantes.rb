class CreateEstudiantes < ActiveRecord::Migration[5.0]
  def change
    create_table :estudiantes do |t|
      t.string :nombres
      t.string :apellidos
      t.float :nota
      t.integer :faltas
      t.references :desempeno, index: true, foreign_key: true
      t.timestamps
    end
  end
end
