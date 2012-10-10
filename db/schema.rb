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

ActiveRecord::Schema.define(:version => 20121006181234) do

  create_table "bancos", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.string   "numero"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contas_financeiras", :force => true do |t|
    t.string   "nome"
    t.string   "agencia"
    t.string   "numero"
    t.decimal  "saldo",                    :precision => 10, :scale => 0
    t.decimal  "limite",                   :precision => 10, :scale => 0
    t.date     "data_abertura"
    t.integer  "banco_id"
    t.integer  "tipo_conta_financeira_id"
    t.string   "type"
    t.decimal  "taxa",                     :precision => 10, :scale => 0
    t.integer  "prazo"
    t.datetime "created_at",                                              :null => false
    t.datetime "updated_at",                                              :null => false
  end

  create_table "funcionalidades", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.integer  "tipo_funcionalidade_id"
    t.integer  "funcionalidade_pai_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "rotulo"
    t.integer  "ordem"
  end

  create_table "funcionalidades_perfis", :force => true do |t|
    t.integer  "funcionalidade_id"
    t.integer  "perfil_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "perfis", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "perfis_usuarios", :force => true do |t|
    t.integer  "perfil_id"
    t.integer  "usuario_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipos_conta_financeira", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipos_funcionalidade", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "transacoes_financeiras", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "turmas", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "usuarios", :force => true do |t|
    t.string   "login"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
