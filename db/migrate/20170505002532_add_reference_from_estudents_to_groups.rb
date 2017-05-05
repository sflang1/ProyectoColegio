class AddReferenceFromEstudentsToGroups < ActiveRecord::Migration[5.0]
  def change
    change_table :estudiantes do |t|
      t.references :grupo
    end
  end
end
