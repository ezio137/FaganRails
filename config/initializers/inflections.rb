# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

ActiveSupport::Inflector.inflections do |inflect|
  inflect.irregular 'sessao', 'sessoes'
  inflect.irregular 'perfil', 'perfis'
  inflect.irregular 'conta_financeira', 'contas_financeiras'
  inflect.irregular 'tipo_funcionalidade', 'tipos_funcionalidade'
  inflect.irregular 'perfil_usuario', 'perfis_usuarios'
  inflect.irregular 'funcionalidade_perfil', 'funcionalidades_perfis'
  inflect.irregular 'tipo_conta_financeira', 'tipos_conta_financeira'
  inflect.irregular 'transacao_financeira', 'transacoes_financeiras'
end
