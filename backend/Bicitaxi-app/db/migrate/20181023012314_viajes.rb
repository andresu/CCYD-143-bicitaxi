class Viajes < ActiveRecord::Migration[5.2]
  def change
    create_table :viajes do |t|
      t.integer :id
      t.integer :valor
      t.integer :usuario_solicitante
      t.integer :usuario_bicitaxista
      t.text :fecha
      t.integer :puntaje

      t.timestamps
    end
  end
end
