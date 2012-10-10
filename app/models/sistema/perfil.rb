class Perfil < ActiveRecord::Base
	has_many :funcionalidades_perfis, :class_name => 'FuncionalidadePerfil'
	has_many :funcionalidades, :through => :funcionalidades_perfis
end
