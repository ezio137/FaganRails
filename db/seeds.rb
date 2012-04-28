# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
perfil_admin = Sistema::Perfil.create(nome: 'admin', descricao: 'Administrador do sistema')
tipo_modulo = Sistema::TipoAcao.create(nome: 'modulo', descricao: 'Modulos do sistema')
tipo_submodulo = Sistema::TipoAcao.create(nome: 'submodulo', descricao: 'Submodulos do sistema')
acao_sistema = Sistema::Acao.create(tipo_acao: tipo_modulo, nome: 'sistema', descricao: 'Modulo Sistema', rotulo: 'Sistema', ordem: 0)
acao_contabil = Sistema::Acao.create(tipo_acao: tipo_modulo, nome: 'contabil', descricao: 'Modulo Contabil', rotulo: 'Contábil', ordem: 1)
acao_financeiro = Sistema::Acao.create(tipo_acao: tipo_modulo, nome: 'financeiro', descricao: 'Modulo Financeiro', rotulo: 'Financeiro', ordem: 2)
acao_mercado = Sistema::Acao.create(tipo_acao: tipo_modulo, nome: 'mercado', descricao: 'Modulo Mercado', rotulo: 'Mercado', ordem: 3)
acao_rh = Sistema::Acao.create(tipo_acao: tipo_modulo, nome: 'rh', descricao: 'Modulo RH', rotulo: 'RH', ordem: 4)
acao_compras = Sistema::Acao.create(tipo_acao: tipo_modulo, nome: 'compras', descricao: 'Modulo Compras', rotulo: 'Compras', ordem: 5)
acao_agro = Sistema::Acao.create(tipo_acao: tipo_modulo, nome: 'agro', descricao: 'Modulo Agro', rotulo: 'Agro', ordem: 6)
acao_bancos = Sistema::Acao.create(tipo_acao: tipo_submodulo, nome: 'bancos', descricao: 'Submodulo Bancos', rotulo: 'Bancos', ordem: 1)
acao_contas = Sistema::Acao.create(tipo_acao: tipo_submodulo, nome: 'contas', descricao: 'Submodulo Contas', rotulo: 'Contas', ordem: 2)
perfil_admin.acoes << [acao_sistema, acao_contabil, acao_financeiro, acao_mercado, acao_rh, acao_compras, acao_agro, acao_bancos, acao_contas]
