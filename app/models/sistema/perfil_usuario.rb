class PerfilUsuario < ActiveRecord::Base
	belongs_to :perfil
	belongs_to :usuario
end
