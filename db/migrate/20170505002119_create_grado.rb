class CreateGrado < ActiveRecord::Migration[5.0]
  def change
    create_table :grados do |t|
      t.string    :nombre
    end
  end
end
