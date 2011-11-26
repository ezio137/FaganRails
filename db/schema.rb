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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111125024618) do

  create_table "rh_turmas", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sistema_acoes", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.integer  "tipo_acao_id"
    t.integer  "acao_pai_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "rotulo"
    t.integer  "ordem"
  end

  create_table "sistema_acoes_perfis", :force => true do |t|
    t.integer  "acao_id"
    t.integer  "perfil_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sistema_perfis", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sistema_perfis_usuarios", :force => true do |t|
    t.integer  "perfil_id"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sistema_tipos_acao", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sistema_usuarios", :force => true do |t|
    t.string   "login"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
