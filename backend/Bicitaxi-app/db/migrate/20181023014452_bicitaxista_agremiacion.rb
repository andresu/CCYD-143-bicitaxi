class BicitaxistaAgremiacion < ActiveRecord::Migration[5.2]
  def change
    create_table :bicitaxista_agremiacion do |t|
      t.integer :id_bicitaxista_agremiacion
      t.integer :id_usuario
      t.integer :id_agremiacion

      t.timestamps
    end
  end
end
