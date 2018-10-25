json.extract! usuario, :id, :id_usuario, :nombres, :apellidos, :cc, :genero, :email, :telefono, :contrasena, :rol, :fecha_nacimiento, :horario, :numero_vehiculo, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
