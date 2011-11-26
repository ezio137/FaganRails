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
  inflect.irregular 'acao', 'acoes'
  inflect.irregular 'tipo_acao', 'tipos_acao'
  inflect.irregular 'perfil_usuario', 'perfis_usuarios'
  inflect.irregular 'acao_perfil', 'acoes_perfis'
end
