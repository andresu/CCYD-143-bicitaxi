# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_10_25_020321) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agremiacions", force: :cascade do |t|
    t.integer "id_agremiacion"
    t.string "nombre_agremiacion"
    t.string "telefono"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bicitaxista_agremiacions", force: :cascade do |t|
    t.integer "id_bicitaxista_agremiacion"
    t.integer "id_usuario"
    t.integer "id_agremiacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuario_zonas", force: :cascade do |t|
    t.integer "id_usuario_zona"
    t.integer "id_usuario"
    t.text "localidad_zona"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.integer "id_usuario"
    t.string "nombres"
    t.string "apellidos"
    t.string "cc"
    t.string "genero"
    t.string "email"
    t.string "telefono"
    t.string "contrasena"
    t.string "rol"
    t.date "fecha_nacimiento"
    t.string "horario"
    t.string "numero_vehiculo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "viajes", force: :cascade do |t|
    t.integer "id_viaje"
    t.integer "valor"
    t.integer "usuario_solicitante"
    t.integer "usuario_bicitaxista"
    t.date "fecha_viaje"
    t.integer "puntaje"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zona_localidads", force: :cascade do |t|
    t.integer "id_zona_localidad"
    t.text "zona"
    t.text "localidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
