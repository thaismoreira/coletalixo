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

ActiveRecord::Schema.define(version: 20150416221031) do

  create_table "alunos", force: :cascade do |t|
    t.string   "nome"
    t.string   "matricula"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coletors", force: :cascade do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "motorista", force: :cascade do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "veiculos", force: :cascade do |t|
    t.string   "placa"
    t.string   "ano"
    t.string   "numero"
    t.string   "renavan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
