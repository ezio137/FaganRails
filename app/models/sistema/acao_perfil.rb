class Sistema::AcaoPerfil < ActiveRecord::Base
	belongs_to :acao
	belongs_to :perfil
end
