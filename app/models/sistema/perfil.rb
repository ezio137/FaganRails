class Sistema::Perfil < ActiveRecord::Base
	has_many :acoes_perfis, :class_name => "Sistema::AcaoPerfil"
	has_many :acoes, :through => :acoes_perfis
end
