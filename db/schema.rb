# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160828223508) do

  create_table "bolsa_trabajos", force: :cascade do |t|
    t.string   "empleador"
    t.string   "urlImg"
    t.string   "descripcionAbreviada"
    t.string   "descripcionCompleta"
    t.string   "ubicacion"
    t.string   "latitud"
    t.string   "longitud"
    t.string   "requisitos"
    t.string   "requisitosExcluyentes"
    t.string   "sueldo"
    t.string   "horario"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "comentarios", force: :cascade do |t|
    t.string   "nombre"
    t.string   "telefono"
    t.string   "email"
    t.string   "mensaje"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingenieros", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "mail"
    t.string   "especialidad"
    t.string   "postgrados"
    t.string   "linkedin"
    t.string   "facebook"
    t.string   "googlemas"
    t.string   "urlImg"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
