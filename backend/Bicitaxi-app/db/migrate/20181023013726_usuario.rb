class Usuario < ActiveRecord::Migration[5.2]
  def change
    create_table :usuario do |t|
        t.integer :id_usuario
        t.text :nombres
        t.text :apellidos
        t.text :cc
        t.text :sexo
        t.text :email
        t.text :telefono
        t.text :login
        t.text :password
        t.text :rol
        t.text :fecha_nacimiento
        t.text :horario
        t.text :no_vehiculo
    end
  end
end
