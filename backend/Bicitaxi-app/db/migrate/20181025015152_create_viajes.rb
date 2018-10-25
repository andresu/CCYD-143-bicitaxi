class CreateViajes < ActiveRecord::Migration[5.2]
  def change
    create_table :viajes do |t|
      t.integer :id_viaje
      t.integer :valor
      t.integer :usuario_solicitante
      t.integer :usuario_bicitaxista
      t.date :fecha_viaje
      t.integer :puntaje

      t.timestamps
    end
  end
end
