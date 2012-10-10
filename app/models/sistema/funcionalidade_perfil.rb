class FuncionalidadePerfil < ActiveRecord::Base
	belongs_to :funcionalidade
	belongs_to :perfil
end
