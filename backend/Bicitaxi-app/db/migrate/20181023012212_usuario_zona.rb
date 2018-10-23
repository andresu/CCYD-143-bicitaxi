class UsuarioZona < ActiveRecord::Migration[5.2]
  def change
    create_table :usuario_zona do |t|
      t.integer :id
      t.integer :id_user
      t.text :localidad_zona

      t.timestamps
    end
  end
end
