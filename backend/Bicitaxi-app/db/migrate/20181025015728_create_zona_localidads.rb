class CreateZonaLocalidads < ActiveRecord::Migration[5.2]
  def change
    create_table :zona_localidads do |t|
      t.integer :id_zona_localidad
      t.string :zona
      t.string :localidad

      t.timestamps
    end
  end
end
