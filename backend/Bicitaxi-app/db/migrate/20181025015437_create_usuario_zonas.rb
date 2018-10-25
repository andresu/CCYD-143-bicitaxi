class CreateUsuarioZonas < ActiveRecord::Migration[5.2]
  def change
    create_table :usuario_zonas do |t|
      t.integer :id_usuario_zona
      t.integer :id_usuario
      t.string :localidad_zona

      t.timestamps
    end
  end
end
