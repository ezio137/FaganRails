# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
perfil_admin = Perfil.find_or_create_by_nome('admin',
  :descricao => 'Administrador do sistema'
)

tipo_modulo = TipoFuncionalidade.find_or_create_by_nome('modulo',
  :descricao => 'Modulos do sistema'
)

tipo_submodulo = TipoFuncionalidade.find_or_create_by_nome('submodulo',
  :descricao => 'Submodulos do sistema'
)

funcionalidade_sistema = Funcionalidade.find_or_create_by_nome('sistema',
  :tipo_funcionalidade => tipo_modulo,
  :descricao => 'Modulo Sistema'
)

funcionalidade_contabil = Funcionalidade.find_or_create_by_nome('contabil',
  :tipo_funcionalidade => tipo_modulo,
  :descricao => 'Modulo Contabil'
)

funcionalidade_financeiro = Funcionalidade.find_or_create_by_nome('financeiro',
  :tipo_funcionalidade => tipo_modulo,
  :descricao => 'Modulo Financeiro'
)

funcionalidade_mercado = Funcionalidade.find_or_create_by_nome('mercado',
  :tipo_funcionalidade => tipo_modulo,
  :descricao => 'Modulo Mercado'
)

funcionalidade_rh = Funcionalidade.find_or_create_by_nome('rh',
  :tipo_funcionalidade => tipo_modulo,
  :descricao => 'Modulo RH'
)

funcionalidade_compras = Funcionalidade.find_or_create_by_nome('compras',
  :tipo_funcionalidade => tipo_modulo,
  :descricao => 'Modulo Compras'
)

funcionalidade_agro = Funcionalidade.find_or_create_by_nome('agro',
  :tipo_funcionalidade => tipo_modulo,
  :descricao => 'Modulo Agro'
)

funcionalidade_bancos = Funcionalidade.find_or_create_by_nome('bancos',
  :tipo_funcionalidade => tipo_submodulo,
  :descricao => 'Submodulo Bancos'
)

funcionalidade_contas = Funcionalidade.find_or_create_by_nome('contas_financeiras',
  :tipo_funcionalidade => tipo_submodulo,
  :descricao => 'Submodulo Contas'
)

perfil_admin.funcionalidades << [funcionalidade_sistema, funcionalidade_contabil, funcionalidade_financeiro, funcionalidade_mercado, funcionalidade_rh, funcionalidade_compras, funcionalidade_agro, funcionalidade_bancos, funcionalidade_contas]
