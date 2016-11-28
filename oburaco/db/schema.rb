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

ActiveRecord::Schema.define(version: 20161128021518) do

  create_table "demandas", force: :cascade do |t|
    t.string   "bairro"
    t.text     "rua"
    t.integer  "numero"
    t.integer  "RPA"
    t.string   "situa"
    t.date     "data_ult_situa"
    t.date     "data"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "servicos_id"
  end

  add_index "demandas", ["servicos_id"], name: "index_demandas_on_servicos_id"

  create_table "grupo_servicos", force: :cascade do |t|
    t.text     "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "servicos", force: :cascade do |t|
    t.text     "nome"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "grupo_servicos_id"
  end

  add_index "servicos", ["grupo_servicos_id"], name: "index_servicos_on_grupo_servicos_id"

  create_table "vereadors", force: :cascade do |t|
    t.text     "nome"
    t.text     "email"
    t.text     "telefone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "imagem"
    t.string   "partido"
  end

end
