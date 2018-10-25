class CreateAgremiacions < ActiveRecord::Migration[5.2]
  def change
    create_table :agremiacions do |t|
      t.integer :id_agremiacion
      t.string :nombre_agremiacion
      t.string :telefono
      t.string :email

      t.timestamps
    end
  end
end
