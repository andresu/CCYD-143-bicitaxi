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

ActiveRecord::Schema.define(version: 2018_10_23_014536) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agremiacion", force: :cascade do |t|
    t.integer "id_agremiacion"
    t.text "nombre"
    t.text "telefono"
    t.text "email"
  end

  create_table "bicitaxista_agremiacion", force: :cascade do |t|
    t.integer "id_bicitaxista_agremiacion"
    t.integer "id_usuario"
    t.integer "id_agremiacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuario", force: :cascade do |t|
    t.integer "id_usuario"
    t.text "nombres"
    t.text "apellidos"
    t.text "cc"
    t.text "sexo"
    t.text "email"
    t.text "telefono"
    t.text "login"
    t.text "password"
    t.text "rol"
    t.text "fecha_nacimiento"
    t.text "horario"
    t.text "no_vehiculo"
  end

  create_table "usuario_zona", id: false, force: :cascade do |t|
    t.integer "id"
    t.integer "id_user"
    t.text "localidad_zona"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "viajes", force: :cascade do |t|
    t.integer "id_viajes"
    t.integer "valor"
    t.integer "usuario_solicitante"
    t.integer "usuario_bicitaxista"
    t.text "fecha"
    t.integer "puntaje"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zona_localidad", force: :cascade do |t|
    t.integer "id_zonalocalidad"
    t.text "zona"
    t.text "localidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
