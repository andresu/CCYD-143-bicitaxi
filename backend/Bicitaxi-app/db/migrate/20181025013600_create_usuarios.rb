class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.integer :id_usuario
      t.string :nombres
      t.string :apellidos
      t.string :cc
      t.string :genero
      t.string :email
      t.string :telefono
      t.string :contrasena
      t.string :rol
      t.date :fecha_nacimiento
      t.string :horario
      t.string :numero_vehiculo

      t.timestamps
    end
  end
end
